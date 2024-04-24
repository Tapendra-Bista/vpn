import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:vpn/common/boxdecoration.dart';
import 'package:vpn/common/country.dart';
import 'package:vpn/common/mytext.dart';

class Connection extends StatefulWidget {
  const Connection({
    super.key,
    required this.imageUrlx,
    required this.countryNamex,
    required this.titleWidgetx,
  });
  final String imageUrlx;

  final String countryNamex;
  final Widget titleWidgetx;

  @override
  State<Connection> createState() => _HomexState();
}

class _HomexState extends State<Connection> {
  bool switchValue = true;

  int randomValue = Random().nextInt(150);
  late ValueNotifier<double> _valueNotifier;
  late ValueNotifier<double> _valueNotifier1;
  int randomValue1 = Random().nextInt(150);
  final _stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countUp,
    onChange: (p0) {
      debugPrint("Change:$p0");
    },
    isLapHours: false,
    onChangeRawSecond: (p0) => debugPrint("Second:$p0"),
    onChangeRawMinute: (p0) => debugPrint("min:$p0"),
  );
  @override
  void initState() {
    super.initState();
    switchValue = true;
    _valueNotifier = ValueNotifier(randomValue.toDouble());
    _valueNotifier1 = ValueNotifier(randomValue1.toDouble());
    _stopWatchTimer.onStartTimer();
    _stopWatchTimer.rawTime.listen((event) {});
    _stopWatchTimer.minuteTime.listen((event) {});
    _stopWatchTimer.secondTime.listen((event) {});
    _stopWatchTimer.fetchEnded.listen((event) {});
    _stopWatchTimer.fetchStopped.listen((event) {});
  }

  @override
  void dispose() async {
    super.dispose();
    switchValue;

    _stopWatchTimer.onStartTimer();
    await _stopWatchTimer.dispose();
  }

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
                      ListTile(
                        leading: const BackButton(),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            switchValue == true ? "Connected" : "Dis-connected",
                            style: titleStyle,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 95,
                      ),
                      Center(
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              StreamBuilder<int>(
                                stream: _stopWatchTimer.secondTime,
                                initialData: _stopWatchTimer.secondTime.value,
                                builder: (BuildContext context,
                                    AsyncSnapshot snapshot) {
                                  final value = snapshot.data;

                                  return Center(
                                    child: Text(
                                      StopWatchTimer.getDisplayTime(
                                              value * 1000,
                                              milliSecond: false)
                                          .toString(),
                                      style:
                                          titleStyle.copyWith(fontSize: 45),
                                    ),
                                  );
                                },
                              ),
                              Center(
                                child: Text(
                                  "ip 10.16.100.244",
                                  style: bodyStyle,
                                ),
                              ),
                              const SizedBox(
                                height: 70,
                              ),
                              Center(
                                child: SizedBox(
                                  height: 100,
                                  width: 200,
                                  child: FlutterSwitch(
                                      activeColor: Colors.blue,
                                      borderRadius: 170,
                                      toggleSize: 100,
                                      height: 100,
                                      width: 200,
                                      value: switchValue,
                                      onToggle: (value) {
                                        setState(() {
                                          switchValue = value;
                                        });
                                        if (switchValue == true) {
                                          setState(() {
                                            randomValue =
                                                Random().nextInt(150);
                                            randomValue1 =
                                                Random().nextInt(150);
                                            _valueNotifier.value =
                                                randomValue.toDouble();
                                            _valueNotifier1.value =
                                                randomValue1.toDouble();
                                          });
                                          _stopWatchTimer.onStartTimer();
                                        } else {
                                          _stopWatchTimer.onResetTimer();
                                          randomValue = 0;
                                          randomValue1 = 0;
                                        }
                                      }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 95,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 70,
                              width: 170,
                              decoration: boxDecoration.copyWith(
                                  borderRadius: BorderRadius.circular(33),
                                  color: Colors.grey.withOpacity(0.03)),
                              child: ListTile(
                                leading: SimpleCircularProgressBar(
                                  size: 45,
                                  onGetText: (p0) {
                                    return Text(
                                      "↓",
                                      style: bodyStyle.copyWith(
                                          color: Colors.blue,
                                          fontSize: 33,
                                          fontWeight: FontWeight.w800),
                                    );
                                  },
                                  maxValue: 150,
                                  progressStrokeWidth: 3,
                                  backStrokeWidth: 4,
                                  valueNotifier: _valueNotifier,
                                  progressColors: const [Colors.blue],
                                  backColor: Colors.blue.withOpacity(0.09),
                                ),
                                title: Text(
                                  "Download",
                                  style: bodyStyle,
                                ),
                                subtitle: Text(
                                  "$randomValue mb/s",
                                  style: titleStyle.copyWith(fontSize: 10),
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 150,
                              decoration: boxDecoration.copyWith(
                                  borderRadius: BorderRadius.circular(33),
                                  color: Colors.grey.withOpacity(0.03)),
                              child: ListTile(
                                leading: SimpleCircularProgressBar(
                                  size: 45,
                                  backColor: Colors.blue.withOpacity(0.09),
                                  maxValue: 150,
                                  onGetText: (p0) {
                                    return Text(
                                      "↑",
                                      style: bodyStyle.copyWith(
                                          color: Colors.blue,
                                          fontSize: 33,
                                          fontWeight: FontWeight.w800),
                                    );
                                  },
                                  progressStrokeWidth: 3,
                                  backStrokeWidth: 4,
                                  valueNotifier: _valueNotifier1,
                                  progressColors: const [Colors.blue],
                                ),
                                title: Text(
                                  "Upload",
                                  style: bodyStyle,
                                ),
                                subtitle: Text(
                                  "$randomValue1 mb/s",
                                  style: titleStyle.copyWith(fontSize: 10),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 75,
                          width: 320,
                          decoration: boxDecoration.copyWith(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey.withOpacity(0.03)),
                          child: Center(
                            child: CountryList(
                                imageUrl: widget.imageUrlx,
                                countryName: widget.countryNamex,
                                titleWidget: widget.titleWidgetx,
                                trailingWidget: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Icon(
                                    switchValue == true
                                        ? Icons.done_all_outlined
                                        : Icons.close_outlined,
                                    color: switchValue == true
                                        ? Colors.blue
                                        : Colors.black12,
                                  ),
                                ),
                                onTap: () {}),
                          ),
                        ),
                      )
                    ],
                  ))))),
    );
  }
}
