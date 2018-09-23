import 'package:test/test.dart';
import 'package:keep_up_the_pace/KeepUpThePace.dart' as keepupthepace;
import 'package:keep_up_the_pace/CompendiumOfPhysicalActivities.dart' as compendium;


void main() {

  // corrected MET
  // Female / Normal Weight
  // 60 kg, 168 cm
  // 35 ans
  keepupthepace.Profile profile = new keepupthepace.Profile('test')
  ..weight = 60.0
  ..heightIntegerPart = 1
  ..heightDecimalPart = 68
  ..metricChoice = 'iso'
  ..age = 35
  ..gender = 'W';

  profile.computeRMR(keepupthepace.RmrDates.a1990);
  test('calculate RMR1990 (Calorie)', () {
    expect(profile.rRMRcal, 1314);
  });

}
