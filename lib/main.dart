import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_bmi/ResultPage.dart';
import 'InputPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: InputPage(),
    initialRoute: "/first",
    routes: <String, WidgetBuilder>{
      "/first": (_) => InputPage(),
      "/result": (_) => ResultPage(),
    },
    theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,
        textTheme: TextTheme(bodyText2: TextStyle(color: Color(0xFFFFFFFF)))),
  ));
}
