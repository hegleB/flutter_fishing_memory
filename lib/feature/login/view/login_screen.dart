import 'package:fishingmemory/core/resource/resource.dart';
import 'package:fishingmemory/core/widgets/default_circular_progress_indicator.dart';
import 'package:fishingmemory/core/widgets/app_snackbar.dart';
import 'package:fishingmemory/feature/login/bloc/login_bloc.dart';
import 'package:fishingmemory/feature/login/view/extends/kakao_login_service.dart';
import 'package:fishingmemory/feature/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final kakaoLoginService = KakaoLoginService();
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) async {
        if (state is LoginLaunch) {
          handleLogin(context, kakaoLoginService);
        } else if (state is LoginSuccess) {
          navigateToHomeScreen(context);
        } else if (state is LoginError) {
          AppSnackbar.show(context, AppStrings.logoutErrorMessage);
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    AppImages.loginBackground,
                    fit: BoxFit.cover,
                  ),
                ),
                const Column(
                  children: [
                    Spacer(flex: 2),
                    LoginTitle(),
                    Spacer(flex: 3),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                      child: KakaoButton(),
                    ),
                  ],
                ),
                if (state is LoginLoading) const CenterCircularProgressIndicator(),

              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> handleLogin(BuildContext context, KakaoLoginService kakaoLoginService) async {
    try {
      OAuthToken? token = await kakaoLoginService.loginWithKakaoOrThrow();
      User user = await UserApi.instance.me();
      final email = user.kakaoAccount?.email;

      if (email != null && token != null) {
        context.read<LoginBloc>().add(CreateUser(email, token.accessToken));
      }
    } catch (e) {
      AppSnackbar.show(context, AppStrings.logoutErrorMessage);
    }
  }

  void navigateToHomeScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const MainScreen()),
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
  const KakaoButton({super.key});

  void login(BuildContext context) {
    context.read<LoginBloc>().add(ClickedKakaoLogin());
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => login(context),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.yellow100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        minimumSize: const Size(0, 65),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppIcons.kakaoLogo,
            width: 18,
            height: 18,
          ),
          const SizedBox(width: 15),
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
