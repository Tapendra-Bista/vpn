import 'package:flutter/material.dart';
import 'package:vpn/common/back_button.dart';
import 'package:vpn/common/mybutton.dart';
import 'package:vpn/common/myempty.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/common/textedit.dart';

class Phase1 extends StatefulWidget {
  const Phase1({super.key});
  @override
  State<Phase1> createState() => _SignSetupState();
}

class _SignSetupState extends State<Phase1> {
  final TextEditingController _controllerEmail = TextEditingController();

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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
              child: Column(
                children: [
                  const Backbutton(),
                  Padding(
                    padding: const EdgeInsets.only(top: 110, bottom: 30),
                    child: Text(
                      "Forgot Password",
                      style: titleStyle,
                    ),
                  ),
                  CommonTextedit(
                    myhinttext: "Email Address",
                    value:25,
                    myTextInputType: TextInputType.emailAddress,
                    controller: _controllerEmail,
                    myPrefixIcon: const Icon(Icons.email_outlined),
                    mySuffixIcon: myempty,
                    myObscureText: false,
                    myOnChanged: (value) {},
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 0, right: 3, bottom: 90),
                      child:
                          Bluebutton(buttonName: "Send OTP", onPressed: () {
                            Navigator.pushNamed(context, "/phase2");
                          })),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Go back to?",
                        style: bodyStyle.copyWith(fontSize: 18),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/signin");
                        },
                        child: Text("Sign In",
                            style: bodyStyle.copyWith(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 12, 134, 233),
                              decoration: TextDecoration.underline,
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
