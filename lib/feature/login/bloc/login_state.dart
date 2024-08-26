
part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  const LoginInitial();

  @override
  List<Object> get props => [];
}

class LoginLaunch extends LoginState {
  const LoginLaunch();

 @override
  List<Object> get props => [];
}

class LoginLoading extends LoginState {
  const LoginLoading();

 @override
  List<Object> get props => [];
}

class LoginSuccess extends LoginState {
  const LoginSuccess();

 @override
  List<Object> get props => [];
}

class LoginError extends LoginState {
  final dynamic error;
  const LoginError({
    required this.error
  });

 @override
  List<Object> get props => [error];
}
