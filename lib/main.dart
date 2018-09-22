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
    ..gender = 'M'
    ..activityFactor = keepupthepace.ActivityFactor.lightlyActive
    ..computeBMI()
    ..computeRMR(keepupthepace.RmrDates.a1990)
    ..computeHBE();



  runApp(new MyApp(profile: profile));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  keepupthepace.Profile profile;
  MyApp({Key key, @required this.profile}) : super(key: key);
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
      home: MyHomePage(profile: profile,),
    );
  }
}