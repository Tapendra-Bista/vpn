import 'package:flutter/material.dart';
import 'package:vpn/common/mystring.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/my_flutter_app_icons.dart';

class PayNow extends StatefulWidget {
  const PayNow({super.key});

  @override
  State<PayNow> createState() => _PayNowState();
}

class _PayNowState extends State<PayNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ).copyWith(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackButton(),
        Container(
          
          height:550,
          width:double.infinity,
decoration:  BoxDecoration(
          color: Colors.transparent.withOpacity(0.01),
          border: Border.all(color: Colors.black.withOpacity(0.09), width: 1),
          borderRadius: BorderRadius.circular(8),
          shape: BoxShape.rectangle),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 const SizedBox(
              height: 44,
            ),
            const Center(
              child: Icon(
                MyFlutterApp.crown_1,
                size: 90,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                "Go to premium",
                style: titleStyle,
              ),
            ),
            Text(
              dummy,
              style: bodyStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 25),
              child: Text(
                "•\t\tNo More Ads\n\n•\t\tIncrease Connection Speed\n\n•\t\tProtect Your Security\n\n•\t\tUnlock All Servers\n\n•\t\tUse On Multiple Device\n\n•\t\tVip Customer Support",
                style: titleStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7)),
              ),
            ),
            ],
          ),
        ),
        const SizedBox(height: 29,),
        Container(
          padding: const EdgeInsets.all(8),
          height:90,
          width: double.infinity,
          decoration:  BoxDecoration(
          color: Colors.transparent.withOpacity(0.01),
          border: Border.all(color: Colors.black.withOpacity(0.09), width: 1),
          borderRadius: BorderRadius.circular(8),
          shape: BoxShape.rectangle),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
            children: [
              RichText(text: TextSpan(
                text: priceTotal,
                style:titleStyle.copyWith(color: Colors.blue),
                children: [
TextSpan(text:"\n$period",style: bodyStyle),

                ]
              )),
  MaterialButton(
        height: 53,
        minWidth: 150,
         highlightColor: Colors.transparent,
        splashColor:Colors.transparent ,
        onPressed:(){},
        color: const Color.fromRGBO(38, 94, 227, 1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)),
        child: Text(
          "Pay Now",
          style: TextStyle(
              fontFamily: "font/redditfont.tff",
              fontSize: 14,
              color: Colors.white.withOpacity(0.9)),
        ),
      ),
            ],),
        )
          ],
        ),
      )),
    );
  }
}
