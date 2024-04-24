import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:vpn/common/mybutton.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/common/textedit.dart';

class Cardx extends StatefulWidget {
  const Cardx({super.key});

  @override
  State<Cardx> createState() => _HomexState();
}

class _HomexState extends State<Cardx> {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerNumber = TextEditingController();
  final TextEditingController _controllerDate = TextEditingController();
  final TextEditingController _controllerCvv = TextEditingController();
  String cardNumber = "";
  String cardHolderName = "";
  String expiryDate = "";
  String cvvd = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
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
                ListTile(
                  leading: const BackButton(),
                  title: Center(
                    child: Text(
                      "Add new card",
                      style: titleStyle.copyWith(fontSize: 25),
                    ),
                  ),
                  trailing: const Icon(Icons.qr_code_scanner_outlined),
                ),
                const SizedBox(
                  height: 20,
                ),
                CreditCardWidget(
                    chipColor: Colors.yellow,
                    bankName: "Nabil Bank",
                    obscureCardCvv: false,
                    obscureCardNumber: false,
                    obscureInitialCardNumber: false,
                    isHolderNameVisible: true,
                    backgroundImage: "image/nabil.png",
                    cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                    cvvCode: cvvd,
                    showBackView: true,
                    onCreditCardWidgetChange: (p0) {
                      p0.toString();
                    }),
                CommonTextedit(
                  value: 16,
                  myhinttext: "Card Number",
                  myPrefixIcon: const Icon(Icons.credit_card_outlined),
                  mySuffixIcon: const SizedBox.shrink(),
                  myObscureText: false,
                  myTextInputType: TextInputType.number,
                  controller: _controllerNumber,
                  myOnChanged: (value) {
                    setState(() {
                      cardNumber = value.toString();
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 210,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 18, right: 18),
                          child: TextField(
                            keyboardType: TextInputType.datetime,
                            style: bodyStyle,
                            onChanged: (value) {
                              setState(() {
                                expiryDate = value.toString();
                              });
                            },
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(7)
                            ],
                            decoration: InputDecoration(
                                prefixIcon:
                                    const Icon(Icons.calendar_month_outlined),
                                hintText: "Expiry Date",
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3))),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3))),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3))),
                                filled: true,
                                fillColor: Colors.transparent.withOpacity(0.03),
                                border: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3))),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3)))),
                            controller: _controllerDate,
                          ),
                        )),
                    SizedBox(
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 18, right: 18),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: bodyStyle,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(3)
                            ],
                            onChanged: (value) {
                              setState(() {
                                cvvd = value.toString();
                              });
                            },
                            decoration: InputDecoration(
                                prefixIcon:
                                    const Icon(Icons.credit_card_outlined),
                                hintText: "Cvv",
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3))),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3))),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3))),
                                filled: true,
                                fillColor: Colors.transparent.withOpacity(0.03),
                                border: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3))),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3)))),
                            controller: _controllerCvv,
                          ),
                        ))
                  ],
                ),
                CommonTextedit(
                  value: 20,
                  myhinttext: "Card Name",
                  myPrefixIcon: const Icon(Icons.person_outlined),
                  mySuffixIcon: const SizedBox.shrink(),
                  myObscureText: false,
                  myTextInputType: TextInputType.name,
                  controller: _controllerName,
                  myOnChanged: (value) {
                    setState(() {
                      cardHolderName = value.toString();
                    });
                  },
                ),
                const SizedBox(
                  height: 80,
                ),
                Center(
                    child: Bluebutton(
                        buttonName: "Add New Card", onPressed: () {}))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
