import 'package:flutter/material.dart';

class CommonWidget_TabController_Default extends StatefulWidget {
  CommonWidget_TabController_Default(
      {Key? key,
        required this.tabNames,
        required this.tabWidgets
  }) : super(key: key);

  List<Tab> tabNames = <Tab>[];
  List<Widget> tabWidgets = <Widget>[];
  // List<Tab> Tabs_Depth_2 = <Tab>[];


  @override
  State<CommonWidget_TabController_Default> createState() => _CommonWidget_TabController_DefaultState();
}

class _CommonWidget_TabController_DefaultState extends State<CommonWidget_TabController_Default> {

  // final product_type = ['전체보기', '식재료', '완제품', '이색', '보충제'];
  // final nutrient_list = ['전체보기', '탄수화물', '단백질', '지방'];
  // List<Tab> Tabs_product_type_list = <Tab>[
  //   Tab(text: '전체보기'),
  //   Tab(text: '식재료'),
  //   Tab(text: '완제품'),
  //   Tab(text: '이색'),
  //   Tab(text: '보충제'),
  // ];
  //
  // List<Tab> Tabs_nutrient_list = <Tab>[
  //   Tab(text: '전체보기'),
  //   Tab(text: '탄수화물'),
  //   Tab(text: '단백질'),
  //   Tab(text: '지방'),
  // ];
  //
  // List<Tab> Tabs_Depth_1 = <Tab>[];
  // List<Tab> Tabs_Depth_2 = <Tab>[];

  @override
  void initState() {
    // Tabs_Depth_1.addAll(Tabs_nutrient_list);
    // Tabs_Depth_2.addAll(Tabs_product_type_list);

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.tabNames.length,
      child: Scaffold(
        body: SafeArea(
          child: Column(
              children: [
                TabBar(
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: widget.tabNames),
                Expanded(
                  child: TabBarView(
                      children: [
                        for (int i = 0; i < widget.tabWidgets.length; i++)
                          widget.tabWidgets[i],
                       ]
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}
