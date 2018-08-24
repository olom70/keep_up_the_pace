import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/homepage.dart';
import 'package:flutter/rendering.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:keep_up_the_pace/keepupthepacelocalization.dart';

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
      localizationsDelegates: [
        const DemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('fr', '')
      ],
      title: 'KeepUpThePace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}