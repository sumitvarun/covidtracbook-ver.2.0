import 'package:covidtracbook/screens/homepage_screen.dart';
import 'package:covidtracbook/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(title: 'Covidtracbook', home: SplashScreen());
  }
}
