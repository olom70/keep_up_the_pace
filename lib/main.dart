import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/homepage.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled=false;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'KeepUpThePace',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}