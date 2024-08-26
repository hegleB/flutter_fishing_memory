import 'package:equatable/equatable.dart';

abstract class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object> get props => [];
}

class SplashLoading extends SplashState {
  @override
  List<Object> get props => [];
}

class SplashSuccess extends SplashState {
  final SplashStateType splashStateType;

  const SplashSuccess(this.splashStateType);

  @override
  List<Object> get props => [splashStateType];
}

class SplashError extends SplashState {
  final String message;

  const SplashError(this.message);

  @override
  List<Object> get props => [message];
}

enum SplashStateType { open, skip, notLoggedIn, loggedIn, deeplink }

