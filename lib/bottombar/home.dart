import 'package:flutter/material.dart';
import 'package:vpn/common/boxdecoration.dart';
import 'package:vpn/common/country.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/common/textedit.dart';
import 'package:vpn/connection/connection.dart';

class Homex extends StatefulWidget {
  const Homex({super.key});

  @override
  State<Homex> createState() => _HomexState();
}

class _HomexState extends State<Homex> {
  final TextEditingController _controllerSearch = TextEditingController();
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
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Location",
                            style: titleStyle.copyWith(fontSize: 25),
                          ),
                        ),
                        CommonTextedit(
                            myhinttext: "Search Location",
                            myPrefixIcon: const Icon(
                              Icons.search_outlined,
                              size: 30,
                            ),
                            mySuffixIcon: const SizedBox.shrink(),
                            myObscureText: false,
                            myTextInputType: TextInputType.name,
                            controller: _controllerSearch,
                            myOnChanged: (value) {},
                            value: 20),
                        const SizedBox(
                          height: 30,
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.black26.withOpacity(0.3),
                        ),
                        CountryList(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Connection(
                                          imageUrlx: "image/usa.png",
                                          countryNamex: "United States",
                                          titleWidgetx: Row(
                                            children: [
                                              Text(
                                                "Auto .07ms",
                                                style: bodyStyle.copyWith(
                                                    fontSize: 14,
                                                    color: Colors.transparent
                                                        .withOpacity(0.5)),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                height: 20,
                                                width: 43,
                                                decoration: boxDecoration,
                                                child: Center(
                                                    child: Text(
                                                  "Basic",
                                                  style: titleStyle.copyWith(
                                                      fontSize: 10),
                                                )),
                                              )
                                            ],
                                          ),
                                        )));
                          },
                          imageUrl: "image/usa.png",
                          countryName: "United States",
                          titleWidget: Center(
                            child: Row(
                              children: [
                                Text(
                                  "Auto .07ms",
                                  style: bodyStyle.copyWith(
                                      fontSize: 14,
                                      color:
                                          Colors.transparent.withOpacity(0.5)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 43,
                                  decoration: boxDecoration,
                                  child: Center(
                                      child: Text(
                                    "Basic",
                                    style: titleStyle.copyWith(fontSize: 10),
                                  )),
                                )
                              ],
                            ),
                          ),
                          trailingWidget: const Icon(
                            Icons.security_outlined,
                            color: Colors.blue,
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.black26.withOpacity(0.3),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 20, bottom: 20),
                          child: Text(
                            "All Countries",
                            style: bodyStyle.copyWith(
                                fontSize: 16,
                                color: Colors.transparent.withOpacity(0.5)),
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.black26.withOpacity(0.3),
                        ),
                        CountryList(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Connection(
                                          imageUrlx: "image/canada.png",
                                          countryNamex: "Canada",
                                          titleWidgetx: Text(
                                            "42ms",
                                            style: bodyStyle.copyWith(
                                                fontSize: 14,
                                                color: Colors.transparent
                                                    .withOpacity(0.5)),
                                          ),
                                        )));
                          },
                          imageUrl: "image/canada.png",
                          countryName: "Canada",
                          titleWidget: Text(
                            "42ms",
                            style: bodyStyle.copyWith(
                                fontSize: 14,
                                color: Colors.transparent.withOpacity(0.5)),
                          ),
                          trailingWidget: const SizedBox(
                            height: 60,
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.signal_cellular_alt_2_bar_outlined,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.circle_outlined,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.black26.withOpacity(0.3),
                        ),
                        CountryList(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Connection(
                                          imageUrlx: "image/sk.jpg",
                                          countryNamex: "South Korea",
                                          titleWidgetx: Text(
                                            "10ms",
                                            style: bodyStyle.copyWith(
                                                fontSize: 14,
                                                color: Colors.transparent
                                                    .withOpacity(0.5)),
                                          ),
                                        )));
                          },
                          imageUrl: "image/sk.jpg",
                          countryName: "South Korea",
                          titleWidget: Text(
                            "10ms",
                            style: bodyStyle.copyWith(
                                fontSize: 14,
                                color: Colors.transparent.withOpacity(0.5)),
                          ),
                          trailingWidget: const SizedBox(
                            height: 60,
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.signal_cellular_alt_1_bar_outlined,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.circle_outlined,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.black26.withOpacity(0.3),
                        ),
                        CountryList(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Connection(
                                          imageUrlx: "image/hk.png",
                                          countryNamex: "Hong Kong ",
                                          titleWidgetx: Text(
                                            "40ms",
                                            style: bodyStyle.copyWith(
                                                fontSize: 14,
                                                color: Colors.transparent
                                                    .withOpacity(0.5)),
                                          ),
                                        )));
                          },
                          trailingWidget: const SizedBox(
                            height: 60,
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.signal_cellular_alt,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.circle_outlined,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                          imageUrl: "image/hk.png",
                          countryName: "Hong Kong ",
                          titleWidget: Text(
                            "40ms",
                            style: bodyStyle.copyWith(
                                fontSize: 14,
                                color: Colors.transparent.withOpacity(0.5)),
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.black26.withOpacity(0.3),
                        ),
                        CountryList(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Connection(
                                          imageUrlx: "image/eng.jpg",
                                          countryNamex: "England",
                                          titleWidgetx: Text(
                                            "08ms",
                                            style: bodyStyle.copyWith(
                                                fontSize: 14,
                                                color: Colors.transparent
                                                    .withOpacity(0.5)),
                                          ),
                                        )));
                          },
                          trailingWidget: const SizedBox(
                            height: 60,
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.signal_cellular_alt_1_bar_outlined,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.circle_outlined,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                          imageUrl: "image/eng.jpg",
                          countryName: "England",
                          titleWidget: Text(
                            "08ms",
                            style: bodyStyle.copyWith(
                                fontSize: 14,
                                color: Colors.transparent.withOpacity(0.5)),
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.black26.withOpacity(0.3),
                        ),
                        CountryList(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Connection(
                                          imageUrlx: "image/france.png",
                                          countryNamex: "France",
                                          titleWidgetx: Text(
                                            "27ms",
                                            style: bodyStyle.copyWith(
                                                fontSize: 14,
                                                color: Colors.transparent
                                                    .withOpacity(0.5)),
                                          ),
                                        )));
                          },
                          trailingWidget: const SizedBox(
                            height: 60,
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.signal_cellular_alt_2_bar_outlined,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.circle_outlined,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                          imageUrl: "image/france.png",
                          countryName: "France",
                          titleWidget: Text(
                            "27ms",
                            style: bodyStyle.copyWith(
                                fontSize: 14,
                                color: Colors.transparent.withOpacity(0.5)),
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.black26.withOpacity(0.3),
                        ),
                        CountryList(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Connection(
                                          imageUrlx: "image/german.png",
                                          countryNamex: "Germany",
                                          titleWidgetx: Text(
                                            "27ms",
                                            style: bodyStyle.copyWith(
                                                fontSize: 14,
                                                color: Colors.transparent
                                                    .withOpacity(0.5)),
                                          ),
                                        )));
                          },
                          trailingWidget: const SizedBox(
                            height: 60,
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.signal_cellular_alt_2_bar_outlined,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.circle_outlined,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                          imageUrl: "image/german.png",
                          countryName: "Germany",
                          titleWidget: Text(
                            "27ms",
                            style: bodyStyle.copyWith(
                                fontSize: 14,
                                color: Colors.transparent.withOpacity(0.5)),
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.black26.withOpacity(0.3),
                        ),
                      ]))))),
    );
  }
}
