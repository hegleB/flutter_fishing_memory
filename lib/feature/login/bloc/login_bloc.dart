import 'package:equatable/equatable.dart';
import 'package:fishingmemory/core/data/repository/auth/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;

  LoginBloc({
    required this.authRepository,
  }) : super(const LoginInitial()) {
    on<CreateUser>(_createUser);
    on<ClickedKakaoLogin>(_clickedKakaoLogin);
    on<HandleExistingUser>(_handleExistingUser);
  }

  Future<void> _createUser(CreateUser event, Emitter<LoginState> emit) async {
    emit(const LoginLoading());
    try {
      await authRepository.saveTokenToLocal(event.accessToken);
      await authRepository.saveEmailToLocal(event.email);
      final user = await authRepository.createUser(event.email, event.accessToken);
      emit(const LoginSuccess());
    } catch (e) {
      if (e.toString().contains("Email already exists")) {
        add(HandleExistingUser(event.email, event.accessToken));
      } 
    }
  }

  Future<void> _clickedKakaoLogin(ClickedKakaoLogin event, Emitter<LoginState> emit) async {
    emit(const LoginLoading()); 
    try {
      emit(const LoginLaunch());
    } catch (e) {
      emit(LoginError(error: e));
    }
  }

  Future<void> _handleExistingUser(HandleExistingUser event, Emitter<LoginState> emit) async {
    emit(const LoginLoading());
    try {
      emit(const LoginSuccess());
    } catch (e) {
      emit(LoginError(error: e));
    }
  }

  // Stream<LoginState> _mapHandleExistingUserToState(
  //     HandleExistingUser event) async* {
  //   yield LoginLoading();
  //   try {
  //     await getUserTokenUseCase(event.email).listen(
  //       (data) async {
  //         await authRepository.saveEmailToLocal(event.email);
  //         await authRepository.saveTokenToLocal(event.accessToken);
  //         yield LoginSuccess();
  //       },
  //     ).onError((error) async* {
  //       yield LoginError(error.toString());
  //     });
  //   } catch (error) {
  //     yield LoginError(error.toString());
  //   }
  // }
}