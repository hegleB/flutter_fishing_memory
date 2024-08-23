import 'package:fishingmemory/core/resource/resource.dart';
import 'package:fishingmemory/core/widgets/default_circular_progress_indicator.dart';
import 'package:fishingmemory/feature/login/view/extends/kakao_login_service.dart';
import 'package:fishingmemory/feature/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImages.loginBackground,
              fit: BoxFit.cover,
            ),
          ),
          const CenterCircularProgressIndicator(),
          Column(
            children: [
              const Spacer(flex: 2),
              const LoginTitle(),
              const Spacer(flex: 3),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 30.0,
                ),
                child: KakaoButton(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.appName,
      style: AppStyles.displayLarge.copyWith(
        color: AppColors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class KakaoButton extends StatelessWidget {
  final KakaoLoginService kakaoLoginService = KakaoLoginService();

  KakaoButton({super.key});

  void _login(BuildContext context) async {
    try {
      await kakaoLoginService.loginWithKakaoOrThrow();
      print("login 성공");
    } catch (error) {
      print("login 실패");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _login(context),
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.yellow100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          minimumSize: const Size(0, 65)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppIcons.kakaoLogo,
            width: 18,
            height: 18,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
          ),
          Text(
            AppStrings.kakaoLogin,
            style: AppStyles.displayLarge.copyWith(
              color: AppColors.black,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
