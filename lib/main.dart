import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpn/material/material.dart';
import 'package:vpn/routes/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.white));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    theme();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: myroutes,
    );
  }

  ThemeData theme() {
    return ThemeData(
        primaryColor: primaryclr,
        scaffoldBackgroundColor: backgroundclr,
        textTheme: TextTheme(
            bodyMedium: TextStyle(
                fontSize: 18, color: Colors.transparent.withOpacity(0.5))));
  }
}
