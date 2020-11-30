import 'package:flutter/material.dart';
import 'package:uiux1_demo/screens/dashboard.dart';
import 'package:uiux1_demo/screens/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UIUX Demo",
      initialRoute: '/',
      routes: {
        '/' : (context) => Dashboard(),
        '/taskScreen' : (context) => TaskScreen(),
      },
    );
  }
}
