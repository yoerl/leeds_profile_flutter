import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:leads_profile_flutter/page/PageHome.dart';
import 'package:kakao_flutter_sdk_common/kakao_flutter_sdk_common.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({Key? key}) : super(key: key);

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/socials/kakao.svg',
                          width: 30, height: 30),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Login with KaKao ',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                  onPressed: () {
                    // 눌렀을 때 두 번째 route로 이동합니다.
                    // try {
                    //   OAuthToken token = await UserApi.instance.loginWithKakaoTalk();
                    //   print('카카오톡으로 로그인 성공 ${token.accessToken}');
                    // } catch (error) {
                    //   print('카카오톡으로 로그인 실패 $error');
                    // }

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageHome()));
                  },
                  style: TextButton.styleFrom(
                      fixedSize: Size(220, 50), backgroundColor: Colors.yellow),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new SvgPicture.asset('assets/icons/socials/google.svg',
                          width: 30, height: 30),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Login with Google '),
                      ),
                    ],
                  ),
                  onPressed: () {
                    // 눌렀을 때 두 번째 route로 이동합니다.
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageHome()));
                  },
                  style: TextButton.styleFrom(
                      fixedSize: Size(220, 50), backgroundColor: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new SvgPicture.asset('assets/icons/socials/instagram.svg',
                          width: 30, height: 30),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Login with Instagram ',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                  onPressed: () {
                    // 눌렀을 때 두 번째 route로 이동합니다.
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageHome()));
                  },
                  style: TextButton.styleFrom(
                      fixedSize: Size(230, 50), backgroundColor: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
