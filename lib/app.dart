import 'package:fishingmemory/core/data/api/dio_util.dart';
import 'package:fishingmemory/core/data/api/auth_service.dart';
import 'package:fishingmemory/core/data/api/map_service.dart';
import 'package:fishingmemory/core/data/api/memo_service.dart';
import 'package:fishingmemory/core/data/api/storage_service.dart';
import 'package:fishingmemory/core/data/repository/auth/auth_repository.dart';
import 'package:fishingmemory/core/data/repository/map/map_repository.dart';
import 'package:fishingmemory/core/data/repository/memo/memo_repository.dart';
import 'package:fishingmemory/core/data/repository/onboarding/onboarding_repository.dart';
import 'package:fishingmemory/core/data/repository/permission/permission_repository.dart';
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
          RepositoryProvider<MemoRepository>(
            create: (context) => MemoRepositoryImpl(
              memoService: MemoService(dio.firebaseDio),
              storageService: StorageService(dio.storageDio),
            ),
          ),
        ],
        child: MultiBlocProvider(
          providers: const [],
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
