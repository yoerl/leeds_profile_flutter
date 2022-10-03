import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PageCalculateDailyIntake extends StatefulWidget {
  const PageCalculateDailyIntake({Key? key}) : super(key: key);

  @override
  State<PageCalculateDailyIntake> createState() => _PageCalculateDailyIntakeState();
}

class _PageCalculateDailyIntakeState extends State<PageCalculateDailyIntake> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            SizedBox(
              width: 150,
              child: TextField(
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '내 몸무게(kg)',
                  )),
            ),
            ToggleSwitch(
              isVertical: true,
              minWidth: 30.0,
              minHeight: 30.0,
              initialLabelIndex: 2,
              cornerRadius: 5.0,
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              icons: [
                FontAwesomeIcons.mars,
                FontAwesomeIcons.venus,
              ],
              iconSize: 30.0,
              borderWidth: 2.0,
              borderColor: [Colors.blueGrey],
              activeBgColors: [
                [Colors.blue],
                [Colors.pink]
              ],
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
          ],
        ),
        SizedBox(
          width: 150,
          height: 25,
          child: TextField(
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '내 키(cm)',
              )),
        ),
        SizedBox(
          width: 150,
          height: 25,
          child: TextField(
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '연령(세)',
              )),
        ),
        Text("목표"),
        ToggleSwitch(
          initialLabelIndex: 0,
          totalSwitches: 3,
          labels: ['감량', '유지', '증량'],
          onToggle: (index) {
            print('switched to: $index');
          },
        ),
        Text("활동량"),
        ToggleSwitch(
          minWidth: double.infinity,
          minHeight: 25,
          initialLabelIndex: 0,
          totalSwitches: 5,
          isVertical: true,
          labels: [
            '없음(운동안함)',
            '조금(1-3회 운동)',
            '보통(주 3-5회 운동)',
            '보통이상(주 6~ 7회 운동)',
            '많은경우(거의 매일 하루 2번운동)'
          ],
          onToggle: (index) {
            print('switched to: $index');
          },
        ),
      ],
    );
  }
}
