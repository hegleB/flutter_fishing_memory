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
    on<CreateUser>(createUser);
    on<ClickedKakaoLogin>(clickedKakaoLogin);
    on<HandleExistingUser>(handleExistingUser);
  }

  Future<void> createUser(CreateUser event, Emitter<LoginState> emit) async {
    emit(const LoginLoading());
    try {
      await authRepository.saveTokenToLocal(event.accessToken);
      await authRepository.saveEmailToLocal(event.email);
      await authRepository.createUser(event.email, event.accessToken);
      emit(const LoginSuccess());
    } catch (e) {
      if (e.toString().contains("Email already exists")) {
        add(HandleExistingUser(event.email, event.accessToken));
      } 
    }
  }

  Future<void> clickedKakaoLogin(ClickedKakaoLogin event, Emitter<LoginState> emit) async {
    emit(const LoginLoading()); 
    try {
      emit(const LoginLaunch());
    } catch (e) {
      emit(LoginError(error: e));
    }
  }

  Future<void> handleExistingUser(HandleExistingUser event, Emitter<LoginState> emit) async {
    emit(const LoginLoading());
    try {
      emit(const LoginSuccess());
    } catch (e) {
      emit(LoginError(error: e));
    }
  }
}