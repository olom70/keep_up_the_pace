import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/profile.dart';
import 'package:keep_up_the_pace/compendium.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;
import 'package:keep_up_the_pace/keepupthepacelocalization.dart';

class BmiTab extends StatelessWidget {
  keepupthepace.Profile profile;
  BmiTab({Key key, @required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('BMI tab')
          ],
        )
      ],
    );
  }
}

class RmrTab extends StatelessWidget {
  keepupthepace.Profile profile;
  RmrTab({Key key, @required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('RMR tab')
          ],
        )
      ],
    );
  }
}

class TeeTab extends StatelessWidget {
  keepupthepace.Profile profile;
  TeeTab({Key key, @required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('TEE tab')
          ],
        )
      ],
    );
  }
}



class Metrics_tabs extends StatelessWidget{
  keepupthepace.Profile profile;
  Metrics_tabs({Key key, @required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(DemoLocalizations.of(context).metrics_tabsLabel),
            bottom: TabBar(
                tabs: [
                  Tab(text: DemoLocalizations.of(context).bmiLabel,),
                  Tab(text: DemoLocalizations.of(context).rmrLabel,),
                  Tab(text: DemoLocalizations.of(context).tteLabel,),
                ]
            ),
          ),
          body: TabBarView(
              children: [
                BmiTab(profile: profile),
                RmrTab(profile: profile),
                TeeTab(profile: profile),
              ]
          ),
        )
    );
  }

}



/*
Scaffold(
      appBar: AppBar(
        title: Text(DemoLocalizations.of(context).metrics_tabsLabel),
      ),
      body: Text('metrics_tabs'),
    );
 */