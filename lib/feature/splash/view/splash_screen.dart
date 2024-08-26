import 'package:fishingmemory/feature/home/home_screen.dart';
import 'package:fishingmemory/feature/login/view/login_screen.dart';
import 'package:fishingmemory/feature/onboarding/view/onboarding_screen.dart';
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
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const OnboardingScreen()),
                  );
                } else if (state.splashStateType == SplashStateType.loggedIn) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                } else if (state.splashStateType == SplashStateType.notLoggedIn) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                } else if (state.splashStateType == SplashStateType.skip) {
                   Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                }
              } else {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const OnboardingScreen()),
                );
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
}
