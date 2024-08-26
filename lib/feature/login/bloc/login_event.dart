
part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class CreateUser extends LoginEvent {
  final String email;
  final String accessToken;

  const CreateUser(this.email, this.accessToken);

  @override
  List<Object> get props => [email, accessToken];
}

class HandleExistingUser extends LoginEvent {
  final String email;
  final String accessToken;

  const HandleExistingUser(this.email, this.accessToken);

  @override
  List<Object> get props => [email, accessToken];
}

class ClickedKakaoLogin extends LoginEvent {}