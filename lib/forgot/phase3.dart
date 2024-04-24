import 'package:flutter/material.dart';
import 'package:vpn/common/back_button.dart';
import 'package:vpn/common/mybutton.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/common/snackbar.dart';
import 'package:vpn/common/textedit.dart';

class Phase3 extends StatefulWidget {
  const Phase3({super.key});
  @override
  State<Phase3> createState() => _SignSetupState();
}

class _SignSetupState extends State<Phase3> {
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerPassword1 = TextEditingController();
  bool _check = true;

  @override
  void initState() {
    _check = true;

    super.initState();
  }

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
                    padding: const EdgeInsets.only(top: 120, bottom: 30),
                    child: Text(
                      "Reset Password",
                      style: titleStyle,
                    ),
                  ),
                  CommonTextedit(
                    value: 16,
                    myhinttext: " New Password",
                    myTextInputType: TextInputType.text,
                    controller: _controllerPassword,
                    myPrefixIcon: const Icon(Icons.lock_outlined),
                    mySuffixIcon: eye(),
                    myObscureText: _check,
                    myOnChanged: (value) {},
                  ),
                  CommonTextedit(
                    myhinttext: "Confirm Password",
                    value: 16,
                    myTextInputType: TextInputType.text,
                    controller: _controllerPassword1,
                    myPrefixIcon: const Icon(Icons.lock_outlined),
                    mySuffixIcon: eye(),
                    myObscureText: _check,
                    myOnChanged: (value) {},
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 0, right: 3, bottom: 25),
                      child: Bluebutton(
                          buttonName: "Reset Password",
                          onPressed: () {
                       ScaffoldMessenger.of(context).showSnackBar(mySnackBar("Password reset successfully"));
                          })),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  IconButton eye() {
    return IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          if (_check == true) {
            setState(() {
              _check = false;
            });
          } else {
            setState(() {
              _check = true;
            });
          }
        },
        icon: Icon(_check == true
            ? Icons.remove_red_eye_outlined
            : Icons.visibility_off_outlined));
  }
}
