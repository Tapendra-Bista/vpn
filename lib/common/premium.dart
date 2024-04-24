import 'package:flutter/material.dart';
import 'package:vpn/common/mybutton.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/my_flutter_app_icons.dart';

class Premium extends StatelessWidget {
  const Premium({
    super.key,required this.onPressed,
    required this.price,
    required this.time,
  });
final Function() onPressed;
final String price;
final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.black.withOpacity(0.09), width: 1),
          borderRadius: BorderRadius.circular(14),
          shape: BoxShape.rectangle),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 15),
            child: ListTile(
              leading: const Icon(
                MyFlutterApp.crown_1,
                color: Colors.blue,
                size: 29,
              ),
              title: Text(
                "Go to premium",
                style: titleStyle,
              ),
              subtitle: Text(
                "7 day's free trial",
                style: bodyStyle,
              ),
            ),
          ),
          RichText(
              text: TextSpan(
                  text:price,
                  style: titleStyle.copyWith(color: Colors.blue),
                  children: [
                TextSpan(text:time, style: bodyStyle),
                TextSpan(
                    text:
                        "\n\nLorem Ipsum is simply dummy text of the printing and type setting industry.",
                    style: bodyStyle.copyWith(fontWeight: FontWeight.normal))
              ])),
          Bluebutton(buttonName: "Choose plan", onPressed: onPressed
            
          )
        ],
      ),
    );
  }
}
