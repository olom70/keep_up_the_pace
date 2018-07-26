import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;


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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: Text('Current Profile : Clode'),
                    onTap: () {Navigator.pop(context);},
                    subtitle: Text('Usual business week'),
                    isThreeLine: false,
                  ),
                  ListTile(
                    title: Text('Switch Profile'),
                    onTap: () {Navigator.pop(context);},
                    subtitle: Text('Change to another plan'),
                    isThreeLine: false,
                  ),
                ],
              )
          ),
          ListTile(
            title: Text('BMI'),
            onTap: () {Navigator.pop(context);},
          ),
          ListTile(
            title: Text('RMR'),
            onTap: () {Navigator.pop(context);},
          ),
          ListTile(
            title: Text('TTE'),
            onTap: () {Navigator.pop(context);},
          ),
          ListTile(
            title: Text('Ratio'),
            onTap: () {Navigator.pop(context);},
          ),
          ListTile(
            title: Text('Fat'),
            onTap: () {Navigator.pop(context);},
          ),
          Divider(),
          ListTile(
            title: Text('Settings'),
            onTap: () {Navigator.pop(context);},
          ),

        ],
      ),

    );
  }
}



class MyHomePage extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Main'),
      ),
      drawer: MainDrawer(),
      body: Text('not yet implemeted'),
    );
  }
}
