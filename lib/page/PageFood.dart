import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:leads_profile_flutter/page/PageCalculateDailyIntake.dart';
import 'package:leads_profile_flutter/page/component/widget_single/CommonWidget_TabController_Default.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PageFood extends StatefulWidget {
  const PageFood({Key? key}) : super(key: key);

  @override
  State<PageFood> createState() => _PageFoodState();
}

class _PageFoodState extends State<PageFood> {

   List<Tab> tabNames_product_type_list = <Tab>[
     Tab(text: '전체'),
     Tab(text: '식재료'),
     Tab(text: '완제품'),
     Tab(text: '이색'),
     Tab(text: '보충제'),
   ];

   List<Widget> tabWidgets_product_type_list = <Widget>[
     Icon(Icons.search),
     Icon(Icons.search),
     Icon(Icons.search),
     Icon(Icons.search),
     Icon(Icons.search),
   ];

  List<Tab> tabNames_nutrient_list = <Tab>[
    Tab(text: '전체'),
    Tab(text: '탄수화물'),
    Tab(text: '단백질'),
    Tab(text: '지방'),
  ];


  List<Widget> tabWidgets_nutrient_list = <Widget>[
    Icon(Icons.search),
    Icon(Icons.search),
    Icon(Icons.search),
    Icon(Icons.search),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
             SafeArea(
              child: Column(
                children: [
                  Text("장바구니, 칼로리 계산, 맞춤형 추천"),
                  Expanded(
                    child: CommonWidget_TabController_Default(tabNames: tabNames_nutrient_list, tabWidgets:
                    [
                      for (int i = 0; i < tabNames_nutrient_list.length; i++)
                        CommonWidget_TabController_Default(tabNames: tabNames_product_type_list, tabWidgets: tabWidgets_product_type_list),
                    ]
                    ),
                  ),
                ],
              ),
            ),
    );

  }
}

