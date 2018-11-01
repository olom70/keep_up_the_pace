import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;
import 'package:keep_up_the_pace/keepupthepacelocalization.dart';

// Version Bouton Radio

class ActivityFactorChoice extends StatefulWidget {
  keepupthepace.Profile profile;
  ActivityFactorChoice({Key key, @required this.profile}) : super(key: key);
  @override
  _ActivityFactorChoice createState() => _ActivityFactorChoice(profile: profile);
}


class _ActivityFactorChoice extends State<ActivityFactorChoice> {
  keepupthepace.Profile profile;
  keepupthepace.ActivityFactor radioValue;
  _ActivityFactorChoice({@required this.profile});

  @override
  Widget build(BuildContext context) {
    radioValue = profile.activityFactor;
    return Container(
//        child: Align(
//        alignment: const Alignment(0.0, 0.0),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            //children: <Widget>[ //
              //Row( //
                  //mainAxisSize: MainAxisSize.min, //
                  children: <Widget>[
                    RadioListTile<keepupthepace.ActivityFactor>(
                        title: Text(profile.displayAnActivityFactorLabel(keepupthepace.ActivityFactor.sedentary)),
                        value: keepupthepace.ActivityFactor.sedentary,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged
                    ),
                    RadioListTile<keepupthepace.ActivityFactor>(
                        title: Text(profile.displayAnActivityFactorLabel(keepupthepace.ActivityFactor.lightlyActive)),
                        value: keepupthepace.ActivityFactor.lightlyActive,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged
                    ),
                    RadioListTile<keepupthepace.ActivityFactor>(
                        title: Text(profile.displayAnActivityFactorLabel(keepupthepace.ActivityFactor.moderatelyActive)),
                        value: keepupthepace.ActivityFactor.moderatelyActive,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged
                    ),
                    RadioListTile<keepupthepace.ActivityFactor>(
                        title: Text(profile.displayAnActivityFactorLabel(keepupthepace.ActivityFactor.active)),
                        value: keepupthepace.ActivityFactor.active,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged
                    ),
                    RadioListTile<keepupthepace.ActivityFactor>(
                        title: Text(profile.displayAnActivityFactorLabel(keepupthepace.ActivityFactor.vigorous)),
                        value: keepupthepace.ActivityFactor.vigorous,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged
                    ),
                    RadioListTile<keepupthepace.ActivityFactor>(
                        title: Text(profile.displayAnActivityFactorLabel(keepupthepace.ActivityFactor.vigorouslyActive)),
                        value: keepupthepace.ActivityFactor.vigorouslyActive,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged
                    )
                  ]
              //),
           // ]
 //       )
      )
    );
  }



  void handleRadioValueChanged(keepupthepace.ActivityFactor value) {
    setState(() {
      radioValue = value;
      profile.activityFactor = radioValue;
    });
  }

}

