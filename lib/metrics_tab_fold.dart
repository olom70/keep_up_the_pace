import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;
import 'package:keep_up_the_pace/keepupthepacelocalization.dart';


class FoldButton extends StatefulWidget {
  keepupthepace.Profile profile;
  int foldNumber;
  FoldButton({Key key, @required this.profile, @required this.foldNumber}) : super(key: key);

  @override
  _FoldButtonState createState() => _FoldButtonState(profile: profile, foldNumber: foldNumber);
}

class _FoldButtonState extends State<FoldButton> {
  keepupthepace.Profile profile;
  int foldNumber;
  _FoldButtonState({@required this.profile, this.foldNumber});

  String dropdown1Value;
  @override
  Widget build(BuildContext context) {
    getFoldValue(foldNumber);
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
                setFoldValue(foldNumber);
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

  setFoldValue(int foldNumber) {
    switch(foldNumber) {
      case 1 :
        if (profile.displayGenderSign() == profile.femaleSign) {profile.triceps = int.parse(dropdown1Value);}
        if (profile.displayGenderSign() == profile.maleSign) {profile.chest = int.parse(dropdown1Value);}
        break;
      case 2 :
        if (profile.displayGenderSign() == profile.femaleSign) {profile.suprailium = int.parse(dropdown1Value);}
        if (profile.displayGenderSign() == profile.maleSign) {profile.abdomen = int.parse(dropdown1Value);}
        break;
      case 3 :
        profile.thigh = int.parse(dropdown1Value);
        break;
      default :
        break;
    }
  }

  getFoldValue(int foldNumber) {
    switch(foldNumber) {
      case 1 :
        if (profile.displayGenderSign() == profile.femaleSign) {dropdown1Value =  profile.displayTriceps();}
        if (profile.displayGenderSign() == profile.maleSign) {dropdown1Value =  profile.displayChest();}
        break;
      case 2 :
        if (profile.displayGenderSign() == profile.femaleSign) {dropdown1Value = profile.displaySuprailium();}
        if (profile.displayGenderSign() == profile.maleSign) {dropdown1Value = profile.displayAbdomen();}
        break;
      case 3 :
        dropdown1Value = profile.displayThigh();
        break;
    }
  }

}
