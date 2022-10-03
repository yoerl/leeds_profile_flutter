import 'package:flutter/material.dart';

class CommonWidget_TabController_Depth extends StatefulWidget {
  CommonWidget_TabController_Depth(
      {Key? key,
        required this.tabNames,
        required this.tabWidgets
      }) : super(key: key);

  List<Tab> tabNames = <Tab>[];
  List<Widget> tabWidgets = <Widget>[];

  List<Tab> Tabs_Depth_1 = <Tab>[];
  List<Tab> Tabs_Depth_2 = <Tab>[];

  @override
  State<CommonWidget_TabController_Depth> createState() => _CommonWidget_TabController_DepthState();
}

class _CommonWidget_TabController_DepthState extends State<CommonWidget_TabController_Depth> {


  @override
  void initState() {

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
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: widget.tabNames),
                Expanded(
                  child: TabBarView(
                      children: [
                        Icon(Icons.search),
                        Icon(Icons.search),
                        Icon(Icons.search),
                        Icon(Icons.search),
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
