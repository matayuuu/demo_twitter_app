import 'package:demo_0510/top_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task管理アプリ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopScreen(),
    );
  }
}
