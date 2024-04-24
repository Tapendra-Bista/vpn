import 'package:flutter/material.dart';
import 'package:vpn/common/back_button.dart';
import 'package:vpn/common/mybutton.dart';
import 'package:vpn/common/myempty.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/common/textedit.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _SignSetupState();
}

class _SignSetupState extends State<SignIn> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  bool _check = true;
  bool _checkBox = false;
  @override
  void initState() {
    _check = true;
    _checkBox = false;
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
                    padding: const EdgeInsets.only(top: 102, bottom: 30),
                    child: Text(
                      "Sign In",
                      style: titleStyle,
                    ),
                  ),
                  CommonTextedit(
                    value: 25,
                    myhinttext: "Email Address",
                    myTextInputType: TextInputType.emailAddress,
                    controller: _controllerEmail,
                    myPrefixIcon: const Icon(Icons.email_outlined),
                    mySuffixIcon: myempty,
                    myObscureText: false,
                    myOnChanged: (value) {},
                  ),
                  CommonTextedit(
                    value: 16,
                    myhinttext: "Password",
                    myTextInputType: TextInputType.text,
                    controller: _controllerPassword,
                    myPrefixIcon: const Icon(Icons.lock_outlined),
                    mySuffixIcon: eye(),
                    myObscureText: _check,
                    myOnChanged: (value) {},
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 15, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/phase1");
                              },
                              child: Text(
                                "Forgot Password",
                                style: bodyStyle.copyWith(
                                    color:
                                        const Color.fromARGB(255, 12, 134, 233),
                                    decoration: TextDecoration.underline),
                              ),
                            )
                          ])),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 0, right: 3, bottom: 25),
                      child:
                          Bluebutton(buttonName: "Sign In", onPressed: () {
                            Navigator.pushNamed(context,  "/navbar");
                          })),
                  Text(
                    "Or Sign In With in",
                    style: bodyStyle.copyWith(fontSize: 20),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.apple_outlined,
                          color: Colors.grey,
                          size: 60,
                        ),
                        Icon(
                          Icons.facebook_outlined,
                          color: Colors.blue,
                          size: 55,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: bodyStyle.copyWith(fontSize: 18),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: Text("Sign Up",
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

  IconButton ischecked() {
    return IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          if (_checkBox == false) {
            setState(() {
              _checkBox = true;
            });
          } else {
            setState(() {
              _checkBox = false;
            });
          }
        },
        icon: Icon(_checkBox == true
            ? Icons.check_box_outlined
            : Icons.check_box_outline_blank_outlined));
  }
}
