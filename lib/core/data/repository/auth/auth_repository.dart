
import 'package:dio/dio.dart';
import 'package:fishingmemory/core/data/api/auth_service.dart';
import 'package:fishingmemory/core/data/entity/sign_up_fields_entity.dart';
import 'package:fishingmemory/core/models/auth/email.dart';
import 'package:fishingmemory/core/models/auth/sign_up_fields.dart';
import 'package:fishingmemory/core/models/auth/sign_up_user.dart';
import 'package:fishingmemory/core/models/auth/token.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class AuthRepository {

  Future<SignUpFieldsEntity> createUser(
    String email,
    String socialToken,
    );
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthService authService;


  AuthRepositoryImpl({
    required this.authService,
  });

  @override
  Future<SignUpFieldsEntity> createUser(String email, String socialToken) async {
    final projectId = dotenv.env['FIREBASE_DATABASE_PROJECT_ID'] ?? '';
    try {
      await authService.checkUserExistence(projectId, email);
      throw Exception('Email already exists');
    } catch (e) {
      if (e is DioException && e.response?.statusCode == 404) {
        return authService.postSignUp(
          projectId,
          email,
          SignUpFieldsEntity(
            fields: SignUpFields(
              email: Email(stringValue: email),
              token: Token(stringValue: socialToken),
            ),
          ),
        );
      } else {
        throw Exception(e.toString());
      }
    }
  }
}

extension StringToSignUpUser on String {
  SignUpUser toSignUpUser(String email) {
    return SignUpUser(
      name: this,
      fields: SignUpFields(email: Email(stringValue: email), token: Token(stringValue: this)),
      createTime:this,
      updateTime:this,
    );
  }
}

