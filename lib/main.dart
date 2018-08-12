import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/homepage.dart';
import 'package:flutter/rendering.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;

void main() {
  debugPaintSizeEnabled=false; // debug layout

  keepupthepace.Profile profile = new keepupthepace.Profile('test')
    ..weight = 67.0
    ..heightIntegerPart = 1
    ..heightDecimalPart = 72
    ..metricChoice = 'iso'
    ..age = 48
    ..gender = 'M';


  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'KeepUpThePace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}