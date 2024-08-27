import 'package:equatable/equatable.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

class OnboardingInitial extends OnboardingState {}

class OnboardingCompleted extends OnboardingState {
  final OnboardingStateType onboardingStateType;

  const OnboardingCompleted(this.onboardingStateType);

  @override
  List<Object> get props => [onboardingStateType];
}

class OnboardingError extends OnboardingState {
  final String error;

  const OnboardingError(this.error);

  @override
  List<Object> get props => [error];
}

enum OnboardingStateType { permission, login }
