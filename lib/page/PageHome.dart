import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leads_profile_flutter/page/PageCamera.dart';
import 'package:leads_profile_flutter/page/PageComunity.dart';
import 'package:leads_profile_flutter/page/PageFood.dart';
import 'package:leads_profile_flutter/page/PageInfo.dart';
import 'package:leads_profile_flutter/page/PageJob.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'check',
    ),
    PageFood(),
    PageComunity(),
    ProducerLookupPage(),
    PageJob(),
    PageInfo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   title: const Text('Title'),
        // ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:
                  Image.asset('assets/icons/check.png', width: 30, height: 30),
              label: 'check',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/food.png', width: 30, height: 30),
              label: 'food',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/comunity.png',
                  width: 30, height: 30),
              label: 'comunity',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/camera.svg',
                  width: 30, height: 30),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/job.png', width: 30, height: 30),
              label: 'Job',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/Account.png', width: 30, height: 30),
              label: 'info',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
