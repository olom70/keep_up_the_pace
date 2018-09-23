import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/profile.dart';
import 'package:keep_up_the_pace/compendium.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;
import 'package:keep_up_the_pace/keepupthepacelocalization.dart';
import 'package:keep_up_the_pace/metrics_tabs.dart';


class Metrics extends StatelessWidget {
  keepupthepace.Profile profile;
  Metrics({Key key, @required this.profile}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DemoLocalizations.of(context).metricsLabel),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 2.0 / 2.0,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  DemoLocalizations.of(context).bmiLabel,
                  style: TextStyle(fontSize: 56.0,),
                ),
                Text(
                  profile.displayBMI(),
                  style: TextStyle(fontSize: 56.0),
                ),
                RaisedButton(onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Metrics_tabs(profile: profile,)),
                  );
                },
                  child: Text(DemoLocalizations.of(context).metricsButtonLabel),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  DemoLocalizations.of(context).rmrLabel,
                  style: TextStyle(fontSize: 56.0,),
                ),
                Text(
                  profile.displayRMR(keepupthepace.RmrDates.a1990),
                  style: TextStyle(fontSize: 56.0),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  DemoLocalizations.of(context).tteLabel,
                  style: TextStyle(fontSize: 56.0,),
                ),
                Text(profile.displayHBE()
                  ,
                  style: TextStyle(fontSize: 56.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}