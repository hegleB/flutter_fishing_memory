import 'package:dio/dio.dart';
import 'package:fishingmemory/core/data/api/%08dio_util.dart';
import 'package:fishingmemory/core/data/api/auth_service.dart';
import 'package:fishingmemory/core/data/repository/auth/auth_repository.dart';
import 'package:fishingmemory/feature/login/bloc/login_bloc.dart';
import 'package:fishingmemory/feature/login/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dio = DioUtil();
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
          create: (context) => AuthRepositoryImpl(
            authService: AuthService(dio.firebaseDio),
          )
        ),
      ], 
      child: BlocProvider(
        create: (context) => LoginBloc(
            authRepository: RepositoryProvider.of<AuthRepository>(context),
          ),
        child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),  
      )
    )
  );
  }
}
