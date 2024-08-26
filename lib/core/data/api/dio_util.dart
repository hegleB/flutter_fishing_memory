
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioUtil {
  static final DioUtil _instance = DioUtil._internal();

  factory DioUtil() => _instance;

  late Dio _firebaseDio;

  DioUtil._internal() {
    try {
      _firebaseDio = _createFirebaseDio();
    } catch (e) {
      print('Dio 초기화 오류: $e');
    }
  }

  Dio get firebaseDio => _firebaseDio;
  
  Dio _createFirebaseDio() {
    final baseUrl = dotenv.env['FIREBASE_DATABASE_URL'];
    if (baseUrl == null || baseUrl.isEmpty) {
      throw Exception('Firebase base URL is not set in environment variables.');
    }

    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(milliseconds: 5000),
        headers: {
          'Content-Type': 'application/json',
        },
        queryParameters: {
          'key': dotenv.env['FIREBASE_API_KEY'],
        },
      ),
    );

    // 인터셉터 추가
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
    ));

    return dio;
  }
}