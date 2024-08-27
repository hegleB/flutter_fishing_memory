import 'package:fishingmemory/core/data/repository/auth/auth_repository.dart';
import 'package:fishingmemory/core/data/repository/onboarding/onboarding_repository.dart';
import 'package:fishingmemory/core/data/repository/permission/permission_repository.dart';
import 'package:fishingmemory/core/utils/keys.dart';
import 'package:fishingmemory/feature/splash/cubit/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  final AuthRepository authRepository;
  final OnboardingRepository onboardingRepository;
  final PermissionRepository permissionRepository;

  SplashCubit({
    required this.authRepository,
    required this.onboardingRepository,
    required this.permissionRepository,
  }) : super(SplashLoading()) {
    _initialize();
  }

  void _initialize() {
    setOnboardingState();
  }

Future<void> setOnboardingState() async {
    final onboardingType = await onboardingRepository.readOnboarding(Keys.onboardingKey);
    final permissionType = await permissionRepository.readPermission(Keys.permissionKey);
    String? accessToken = await authRepository.getAccessTokenFromLocal();
    if (onboardingType == null) {
      emit(const SplashSuccess(SplashStateType.open));
    } else if (permissionType == null) {
      emit(const SplashSuccess(SplashStateType.permission));
    } else if (accessToken != null) {
      emit(const SplashSuccess(SplashStateType.loggedIn));
    } else {
      emit(const SplashSuccess(SplashStateType.notLoggedIn));
    }
  }
}
