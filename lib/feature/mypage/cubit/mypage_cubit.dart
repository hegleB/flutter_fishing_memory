
import 'package:fishingmemory/core/data/repository/auth/auth_repository.dart';
import 'package:fishingmemory/feature/mypage/cubit/mypage_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyPageCubit extends Cubit<MyPageState> {
  final AuthRepository authRepository;
  String email = "";

  MyPageCubit({required this.authRepository}) : super(MyPageInitial()) {
    fetchEmail();
  }

  Future<void> fetchEmail() async {
    email = await authRepository.getEmailFromLocal() ?? "";
  }
}