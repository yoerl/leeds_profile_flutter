import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:leads_profile_flutter/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PageComunity extends StatefulWidget {
  const PageComunity({Key? key}) : super(key: key);

  @override
  State<PageComunity> createState() => _PageComunityState();
}

class _PageComunityState extends State<PageComunity> {
  final Uri _url = Uri.parse('https://open.kakao.com/o/gd0rAtpe');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: OutlinedButton(
              child: Text("바디 프로필 커뮤니티 입장"),
              onPressed: () async {
                logger.i("Hi");

                launch('https://open.kakao.com/o/gd0rAtpe');
                //
                // bool result =
                //     await ShareClient.instance.isKakaoTalkSharingAvailable();
                //
                //
                // if (result) {
                //   print('카카오톡으로 공유 가능');
                //   final TextTemplate defaultFeed = TextTemplate(
                //     text:
                //         '카카오톡 공유는 카카오 플랫폼 서비스의 대표 기능으로써 사용자의 모바일 기기에 설치된 카카오 플랫폼과 연동하여 다양한 기능을 실행할 수 있습니다.\n현재 이용할 수 있는 카카오톡 공유는 다음과 같습니다.\n카카오톡링크\n카카오톡을 실행하여 사용자가 선택한 채팅방으로 메시지를 전송합니다.\n카카오스토리링크\n카카오스토리 글쓰기 화면으로 연결합니다.',
                //     link: Link(
                //       webUrl: Uri.parse('https: //developers.kakao.com'),
                //       mobileWebUrl: Uri.parse('https: //developers.kakao.com'),
                //     ),
                //   );
                //   try {
                //     Uri uri = await ShareClient.instance
                //         .shareDefault(template: defaultFeed);
                //     await ShareClient.instance.launchKakaoTalk(uri);
                //     print('카카오톡 공유 완료');
                //   } catch (error) {
                //     print('카카오톡 공유 실패 $error');
                //   }
                // } else {
                //   print('카카오톡 미설치: 웹 공유 기능 사용 권장');
                // }
              },
            ),
          ),
        ],
      ),
    ));
  }
}
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class PageComuniyu extends StatefulWidget {
//   const PageComuniyu({Key? key}) : super(key: key);

//   @override
//   State<PageComuniyu> createState() => _PageComuniyuState();
// }

// class _PageComuniyuState extends State<PageComuniyu> {
//   @override
//   Widget build(BuildContext context) {
//     // https://open.kakao.com/o/gd0rAtpe
//   }
// }
