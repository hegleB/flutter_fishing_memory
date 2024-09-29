import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:fishingmemory/core/data/repository/auth/auth_repository.dart';
import 'package:fishingmemory/core/data/repository/memo/memo_repository.dart';
import 'package:fishingmemory/core/models/memo/memo_info.dart';
import 'package:fishingmemory/core/models/memo/memo_storage.dart';
import 'package:fishingmemory/feature/create/bloc/memo_create_event.dart';
import 'package:fishingmemory/feature/create/bloc/memo_create_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class MemoCreateBloc extends Bloc<MemoCreateEvent, MemoCreateState> {
  final MemoRepository memoRepository;
  final AuthRepository authRepository;

  MemoCreateBloc({
    required this.memoRepository,
    required this.authRepository,
  }) : super(MemoCreateState(
            memoInfo: MemoInfo(
          date: DateFormat('yyyy/MM/dd').format(DateTime.now()),
        ))) {
    on<CreateMemo>(onCreateMemo);
    on<SetMemoInfo>(onSetMemoInfo);
    on<SetEditMode>(onSetEditMode);
    on<SetImage>(onSetImage);
    on<SetCoords>(onSetCoords);
    on<SetLocation>(onSetLocation);
    on<SetDate>(onSetDate);
    on<SetTitle>(onSetTitle);
    on<SetFishType>(onSetFishType);
    on<SetContent>(onSetContent);
    on<SetSize>(onSetSize);
    on<SetWaterType>(onSetWaterType);
    on<ResetMemoCreate>(onResetMemo);
  }

  Future<void> onCreateMemo(
      CreateMemo event, Emitter<MemoCreateState> emit) async {
    try {
      emit(state.copyWith(memoCreateUiState: MemoCreateUiState.loading));

      String currentUserEmail = await authRepository.getEmailFromLocal() ?? "";
      Uint8List image = base64Decode(state.memoInfo.image);
      final file = await saveUint8ListToFile(image);
      MemoStorage memoStorage = await uploadImage(file);
      String imageUrl = getImageUrl(memoStorage);
      final memo = state.memoInfo.copyWith(
        uuid: const Uuid().v4(),
        email: currentUserEmail,
        createTime: DateTime.now().millisecondsSinceEpoch.toString(),
        image: imageUrl,
      );
      await memoRepository.createMemo(memo.toMemoFields(currentUserEmail));
      emit(state.copyWith(memoCreateUiState: MemoCreateUiState.success));
    } catch (e) {
      emit(state.copyWith(memoCreateUiState: MemoCreateUiState.error));
    }
  }

  Future<MemoStorage> uploadImage(File file) async {
    try {
      return await memoRepository.uploadMemoImage(file);
    } catch (e) {
      throw Exception("이미지 업로드 실패: $e");
    }
  }

  String getImageUrl(MemoStorage storage) {
    final fileName = storage.name.split("/").join("%2F");
    return "${dotenv.env["FIREBASE_STORAGE_URL"]}o/$fileName?alt=media&token=${storage.downloadTokens}";
  }

  Future<File> saveUint8ListToFile(Uint8List imageData) async {
    try {
      final directory = await getTemporaryDirectory();
      final filePath =
          '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.png';
      final file = await File(filePath).create();
      file.writeAsBytesSync(imageData);
      return file;
    } catch (e) {
      throw Exception("파일 저장 실패: $e");
    }
  }

  void onSetMemoInfo(SetMemoInfo event, Emitter<MemoCreateState> emit) {
    emit(state.copyWith(memoInfo: event.memoInfo));
  }

  void onSetEditMode(SetEditMode event, Emitter<MemoCreateState> emit) {
    emit(state.copyWith(isEdit: event.isEdit));
  }

  void onSetImage(SetImage event, Emitter<MemoCreateState> emit) {
    emit(state.copyWith(
        memoInfo: state.memoInfo.copyWith(image: base64Encode(event.image))));
  }

  void onSetCoords(SetCoords event, Emitter<MemoCreateState> emit) {
    emit(state.copyWith(
        memoInfo: state.memoInfo.copyWith(coords: event.coords)));
  }

  void onSetLocation(SetLocation event, Emitter<MemoCreateState> emit) {
    emit(state.copyWith(
        memoInfo: state.memoInfo.copyWith(location: event.location)));
  }

  void onSetDate(SetDate event, Emitter<MemoCreateState> emit) {
    emit(state.copyWith(memoInfo: state.memoInfo.copyWith(date: event.date)));
  }

  void onSetTitle(SetTitle event, Emitter<MemoCreateState> emit) {
    emit(state.copyWith(memoInfo: state.memoInfo.copyWith(title: event.title)));
  }

  void onSetFishType(SetFishType event, Emitter<MemoCreateState> emit) {
    emit(state.copyWith(
        memoInfo: state.memoInfo.copyWith(fishType: event.fishType)));
  }

  void onSetContent(SetContent event, Emitter<MemoCreateState> emit) {
    emit(state.copyWith(
        memoInfo: state.memoInfo.copyWith(content: event.content)));
  }

  void onSetSize(SetSize event, Emitter<MemoCreateState> emit) {
    emit(state.copyWith(
        memoInfo: state.memoInfo.copyWith(fishSize: event.size)));
  }

  void onSetWaterType(SetWaterType event, Emitter<MemoCreateState> emit) {
    emit(state.copyWith(
        memoInfo: state.memoInfo.copyWith(waterType: event.waterType)));
  }

  void onResetMemo(ResetMemoCreate event, Emitter<MemoCreateState> emit) {
    emit(MemoCreateState.initial());
  }
}
