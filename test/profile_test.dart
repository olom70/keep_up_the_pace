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

  profile.computeRMR(keepupthepace.RmrDates.a1918);
  test('calculate RMR1918 (Calorie)', () {
    expect(profile.rRMRcal, 1375.9863);
  });

  test('calculate RMR (ml)', () {
    expect(profile.rRMRml, 3.1851534722222223);
  });

  compendium.Sports sportsMET = new compendium.Sports();
  test('obtain MET of 15550', (){
    expect(sportsMET.getMetValue(15550), 12.3);
  });

  test('calculate CorrectedMET', () {
    expect(profile.getCorrectedMetValue(12.3), 13.515832243387889);
  });

}
