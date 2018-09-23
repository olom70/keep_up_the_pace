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
  ..metricChoice = keepupthepace.MetricChoice.iso
  ..age = 35
  ..gender = keepupthepace.Gender.Female;

  profile.computeRMR(keepupthepace.RmrDates.a1984);
  test('calculate RMR1984 (Calorie)', () {
    expect(profile.rRMRcal, 1371.327);
  });

}
