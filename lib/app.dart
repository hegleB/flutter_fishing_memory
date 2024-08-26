import 'package:fishingmemory/core/data/api/%08dio_util.dart';
import 'package:fishingmemory/core/data/api/auth_service.dart';
import 'package:fishingmemory/core/data/repository/auth/auth_repository.dart';
import 'package:fishingmemory/core/data/repository/onboarding/onboarding_repository.dart';
import 'package:fishingmemory/feature/login/bloc/login_bloc.dart';
import 'package:fishingmemory/feature/onboarding/cubit/onboarding_cubit.dart';
import 'package:fishingmemory/feature/splash/cubit/splash_cubit.dart';
import 'package:fishingmemory/feature/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  App({required this.sharedPreferences});

  @override
  Widget build(BuildContext context) {
    final dio = DioUtil();
    
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
          create: (context) => AuthRepositoryImpl(
            authService: AuthService(dio.firebaseDio),
            sharedPreferences:  sharedPreferences,
          )
        ),
        RepositoryProvider<OnboardingRepository>(
          create: (context) => OnboardingRepositoryImpl(sharedPreferences),
          )
      ], 
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LoginBloc(
                      authRepository: RepositoryProvider.of<AuthRepository>(context),
                    ),
          ),
          BlocProvider(
            create: (context) => OnboardingCubit(
                onboardingRepository: RepositoryProvider.of<OnboardingRepository>(context),
              ),
          ),
          BlocProvider(
            create: (context) => SplashCubit(
                authRepository: RepositoryProvider.of<AuthRepository>(context),
                onboardingRepository: RepositoryProvider.of<OnboardingRepository>(context),
              ),
          ),
        ], child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),  
          ),
      )
    );
  }
}
