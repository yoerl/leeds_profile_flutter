import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:leads_profile_flutter/page/PageCalculateDailyIntake.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PageFood extends StatefulWidget {
  const PageFood({Key? key}) : super(key: key);

  @override
  State<PageFood> createState() => _PageFoodState();
}

class _PageFoodState extends State<PageFood> {
  // final product_type = ['전체보기', '탄수화물', '단백질', '지방'];
  // final nutrient_list = ['전체보기', '식재료', '완제품', '이색', '보충제'];
  final product_type = ['전체보기', '식재료', '완제품', '이색', '보충제'];
  final nutrient_list = ['전체보기', '탄수화물', '단백질', '지방'];

  @override
  Widget build(BuildContext context) {
    // 전환부
    // 숫자바꾸기
    // 장바구니
    return DefaultTabController(
      length: nutrient_list.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
              child: TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('일일 섭취량'),
                content: PageCalculateDailyIntake(),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: const Text('계산'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('확인'),
                  ),
                ],
              ),
            ),
            child: const Text(
              '일일섭취량계산하기',
              style: TextStyle(
                color: Colors.yellow,
              ),
            ),
          )),
          bottom: TabBar(
            tabs: nutrient_list.map((String choice) {
              // text는 탭바에 표시할 내용. 지금은 아이콘 없이 문자열만 사용.
              return Tab(text: choice);
            }).toList(),
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: nutrient_list.map((String choice) {
            Widget Widget_Result = Column(
              children: <Widget>[
                DefaultTabController(
                  length: product_type.length,
                  child: TabBar(
                    labelColor: Colors.black,
                    tabs: product_type.map((String choice) {
                      // text는 탭바에 표시할 내용. 지금은 아이콘 없이 문자열만 사용.
                      return Tab(text: choice);
                    }).toList(),
                    isScrollable: true,
                  ),
                )
              ],
            );

            return Widget_Result;
          }).toList(),
        ),
      ),
    );
  }
}
