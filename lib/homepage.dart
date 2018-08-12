import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/metrics.dart';
import 'package:keep_up_the_pace/profile.dart';
import 'package:keep_up_the_pace/compendium.dart';

enum _mainPanels {
  Metrics,
  Profile,
  Compendium
} // list of all the expansionpanels available on the main screen

class MyItem {
  MyItem(
      {this.isExpanded: false,
      this.header,
      this.description,
      this.longDescription,
      this.whereTo});

  bool isExpanded;
  final String header;
  final String description;
  final String longDescription;
  final _mainPanels whereTo;
}

class MainBodyElements extends StatefulWidget {
  @override
  MainBodyElementsState createState() => new MainBodyElementsState();
}

class MainBodyElementsState extends State<MainBodyElements> {
  List<MyItem> _items = <MyItem>[
    MyItem(
        header: 'Metrics',
        description: 'Enter facts, know your state',
        longDescription:
            'Set up the current profile with gender, age, weight, size, etc. Visualize several metrics relative to you.',
        whereTo: _mainPanels.Metrics),
    MyItem(
        header: 'Profile',
        description: 'Manage profiles',
        longDescription: 'Rename, copy, change goal, etc.',
        whereTo: _mainPanels.Profile),
    MyItem(
        header: 'Compendium',
        description: 'Compendium of physical activities',
        longDescription:
            'Explore thousands of activities and their energy consumption',
        whereTo: _mainPanels.Compendium),
  ];

  whereTo(_mainPanels whichPanel) {
    switch (whichPanel.toString()) {
      case 'Metrics':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Metrics()),
        );
        break;
      case 'Profile':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile()),
        );
        break;
      case 'Compendium':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Compendium()),
        );
        break;
      default:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Metrics()),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(children: [
      ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _items[index].isExpanded = !_items[index].isExpanded;
          });
        },
        children: _items.map((MyItem item) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Container(
                child: Row(
                  children: <Widget>[
                    Text(item.header),
                    Text(item.description),
                  ],
                ),
              );
            },
            isExpanded: item.isExpanded,
            body: Container(
              child: Column(
                children: <Widget>[
                  Text(item.longDescription),
                  RaisedButton(
                      onPressed: () {
                        switch (item.whereTo.toString()) {
                          case 'Metrics':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Metrics()),
                            );
                            break;
                          case 'Profile':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()),
                            );
                            break;
                          case 'Compendium':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Compendium()),
                            );
                            break;
                          default:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Metrics()),
                            );
                        }
                      },
                      child: const Text('Go !',
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500)))
                ],
              ),
            ),
          );
        }).toList(),
      )
    ]);
  }
}

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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Main'),
      ),
      drawer: MainDrawer(),
      body: MainBodyElements(),
    );
  }
}
