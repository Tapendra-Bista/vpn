import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpn/common/boxdecoration.dart';
import 'package:vpn/common/mybutton.dart';
import 'package:vpn/common/mytext.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

int myValue = 0;
List<String> items = [
  "Paypal\t\t\t\t\t\t\t\t",
  "Google pay",
  "Apple pay\t\t\t"
];

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const BackButton(),
              title: Center(
                  child: Text(
                "Payment method",
                style: titleStyle.copyWith(fontSize: 25),
              )),
              trailing: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/card");
                  },
                  child: const Icon(CupertinoIcons.add)),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 52,
              width: double.infinity,
              decoration: boxDecoration,
              child: RadioListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.paypal_rounded,
                      size: 25,
                      color: Color.fromARGB(255, 10, 41, 66),
                    ),
                    Text(
                      items[0],
                      style: bodyStyle,
                    )
                  ],
                ),
                value: 0,
                groupValue: myValue,
                onChanged: (value) => setState(() {
                  myValue = value!;
                }),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 52,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      color: Colors.black.withOpacity(0.09), width: 1),
                  borderRadius: BorderRadius.circular(8),
                  shape: BoxShape.rectangle),
              child: RadioListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "image/google.png",
                      height: 20,
                      width: 20,
                    ),
                    Text(
                      items[1],
                      style: bodyStyle,
                    )
                  ],
                ),
                value: 1,
                groupValue: myValue,
                onChanged: (value) => setState(() {
                  myValue = value!;
                }),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 52,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      color: Colors.black.withOpacity(0.09), width: 1),
                  borderRadius: BorderRadius.circular(8),
                  shape: BoxShape.rectangle),
              child: RadioListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.apple_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                    Text(
                      items[2],
                      style: bodyStyle,
                    )
                  ],
                ),
                value: 2,
                groupValue: myValue,
                onChanged: (value) => setState(() {
                  myValue = value!;
                }),
              ),
            ),
            const SizedBox(
              height: 450,
            ),
            Center(
                child: Bluebutton(
                    buttonName: "Continue",
                    onPressed: () {
                      Navigator.pushNamed(context, "/paynow");
                    })),
          ],
        ),
      )),
    );
  }
}
