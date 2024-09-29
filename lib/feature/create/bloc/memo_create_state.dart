import 'package:equatable/equatable.dart';
import 'package:fishingmemory/core/models/memo/memo_info.dart';
import 'package:intl/intl.dart';

class MemoCreateState extends Equatable {
  final MemoInfo memoInfo;
  final bool isEdit;
  final MemoCreateUiState memoCreateUiState;

  const MemoCreateState({
    required this.memoInfo,
    this.isEdit = false,
    this.memoCreateUiState = MemoCreateUiState.initial,
  });

  MemoCreateState copyWith({
    MemoInfo? memoInfo,
    bool? isEdit,
    MemoCreateUiState? memoCreateUiState,
  }) {
    return MemoCreateState(
      memoInfo: memoInfo ?? this.memoInfo,
      isEdit: isEdit ?? this.isEdit,
      memoCreateUiState: memoCreateUiState ?? this.memoCreateUiState,
    );
  }

  @override
  List<Object> get props => [memoInfo, isEdit, memoCreateUiState];

  factory MemoCreateState.initial() {
    return MemoCreateState(
      memoInfo: MemoInfo(date: DateFormat('yyyy/MM/dd').format(DateTime.now())),
      isEdit: false,
      memoCreateUiState: MemoCreateUiState.initial,
    );
  }
}

enum MemoCreateUiState { initial, loading, success, error }
