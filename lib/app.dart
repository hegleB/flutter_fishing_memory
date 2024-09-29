import 'package:fishingmemory/core/data/api/%08dio_util.dart';
import 'package:fishingmemory/core/data/api/auth_service.dart';
import 'package:fishingmemory/core/data/api/map_service.dart';
import 'package:fishingmemory/core/data/repository/auth/auth_repository.dart';
import 'package:fishingmemory/core/data/repository/map/map_repository.dart';
import 'package:fishingmemory/core/data/repository/onboarding/onboarding_repository.dart';
import 'package:fishingmemory/core/data/repository/permission/permission_repository.dart';
import 'package:fishingmemory/feature/location/bloc/location_setting_bloc.dart';
import 'package:fishingmemory/feature/login/bloc/login_bloc.dart';
import 'package:fishingmemory/feature/mypage/cubit/mypage_cubit.dart';
import 'package:fishingmemory/feature/onboarding/cubit/onboarding_cubit.dart';
import 'package:fishingmemory/feature/permission/cubit/permission_cubit.dart';
import 'package:fishingmemory/feature/splash/cubit/splash_cubit.dart';
import 'package:fishingmemory/feature/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
                    sharedPreferences: sharedPreferences,
                  )),
          RepositoryProvider<OnboardingRepository>(
            create: (context) => OnboardingRepositoryImpl(sharedPreferences),
          ),
          RepositoryProvider<PermissionRepository>(
            create: (context) => PermissionRepositoryImpl(sharedPreferences),
          ),
          RepositoryProvider<MapRepository>(
            create: (context) =>
                MapRepositoryImpl(mapService: MapService(dio.mapDio)),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => OnboardingCubit(
                onboardingRepository:
                    RepositoryProvider.of<OnboardingRepository>(context),
                permissionRepository:
                    RepositoryProvider.of<PermissionRepository>(context),
              ),
            ),
            BlocProvider(
              create: (context) => SplashCubit(
                authRepository: RepositoryProvider.of<AuthRepository>(context),
                onboardingRepository:
                    RepositoryProvider.of<OnboardingRepository>(context),
                permissionRepository:
                    RepositoryProvider.of<PermissionRepository>(context),
              ),
            ),
            BlocProvider(
              create: (context) => PermissionCubit(
                permissionRepository:
                    RepositoryProvider.of<PermissionRepository>(context),
              ),
            ),
            BlocProvider(
              create: (context) => MyPageCubit(
                authRepository: RepositoryProvider.of<AuthRepository>(context),
              ),
            ),
            BlocProvider(
              lazy: false,
              create: (context) => LocationSettingBloc(
                mapRepository: RepositoryProvider.of<MapRepository>(context),
              ),
            ),
          ],
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('ko'),
              ]),
        ));
  }
}
