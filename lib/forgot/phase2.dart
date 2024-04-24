import 'package:flutter/material.dart';
import 'package:vpn/common/back_button.dart';
import 'package:vpn/common/mybutton.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/common/opttextfilled.dart';

class Phase2 extends StatefulWidget {
  const Phase2({super.key});
  @override
  State<Phase2> createState() => _SignSetupState();
}

class _SignSetupState extends State<Phase2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (notification) {
              notification.disallowIndicator();
              return true;
            },
            child: SingleChildScrollView(
                child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                child: Column(
                  children: [
                    const Backbutton(),
                    Padding(
                      padding: const EdgeInsets.only(top: 140, bottom: 30),
                      child: Text(
                        "Enter Verification",
                        style: titleStyle,
                      ),
                    ),
                    const Form(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OtpTextedit(),
                          OtpTextedit(),
                          OtpTextedit(),
                          OtpTextedit(),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 15, left: 28),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Re-send code",
                            style: bodyStyle.copyWith(
                                color: const Color.fromARGB(255, 12, 134, 233),
                                decoration: TextDecoration.underline),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 3, bottom: 25),
                        child:
                            Bluebutton(buttonName: "Verify", onPressed: () {
                              Navigator.pushNamed(context, "/phase3");
                            })),
                  ],
                ),
              ),
            ))));
  }
}
