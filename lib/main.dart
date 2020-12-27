import 'package:MeroPaisa/constants/colorConstant.dart';
import 'package:MeroPaisa/screens/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mero Paisa',
      theme: ThemeData(
        accentColor: kAccentColor,
        backgroundColor: kBackgroundColor
      ),
      home: MyHomePage(title: 'Mero Paisa'),
    );
  }
}
