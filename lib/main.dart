import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/splashscreen.dart';
import 'package:flutterforbeginners2/utils/sharedpref.dart';

void main() async {
  await SharedPrefs().init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const SplashScreen());
  }
}
