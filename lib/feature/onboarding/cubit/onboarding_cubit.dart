import 'package:fishingmemory/core/data/repository/onboarding/onboarding_repository.dart';
import 'package:fishingmemory/core/data/repository/permission/permission_repository.dart';
import 'package:fishingmemory/core/utils/AppConstants.dart';
import 'package:fishingmemory/core/utils/keys.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final OnboardingRepository onboardingRepository;
  final PermissionRepository permissionRepository;

  OnboardingCubit({required this.onboardingRepository, required this.permissionRepository}) : super(OnboardingInitial());

  Future<void> writeFirstVisitor() async {
    try {
      await onboardingRepository.writeOnboarding(Keys.onboardingKey, AppConstants.splashValue);
      final permission = await permissionRepository.readPermission(Keys.permissionKey);
      if (permission == null) {
        emit(const OnboardingCompleted(OnboardingStateType.permission));
      } else {
        emit(const OnboardingCompleted(OnboardingStateType.login));
      }
    } catch (e) {
      emit(const OnboardingError('Failed to write onboarding status.'));
    }
  }
}