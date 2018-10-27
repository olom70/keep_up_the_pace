import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;
import 'package:keep_up_the_pace/keepupthepacelocalization.dart';

class HeightIntegerPartButton extends StatefulWidget {
  keepupthepace.Profile profile;
  HeightIntegerPartButton({Key key, @required this.profile}) : super(key: key);
  @override
  _HeightIntegerPartButtonState createState() => _HeightIntegerPartButtonState(profile: profile);
}

class _HeightIntegerPartButtonState extends State<HeightIntegerPartButton> {
  keepupthepace.Profile profile;
  _HeightIntegerPartButtonState({@required this.profile});
  String dropdown1Value;
  @override
  Widget build(BuildContext context) {
    dropdown1Value = profile.displayHeightIntegerPart();
    return Container(
        margin: const EdgeInsets.all(10.0),
        color: const Color(0xFF00FF00),
        width: 200.0,
        height: 48.0,
        child: ListTile(
          title: Text(DemoLocalizations.of(context).heightPromptLabel+DemoLocalizations.of(context).separator),
          trailing: DropdownButton<String>(
            value: dropdown1Value,
            onChanged: (String newValue) {
              setState(() {
                dropdown1Value = newValue;
                profile.heightIntegerPart = int.parse(dropdown1Value);
                profile.computeAll();
              });
            },
            items: <String>['0', '1', '2']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ));
  }
}

class HeightDecimalPartButton extends StatefulWidget {
  keepupthepace.Profile profile;
  HeightDecimalPartButton({Key key, @required this.profile}) : super(key: key);

  @override
  _HeightDecimalPartButtonState createState() => _HeightDecimalPartButtonState(profile: profile);
}

class _HeightDecimalPartButtonState extends State<HeightDecimalPartButton> {
  keepupthepace.Profile profile;
  _HeightDecimalPartButtonState({@required this.profile});

  String dropdown1Value;
  @override
  Widget build(BuildContext context) {
    dropdown1Value = profile.displayHeightDecimalPart();
    return Container(
        margin: const EdgeInsets.all(10.0),
        color: const Color(0xFF00FF00),
        width: 80.0,
        height: 48.0,
        child: ListTile(
//          title: Text(DemoLocalizations.of(context).heightPromptLabel),
          trailing: DropdownButton<String>(
            value: dropdown1Value,
            onChanged: (String newValue) {
              setState(() {
                dropdown1Value = newValue;
                profile.heightDecimalPart = int.parse(dropdown1Value);
                profile.computeAll();
              });
            },
            items: <String>['0', '1',	'2',	'3',	'4', '5',	'6',	'7',	'8',	'9',	'10',	'11',	'12',	'13',	'14',	'15',	'16',	'17',	'18',	'19',	'20',	'21',	'22',	'23',	'24',	'25',	'26',	'27',	'28',	'29',	'30',	'31',	'32',	'33',	'34',	'35',	'36',	'37',	'38',	'39',	'40',	'41',	'42',	'43',	'44',	'45',	'46',	'47',	'48',	'49',	'50',	'51',	'52',	'53',	'54',	'55',	'56',	'57',	'58',	'59',	'60',	'61',	'62',	'63',	'64',	'65',	'66',	'67',	'68',	'69',	'70',	'71',	'72',	'73',	'74',	'75',	'76',	'77',	'78',	'79',	'80',	'81',	'82',	'83',	'84',	'85',	'86',	'87',	'88',	'89',	'90',	'91',	'92',	'93',	'94',	'95',	'96',	'97',	'98',	'99']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ));
  }
}
