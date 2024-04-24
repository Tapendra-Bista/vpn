import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/common/mytittlelist.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool boolValue = false;
   bool boolValue1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const BackButton(),
                Padding(
                  padding: const EdgeInsets.only(left: 98),
                  child: Text(
                    "Settings",
                    style: titleStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            myTitileList(
                "Connection mode",
                Icons.check_circle_outline,
                () => () {},
                Text(
                  "IPSec",
                  style: bodyStyle,
                )),
            myTitileList(
              "Auto Connect",
              CupertinoIcons.loop_thick,
              () => () {},
              SizedBox(
                height: 26,
                width: 53,
                child: FlutterSwitch(
                    height: 26,
                    width: 53,
                    value: boolValue,
                    onToggle: (value) {
                      setState(() {
                        boolValue = value;
                      });
                    }),
              ),
            ),
            myTitileList(
              "Show notification",
              CupertinoIcons.bell,
              () {},
              SizedBox(
                height: 26,
                width: 53,
                child: FlutterSwitch(
                    height: 26,
                    width: 53,
                    value: boolValue1,
                    onToggle: (value) {
                      setState(() {
                        boolValue1 = value;
                      });
                    }),
              ),
            ),
            myTitileList(
              "Terms of service",
              CupertinoIcons.news_solid,
              () => () {},
              const Icon(
                CupertinoIcons.forward,
                color: Colors.black87,
                size: 18,
              ),
            ),
            myTitileList(
              "Privacy policy",
              Icons.privacy_tip_outlined,
              () => () {},
              const Icon(
                CupertinoIcons.forward,
                color: Colors.black87,
                size: 18,
              ),
            ),
            myTitileList(
              "About",
              CupertinoIcons.info,
              () => () {},
              const Icon(
                CupertinoIcons.forward,
                color: Colors.black87,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
