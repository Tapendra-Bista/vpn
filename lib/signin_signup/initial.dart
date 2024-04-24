import 'package:flutter/material.dart';
import 'package:vpn/common/mybutton.dart';

class Initialpage extends StatefulWidget {
  const Initialpage({super.key});

  @override
  State<Initialpage> createState() => _InitialpageState();
}

class _InitialpageState extends State<Initialpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Bluebutton(
                  buttonName: "Sign Up",
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  }),
              Transbutton(
                  buttonName: "Sign In",
                  onPressed: () {
                    Navigator.pushNamed(context, "/signin");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
