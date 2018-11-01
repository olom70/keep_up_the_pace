import 'package:flutter/material.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;
import 'package:keep_up_the_pace/keepupthepacelocalization.dart';

class ActivityFactorButton extends StatefulWidget {
  keepupthepace.Profile profile;
  ActivityFactorButton({Key key, @required this.profile}) : super(key: key);
  @override
  _ActivityFactorButtonState createState() => _ActivityFactorButtonState(profile: profile);
}

class _ActivityFactorButtonState extends State<ActivityFactorButton> {
  keepupthepace.Profile profile;
  _ActivityFactorButtonState({@required this.profile});
  String dropdown1Value;
  @override
  Widget build(BuildContext context) {
    dropdown1Value = profile.displayActivityFactor();
    return Container(
        margin: const EdgeInsets.all(10.0),
        color: const Color(0xFF00FF00),
        width: 300.0,
        height: 48.0,
        child: ListTile(
          title: Text(DemoLocalizations.of(context).activityFactorPromptLabel+DemoLocalizations.of(context).separator),
          trailing: DropdownButton<String>(
            value: dropdown1Value,
            onChanged: (String newValue) {
              setState(() {
                dropdown1Value = newValue;
                profile.setActivityFactorByDisplay(dropdown1Value);
                profile.computeAll();
              });
            },
            items: <String>[profile.displayAnActivityFactorLabel(keepupthepace.ActivityFactor.sedentary),
                            profile.displayAnActivityFactorLabel(keepupthepace.ActivityFactor.lightlyActive),
                            profile.displayAnActivityFactorLabel(keepupthepace.ActivityFactor.moderatelyActive),
                            profile.displayAnActivityFactorLabel(keepupthepace.ActivityFactor.active),
                            profile.displayAnActivityFactorLabel(keepupthepace.ActivityFactor.vigorous),
                            profile.displayAnActivityFactorLabel(keepupthepace.ActivityFactor.vigorouslyActive)]
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


