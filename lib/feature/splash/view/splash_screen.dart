import 'package:fishingmemory/feature/login/view/login_screen.dart';
import 'package:fishingmemory/feature/main/main_screen.dart';
import 'package:fishingmemory/feature/onboarding/view/onboarding_screen.dart';
import 'package:fishingmemory/feature/permission/view/permission_screen.dart';
import 'package:fishingmemory/feature/splash/cubit/splash_cubit.dart';
import 'package:fishingmemory/feature/splash/cubit/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocListener<SplashCubit, SplashState>(
            listener: (context, state) async {
              await Future.delayed(const Duration(seconds: 4));

              if (state is SplashSuccess) {
                if (state.splashStateType == SplashStateType.open) {
                  _navigateToOnboarding(context);
                } else if (state.splashStateType == SplashStateType.permission) {
                  _navigateToPermission(context);
                } else if (state.splashStateType == SplashStateType.loggedIn) {
                  _navigateToHome(context);
                } else if (state.splashStateType == SplashStateType.notLoggedIn) {
                  _navigateToLogin(context);
                } else if (state.splashStateType == SplashStateType.skip) {
                  _navigateToLogin(context);
                }
              } else {
                  _navigateToOnboarding(context);
              }
            },
          child: BlocBuilder<SplashCubit, SplashState>(builder: (context, state) {
            return Center(
                child: FutureBuilder(
                future: Future.delayed(Duration.zero),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Lottie.asset(
                      "assets/raws/splash_logo.json",
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.6,
                      fit: BoxFit.contain,
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
          ),
              );
          }
        )
      ) 
    );
  }

  void _navigateToLogin(BuildContext context) {
     Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  void _navigateToHome(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const MainScreen()),
    );
  }

  void _navigateToOnboarding(BuildContext context) {
     Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const OnboardingScreen()),
    );
  }

  void _navigateToPermission(BuildContext context) {
     Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const PermissionScreen()),
    );
  }
}
