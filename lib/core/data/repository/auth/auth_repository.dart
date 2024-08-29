
import 'package:dio/dio.dart';
import 'package:fishingmemory/core/data/api/auth_service.dart';
import 'package:fishingmemory/core/data/entity/sign_up_fields_entity.dart';
import 'package:fishingmemory/core/models/auth/email.dart';
import 'package:fishingmemory/core/models/auth/sign_up_fields.dart';
import 'package:fishingmemory/core/models/auth/sign_up_user.dart';
import 'package:fishingmemory/core/models/auth/token.dart';
import 'package:fishingmemory/core/utils/keys.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthRepository {

  Future<SignUpFieldsEntity> createUser(
    String email,
    String socialToken,
  );

  Future<void> saveTokenToLocal(String token);
  Future<void> saveEmailToLocal(String email);
  Future<void> removeTokenFromLocal();
  Future<void> removeEmailToLocal();
  Future<String?> getAccessTokenFromLocal();
  Future<String?> getEmailFromLocal();
  Future<void> removeEmailFromRemote(String email);
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthService authService;
  final SharedPreferences sharedPreferences;
  final projectId = dotenv.env['FIREBASE_DATABASE_PROJECT_ID'] ?? '';


  AuthRepositoryImpl({
    required this.authService,
    required this.sharedPreferences,
  });

  @override
  Future<SignUpFieldsEntity> createUser(String email, String socialToken) async {
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
  
  @override
  Future<void> removeEmailToLocal() async {
    sharedPreferences.remove(Keys.signedUpEmail);
  }
  
  @override
  Future<void> removeTokenFromLocal() async {
    sharedPreferences.remove(Keys.accessTokenKey);
  }
  
  @override
  Future<void> saveEmailToLocal(String email) async {
    sharedPreferences.setString(Keys.signedUpEmail, email);
  }
  
  @override
  Future<void> saveTokenToLocal(String token) async {
      sharedPreferences.setString(Keys.accessTokenKey, token);
  }
  
  @override
  Future<String?> getAccessTokenFromLocal() async {
    try {
      return sharedPreferences.getString(Keys.accessTokenKey);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
  
  @override
  Future<String?> getEmailFromLocal() async {
     try {
      return sharedPreferences.getString(Keys.signedUpEmail);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
  
  @override
  Future<void> removeEmailFromRemote(String email) async {
    try {
      await removeEmailToLocal();
      await removeTokenFromLocal();
      await authService.deleteUserEmail(projectId, email);
    } catch (e) {
      throw Exception(e.toString());
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

