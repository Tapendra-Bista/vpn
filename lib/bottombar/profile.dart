import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpn/bottombar/pp.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/common/mytittlelist.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Text(
                  "Profile",
                  style: titleStyle,
                ),
              ),
            ),
            const SizedBox(height: 15,),
           const PicturePart(),
            const SizedBox(height: 15,),
            myTitileList(
              "My account",
              Icons.person_outlined,
              () {},
              const Icon(
                CupertinoIcons.forward,
                color: Colors.black87,
                size: 18,
              ),
            ),
            myTitileList(
              "History",
              CupertinoIcons.clock,
              () {},
              const Icon(
                CupertinoIcons.forward,
                color: Colors.black87,
                size: 18,
              ),
            ),
            myTitileList(
              "Settings",
              Icons.settings_outlined,
              () {
                Navigator.pushNamed(context, "/setting");
              },
              const Icon(
                CupertinoIcons.forward,
                color: Colors.black87,
                size: 18,
              ),
            ),
            myTitileList(
              "Faq",
              CupertinoIcons.question_circle,
              () {
                Navigator.pushNamed(context, "/faq");
              },
              const Icon(
                CupertinoIcons.forward,
                color: Colors.black87,
                size: 18,
              ),
            ),
            myTitileList(
              "Invite friends",
              Icons.share,
              () {},
              const Icon(
                CupertinoIcons.forward,
                color: Colors.black87,
                size: 18,
              ),
            ),
            myTitileList(
              "Sign out",
              Icons.logout_outlined,
              () {},
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
