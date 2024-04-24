import 'package:flutter/material.dart';
import 'package:vpn/common/back_button.dart';
import 'package:vpn/common/mybutton.dart';
import 'package:vpn/common/myempty.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/common/textedit.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignSetupState();
}

class _SignSetupState extends State<SignUp> {
  final TextEditingController _controllerName = TextEditingController();
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
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: Text(
                      "Sign Up",
                      style: titleStyle,
                    ),
                  ),
                  CommonTextedit(
                    value: 20,
                    myhinttext: "Full Name",
                    myTextInputType: TextInputType.name,
                    controller: _controllerName,
                    myPrefixIcon: const Icon(Icons.person_outline),
                    mySuffixIcon: myempty,
                    myObscureText: false,
                    myOnChanged: (value) {},
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
                    myhinttext: "New Password",
                    myTextInputType: TextInputType.text,
                    controller: _controllerPassword,
                    myPrefixIcon: const Icon(Icons.lock_outlined),
                    mySuffixIcon: eye(),
                    myObscureText: _check,
                    myOnChanged: (vaue) {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ischecked(),
                        RichText(
                            text: TextSpan(
                                text: "I agree to the ",
                                style: bodyStyle,
                                children: [
                              TextSpan(
                                  text: "Term & Conditions",
                                  style: bodyStyle.copyWith(
                                      color: const Color.fromARGB(
                                          255, 12, 134, 233),
                                      decoration: TextDecoration.underline))
                            ]))
                      ],
                    ),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 0, right: 3, bottom: 25),
                      child:
                          Bluebutton(buttonName: "Sign Up", onPressed: () {
                            if(_checkBox==true){
                      Navigator.pushNamed(context,  "/navbar");
                            }
                          })),
                  Text(
                    "Or Sign Up With in",
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
                        "Already have an account?",
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
