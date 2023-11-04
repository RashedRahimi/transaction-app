import 'package:flutter/material.dart';
import 'package:transaction_guide_app/constants/theme.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';

import '../../constants/list.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);
  static String routeName = "/settingscreen";

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool pushNotificationState = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15)),
            child: Column(
              children: [
                MainSettingWidgets(
                  pushNotificationState: pushNotificationState,
                  onChangedSwitchButton: (value) {
                    setState(() {
                      pushNotificationState = !pushNotificationState;
                    });
                  },
                  onPressedIcon: () {},
                ),
                const DividerWidget(),
                OthersSettingWidgets(
                  onPressedIcon: () {},
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}
class MainSettingWidgets extends StatelessWidget {
  const MainSettingWidgets({
    Key? key,
    required this.pushNotificationState,
    required this.onChangedSwitchButton,
    required this.onPressedIcon,
  }) : super(key: key);

  final bool pushNotificationState;
  final Function(bool value) onChangedSwitchButton;
  final Function() onPressedIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(settingList.length, (index) {
        return Container(
          margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
          width: double.infinity,
          child: Row(
            children: [
              settingList[index]['icon'],
              SizedBox(
                width: getProportionateScreenWidth(5),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    settingList[index]['title'],
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: Colors.black),
                  ),
                  SizedBox(
                    height:getProportionateScreenHeight(5),
                  ),
                  Text(
                    settingList[index]['subTitle'],
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              index == settingList.length - 1
                  ? Switch(
                value: pushNotificationState,
                onChanged: onChangedSwitchButton,
                activeColor: Colors.black,
              )
                  : IconButton(
                  onPressed: onPressedIcon,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: getProportionateScreenWidth(20),
                  ))
            ],
          ),
        );
      }),
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(15)),
      child: const Divider(
        height: 2,
        color: Colors.grey,
      ),
    );
  }
}
class OthersSettingWidgets extends StatelessWidget {
  const OthersSettingWidgets({
    Key? key,
    required this.onPressedIcon,
  }) : super(key: key);

  final Function() onPressedIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: getProportionateScreenHeight(25),
              width: getProportionateScreenWidth(1),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: getProportionateScreenWidth(2),
                      color: Colors.black)),
            ),
            SizedBox(
              width: getProportionateScreenWidth(5),
            ),
            Text(
              'Others',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(20)),
            )
          ],
        ),
        Column(
          children: List.generate(subSettingList.length, (index) {
            return SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Text(
                    subSettingList[index],
                    style:
                    TextStyle(fontSize: getProportionateScreenWidth(20)),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: onPressedIcon,
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: getProportionateScreenHeight(20),
                      )),
                ],
              ),
            );
          }),
        ),
      ],
    );
  }
}
