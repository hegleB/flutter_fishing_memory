import 'dart:async';

import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class KakaoLoginService {
  Future<OAuthToken?> loginWithKakaoOrThrow() async {
    final UserApi api = UserApi.instance;
    if (await isKakaoTalkInstalled()) {
      try {
          OAuthToken token = await api.loginWithKakaoTalk();
          return token;
      }catch (error) {
        if (error is PlatformException && error.code == 'CANCELED') {
          return null;
        }

        try {
          OAuthToken token = await api.loginWithKakaoAccount();
          return token;
        } catch (error) {
          print('카카오계정으로 로그인 실패 $error');
        }
      }
    } else {
      try {
          OAuthToken token = await api.loginWithKakaoAccount();
          return token;
      } catch (error) {
        print('카카오계정으로 로그인 실패 $error');
      }
    }
  }
}
