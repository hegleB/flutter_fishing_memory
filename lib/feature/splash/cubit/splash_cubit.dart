import 'package:fishingmemory/core/data/repository/auth/auth_repository.dart';
import 'package:fishingmemory/core/data/repository/onboarding/onboarding_repository.dart';
import 'package:fishingmemory/core/utils/AppConstants.dart';
import 'package:fishingmemory/core/utils/keys.dart';
import 'package:fishingmemory/feature/splash/cubit/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class SplashCubit extends Cubit<SplashState> {
  final AuthRepository authRepository;
  final OnboardingRepository onboardingRepository;

  SplashCubit({
    required this.authRepository,
    required this.onboardingRepository,
  }) : super(SplashLoading()) {
    _initialize();
  }

  void _initialize() {
    setOnboardingState();
  }

Future<void> setOnboardingState() async {
    final onboardingType = await onboardingRepository.readOnboarding(Keys.onboardingKey);
    String? accessToken = await authRepository.getAccessTokenFromLocal();
    print("toek : $accessToken");
    if (onboardingType == null) {
      emit(const SplashSuccess(SplashStateType.open));
    } else if (accessToken != null) {
      emit(const SplashSuccess(SplashStateType.loggedIn));
    } else {
      emit(const SplashSuccess(SplashStateType.notLoggedIn));
    }
  }
}
