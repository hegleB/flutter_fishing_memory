import 'package:fishingmemory/core/data/repository/onboarding/onboarding_repository.dart';
import 'package:fishingmemory/core/utils/AppConstants.dart';
import 'package:fishingmemory/core/utils/keys.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final OnboardingRepository onboardingRepository;

  OnboardingCubit({required this.onboardingRepository}) : super(OnboardingInitial());

  Future<void> writeFirstVisitor() async {
    try {
      await onboardingRepository.writeOnboarding(Keys.onboardingKey, AppConstants.splashValue);
      emit(OnboardingCompleted());
    } catch (e) {
      emit(const OnboardingError('Failed to write onboarding status.'));
    }
  }
}