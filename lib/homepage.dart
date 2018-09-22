import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/metrics.dart';
import 'package:keep_up_the_pace/profile.dart';
import 'package:keep_up_the_pace/compendium.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;
import 'package:keep_up_the_pace/keepupthepacelocalization.dart';

class MainDrawer extends StatelessWidget {
  MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text('Current Profile : Clode'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text('Switch Profile'),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('BMI'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('RMR'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('TTE'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Ratio'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Fat'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  keepupthepace.Profile profile;
  MyHomePage({Key key, @required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DemoLocalizations.of(context).mainTitle),
      ),
      drawer: MainDrawer(),
      body: GridView.count(
          crossAxisCount: 1,
          padding: EdgeInsets.all(16.0),
          childAspectRatio: 4.0 / 1.0,
        children: <Widget>[
          Card(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(DemoLocalizations.of(context).metricsHeader),
                  SizedBox(height: 8.0,),
                  Text(DemoLocalizations.of(context).metricsDescription),
                  SizedBox(height: 8.0,),
                  Text(DemoLocalizations.of(context).metricsLongDescription),
                  RaisedButton(onPressed: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Metrics(profile: profile,)),
                      );
                    },
                    child: Text(DemoLocalizations.of(context).mainButtonLabel),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(DemoLocalizations.of(context).profileHeader),
                  SizedBox(height: 8.0,),
                  Text(DemoLocalizations.of(context).profileDescription),
                  SizedBox(height: 8.0,),
                  Text(DemoLocalizations.of(context).profileLongDescription),
                  RaisedButton(onPressed: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile()),
                    );
                  },
                    child: Text(DemoLocalizations.of(context).mainButtonLabel),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(DemoLocalizations.of(context).compendiumHeader),
                  SizedBox(height: 8.0,),
                  Text(DemoLocalizations.of(context).compendiumDescription),
                  SizedBox(height: 8.0,),
                  Text(DemoLocalizations.of(context).compendiumLongDescription),
                  RaisedButton(onPressed: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Compendium()),
                    );
                  },
                    child: Text(DemoLocalizations.of(context).mainButtonLabel),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
