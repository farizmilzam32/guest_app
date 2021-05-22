import 'package:flutter/material.dart';
import 'package:guest_app/screen/first_screen.dart';
import 'package:guest_app/screen/fourth_screen.dart';
import 'package:guest_app/screen/second_screen.dart';
import 'package:guest_app/screen/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: FirstScreen.id, routes: {
      FirstScreen.id: (context) => FirstScreen(),
      ThirdScreen.id: (context) => ThirdScreen(),
      FourthScreen.id: (context) => FourthScreen(),
    });
  }
}
