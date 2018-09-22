import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/profile.dart';
import 'package:keep_up_the_pace/compendium.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;
import 'package:keep_up_the_pace/keepupthepacelocalization.dart';


class Metrics extends StatelessWidget {
  keepupthepace.Profile profile;
  Metrics({Key key, @required this.profile}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Metrics'),
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
                  profile.nBMI.round().toString(),
                  style: TextStyle(fontSize: 56.0),
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
                  profile.rRMRcal.round().toString(),
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
                Text(
                  profile.hHBE == null ? 'not enough data' : profile.hHBE.round().toString(),
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