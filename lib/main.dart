import 'package:fishingmemory/app.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_template.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  await dotenv.load(fileName: "assets/config/.env");
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  String? kakaoNativeAppKey = dotenv.env['KAKAO_API_KEY'];
  if (kakaoNativeAppKey != null) {
    KakaoSdk.init(
      nativeAppKey: kakaoNativeAppKey,
    );
  }
  runApp(App(sharedPreferences: sharedPreferences));
}
