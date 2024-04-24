import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:vpn/common/boxdecoration.dart';
import 'package:vpn/common/mybutton.dart';
import 'package:vpn/common/mytext.dart';

class Speedx extends StatefulWidget {
  const Speedx({super.key});

  @override
  State<Speedx> createState() => _SpeedxState();
}

class _SpeedxState extends State<Speedx> {
  int speed = 0;
  int mb1= 0;
   int mb2= 0;
    int mb3= 0;
     int mb4= 0;
  late ValueNotifier<double> _valueNotifier;
  @override
  void initState() {
    _valueNotifier = ValueNotifier(0.0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 15)
    ,  child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height:20,),
        ListTile(leading: const BackButton(),title: Center(child: Padding(
          padding: const EdgeInsets.only(right:25),
          child: Text("Speed test",style: titleStyle,),
        ),),),
        const SizedBox(height:70,),
         Center(
          child: SimpleCircularProgressBar(
            size: 250,
            backStrokeWidth: 30,
            maxValue: 275,
            progressStrokeWidth: 30,
            valueNotifier: _valueNotifier,
            backColor: Colors.blue.withOpacity(0.09),
            progressColors: const [
              Colors.blue
            ],
            onGetText: (p0) {
              return Text("\t\t${p0.toInt()}\nMb/s",style: titleStyle.copyWith(fontSize:45),);
            },
            
          ),
        ),

          const SizedBox(height:60,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height:70,
              width:160,
              decoration: boxDecoration.copyWith(
                                  borderRadius: BorderRadius.circular(33),
                                color: Colors.grey.withOpacity(0.03)),
              child:  ListTile(
                title: Text("Downloads",style:bodyStyle.copyWith(fontSize:13),),
                subtitle: Text("$mb1 mb/s",style:bodyStyle.copyWith(fontSize:14),),
                 leading: const CircleAvatar(
                  radius:22,
                  
                  backgroundImage: AssetImage("image/down.jpg"),
                ),
              ),
            ),
              Container(
              height:70,
              width: 160,
              decoration: boxDecoration.copyWith(
                                  borderRadius: BorderRadius.circular(33),
                                  color: Colors.grey.withOpacity(0.03)),
              child: ListTile(
                title: Text("Upload",style:bodyStyle.copyWith(fontSize:13),),
                subtitle: Text("$mb2 mb/s",style:bodyStyle.copyWith(fontSize:14),),
                 leading: const CircleAvatar(
                  radius:22,
                  
                  backgroundImage: AssetImage("image/up.jpg"),
                ),
              ),
            )
          ],),

          const SizedBox(height: 20,),
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height:70,
              width:160,
              decoration: boxDecoration.copyWith(
                                  borderRadius: BorderRadius.circular(33),
                                  color: Colors.grey.withOpacity(0.03)),
              child:ListTile(
                title: Text("Ping",style:bodyStyle.copyWith(fontSize:13),),
                subtitle: Text("$mb3 mb/s",style:bodyStyle.copyWith(fontSize:14),),
                 leading: const CircleAvatar(
                  radius:22,
                  
                  backgroundImage: AssetImage("image/ping.jpg"),
                ),
              ),
            ),
              Container(
              height:70,
              width: 160,
              decoration: boxDecoration.copyWith(
                                  borderRadius: BorderRadius.circular(33),
                                  color: Colors.grey.withOpacity(0.03)),
              child: ListTile(
                title: Text("Jitter",style:bodyStyle.copyWith(fontSize:13),),
                subtitle: Text("$mb4 mb/s",style:bodyStyle.copyWith(fontSize:14),),
                 leading: const CircleAvatar(
                  radius:22,
                  
                  backgroundImage: AssetImage("image/jitter.png"),
                ),
              ),
            )
          ],),
        const SizedBox(height:20),
        Center(child: Bluebutton(buttonName: "Test Speed", onPressed:(){
          speed = Random().nextInt(275);

          setState(() {
            _valueNotifier.value = speed.toDouble();
             mb1 = Random().nextInt(101);
              mb2 = Random().nextInt(101);
               mb3 = Random().nextInt(101);
                mb4 = Random().nextInt(101);
          });
        }))
      ],
      
    ),),
    ));
  }
}