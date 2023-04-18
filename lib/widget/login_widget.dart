import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_user.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LoginService {
  String? platform;

  Future<String?> kakaoLogin() async {
    KakaoSdk.init(nativeAppKey: 'b3b4d9c45de3e6768ac5112b42ecde27');

    if(await isKakaoTalkInstalled()) {
      await UserApi.instance.loginWithKakaoTalk();
      User user = await UserApi.instance.me();

      if(user != null) {
        return user.kakaoAccount?.profile?.nickname;
      } else {
        return '';
      }
    }
  }

  Future<String?> googleLogin() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? user = await googleSignIn.signIn();
    if(user != null) {
      return user.displayName;
    } else {
      return '';
    }
  }

  Future<String?> naverLogin() async {
    NaverLoginResult result = await FlutterNaverLogin.logIn();
    if(result != null) {
      return result.account.nickname;
    } else {
      return '';
    }
  }
}
