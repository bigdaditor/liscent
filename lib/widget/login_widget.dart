import 'package:liscent/model/LoginPlatform.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_user.dart';

class LoginWidget {
  String? platform;

  LoginWidget(String platform) {
    this.platform = platform;
    accountLogin(platform);
  }

  void accountLogin(String platform) {
    if(platform == loginPlatform.kakao.name) {
      kakaoLogin();
    } else if(platform == loginPlatform.google.name) {

    } else if(platform == loginPlatform.naver.name) {

    }
  }

  void kakaoLogin() async {
    if(await isKakaoTalkInstalled()) {

      User user;
      try {
        user = await UserApi.instance.me();
      } catch (error) {
        print('사용자 정보 요청 실패 $error');
        return;
      }

      // 사용자의 추가 동의가 필요한 사용자 정보 동의 항목 확인
      List<String> scopes = [];

      if (user.kakaoAccount?.emailNeedsAgreement == true) {
        scopes.add('account_email');
      }
      if (user.kakaoAccount?.birthdayNeedsAgreement == true) {
        scopes.add("birthday");
      }
      if (user.kakaoAccount?.birthyearNeedsAgreement == true) {
        scopes.add("birthyear");
      }
      if (user.kakaoAccount?.ciNeedsAgreement == true) {
        scopes.add("account_ci");
      }
      if (user.kakaoAccount?.phoneNumberNeedsAgreement == true) {
        scopes.add("phone_number");
      }
      if (user.kakaoAccount?.profileNeedsAgreement == true) {
        scopes.add("profile");
      }
      if (user.kakaoAccount?.ageRangeNeedsAgreement == true) {
        scopes.add("age_range");
      }

      if (scopes.length > 0) {
        print('사용자에게 추가 동의 받아야 하는 항목이 있습니다');

        OAuthToken token;
        try {
          token = await UserApi.instance.loginWithNewScopes(scopes);
          print('현재 사용자가 동의한 동의 항목: ${token.scopes}');
        } catch (error) {
          print('추가 동의 요청 실패 $error');
          return;
        }

        try {
          User user = await UserApi.instance.me();
          print('사용자 정보 요청 성공'
              '\n회원번호: ${user.id}'
              '\n닉네임: ${user.kakaoAccount?.profile?.nickname}'
              '\n이메일: ${user.kakaoAccount?.email}');
        } catch (error) {
          print('사용자 정보 요청 실패 $error');
        }
      }
    }
  }
}