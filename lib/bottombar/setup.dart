
import 'package:flutter/material.dart';
import 'package:vpn/common/mystring.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/common/premium.dart';

class Setx extends StatefulWidget {
  const Setx({super.key});

  @override
  State<Setx> createState() => _SetxState();
}

class _SetxState extends State<Setx> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child:Padding(padding: const EdgeInsets.only(top: 30,left:15,right: 15),
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowIndicator();
          return true;
        },
        child: SingleChildScrollView(
      
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                    Center(child: Text("Select Plan",style: titleStyle,)),
         const SizedBox(height: 25,),
          Premium(price: "\$5.89",time: " /weekly",onPressed: (){
            Navigator.pushNamed(context, "/payment");
            setState(() {
              priceTotal ="\$5.89";
              period =" /weekly";
            
            });
          },),
        const SizedBox(height: 25,),
         Premium(price: "\$20.89",time: " /monthly",onPressed: (){
          Navigator.pushNamed(context, "/payment");
           setState(() {
              priceTotal ="\$20.89";
              period =" /monthly";
            
            });
         },),
        const SizedBox(height: 25,),
        Premium(price: "\$100.89",time: " /yearly",onPressed: (){
          Navigator.pushNamed(context, "/payment");
           setState(() {
              priceTotal ="\$100.89";
              period =" /yearly";
            
            });
        },),
         const SizedBox(height: 25,),
            ],
          ),
        ),
      ),)
      ),
    );
  }
}

