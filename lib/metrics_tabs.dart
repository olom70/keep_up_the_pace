import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;
import 'package:keep_up_the_pace/keepupthepacelocalization.dart';
import 'package:keep_up_the_pace/metrics_tab_height.dart';
import 'package:keep_up_the_pace/metrics_tab_weight.dart';

class SettingsTab extends StatelessWidget {
  keepupthepace.Profile profile;
  SettingsTab({Key key, @required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(DemoLocalizations.of(context).profileHeader),
            Text(DemoLocalizations.of(context).separator),
            Text(profile.profileName)
          ],
        ),
        Row(
          children: <Widget>[Text(profile.profileGoal)],
        ),
        Divider(),
        Row(
          children: <Widget>[
            HeightIntegerPartButton(profile: profile),
            Text(DemoLocalizations.of(context).meter),
            HeightDecimalPartButton(profile: profile),
            Text(DemoLocalizations.of(context).centimeter)
          ],
        ),
        Divider(),
        Row(
          children: <Widget>[
            WeightIntegerPartButton(profile: profile),
            Text(DemoLocalizations.of(context).meter),
            WeightDecimalPartButton(profile: profile),
            Text(DemoLocalizations.of(context).centimeter)
          ],
        )
      ],
    );
  }
}

class BmiTab extends StatelessWidget {
  keepupthepace.Profile profile;
  BmiTab({Key key, @required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(DemoLocalizations.of(context).profileHeader),
            Text(DemoLocalizations.of(context).separator),
            Text(profile.profileName)
          ],
        ),
        Row(
          children: <Widget>[Text(profile.profileGoal)],
        ),
        Divider(),
        Row(children: <Widget>[
          Text(DemoLocalizations.of(context).newBmiLabel),
          Text(DemoLocalizations.of(context).separator),
          Text(profile.displayNewBMI()),
        ]),
        Divider(),
        Row(
          children: <Widget>[
            Text(DemoLocalizations.of(context).oldBmiLabel),
            Text(DemoLocalizations.of(context).separator),
            Text(profile.displayOldBMI()),
          ],
        ),
        Divider(),
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
          children: <Widget>[Text('RMR tab')],
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
          children: <Widget>[Text('TEE tab')],
        )
      ],
    );
  }
}

class Metrics_tabs extends StatelessWidget {
  keepupthepace.Profile profile;
  Metrics_tabs({Key key, @required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(DemoLocalizations.of(context).metrics_tabsLabel),
            bottom: TabBar(tabs: [
              Tab(
                text: DemoLocalizations.of(context).settingsLabel,
              ),
              Tab(
                text: DemoLocalizations.of(context).bmiLabel,
              ),
              Tab(
                text: DemoLocalizations.of(context).rmrLabel,
              ),
              Tab(
                text: DemoLocalizations.of(context).tteLabel,
              ),
            ]),
          ),
          body: TabBarView(children: [
            SettingsTab(profile: profile),
            BmiTab(profile: profile),
            RmrTab(profile: profile),
            TeeTab(profile: profile),
          ]),
        ));
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
