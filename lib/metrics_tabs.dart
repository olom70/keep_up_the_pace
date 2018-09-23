import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/profile.dart';
import 'package:keep_up_the_pace/compendium.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;
import 'package:keep_up_the_pace/keepupthepacelocalization.dart';

class Metrics_tabs extends StatelessWidget{
  keepupthepace.Profile profile;
  Metrics_tabs({Key key, @required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DemoLocalizations.of(context).metrics_tabsLabel),
      ),
      body: Text('metrics_tabs'),
    );
  }

}