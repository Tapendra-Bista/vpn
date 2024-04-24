import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpn/bottombar/home.dart';
import 'package:vpn/bottombar/profile.dart';
import 'package:vpn/bottombar/setup.dart';
import 'package:vpn/bottombar/speed.dart';
import 'package:vpn/common/mytext.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}
class _MyNavigationBarState extends State<MyNavigationBar> {
  List<Widget> items =[const Homex(),const Setx(),const Speedx() ,const Profile()];
  int index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar:BottomNavigationBar(
 
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        selectedItemColor: Colors.blue,
        unselectedItemColor:Colors.transparent.withOpacity(0.6),
        selectedLabelStyle: bodyStyle.copyWith(color: Colors.blue),
        unselectedLabelStyle: bodyStyle,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize:23,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
       items: const [
        BottomNavigationBarItem(
      
          icon:Icon(CupertinoIcons.home)
          ,
          label:"Home",
          tooltip: "Home",
          ),
        BottomNavigationBarItem(icon:Icon(CupertinoIcons.globe)  ,
          label:"Set up",
          tooltip: "Set up",),
        BottomNavigationBarItem(icon:Icon(Icons.speed_outlined),
          
          label:"Speed",
          tooltip: "Speed",),
        BottomNavigationBarItem(icon:Icon(CupertinoIcons.person)  ,
          label:"Profile",
          tooltip: "Profile",),
       ],
        
      ),
      body: items[index],
    );
  }
}