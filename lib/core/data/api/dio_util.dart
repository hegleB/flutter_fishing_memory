import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioUtil {
  static final DioUtil _instance = DioUtil._internal();

  factory DioUtil() => _instance;

  late Dio _firebaseDio;
  late Dio _mapDio;

  DioUtil._internal() {
    try {
      _firebaseDio = _createFirebaseDio();
      _mapDio = _createMapDio();
    } catch (e) {
      print('Dio 초기화 오류: $e');
    }
  }

  Dio get firebaseDio => _firebaseDio;
  Dio get mapDio => _mapDio;

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

    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
    ));

    return dio;
  }

  Dio _createMapDio() {
    final baseUrl = dotenv.env['NAVER_MAP_BASE_URL'];
    if (baseUrl == null || baseUrl.isEmpty) {
      throw Exception('Map base URL is not set in environment variables.');
    }

    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(milliseconds: 5000),
        headers: {
          "X-NCP-APIGW-API-KEY-ID": dotenv.env['NAVER_MAP_API_CLIENT_ID'],
          "X-NCP-APIGW-API-KEY": dotenv.env['NAVER_MAP_API_CLIENT_SECRET'],
        },
      ),
    );

    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
    ));

    return dio;
  }
}
