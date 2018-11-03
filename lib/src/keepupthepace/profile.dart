import 'dart:io';
import 'dart:math';
import 'phrasebook.dart' as phrasebook;

enum ActivityFactor {sedentary, lightlyActive, active, moderatelyActive, vigorous, vigorouslyActive}
enum RmrDates {a1918, a1984, a1990}
enum MetricChoice {iso, imperial}
enum Gender {Female, Male}

//
// Exception handling
//

class ProfileNotEnoughArguments implements Exception {
  String rootCause;
  ProfileNotEnoughArguments (this.rootCause);
  String errMsg() => phrasebook.PhraseBook.notEnoughArguments(this.rootCause);
}

class ProfileNotAProperValue implements Exception {
  //
  String property;
  ProfileNotAProperValue (this.property);
String errMsg() => phrasebook.PhraseBook.notAProperValue(this.property);

}

//
// class to manage profiles
//
class Profile {

  final  maleSign = '♂';
  final femaleSign = '♀';
  //facts
    String profileName;
  String fileName;
  String profileGoal;
  MetricChoice metricChoice;
  String defaultProfile;
  double weight;
  int weightIntegerPart;
  int weightDecimalPart;
  int heightIntegerPart;
  int heightDecimalPart;
  int age;
  int chest;
  int abdomen;
  int thigh;
  int triceps;
  int suprailium;
  Gender gender;
  ActivityFactor activityFactor;
  // infered
  double bBMI; // classic way to calculate it
  double nBMI; // new way to calculate it
  double bBMR;
  double rRMRcal;
  double rRMRml;
  double hHBE;
  double quadraticBodyDensity;
  double exponentialBodyDensity;
  double quadraticFatPercentage;
  double exponentialFatPercentage;

// constructor
  Profile (String profilename) {
    this.profileName = (profilename != null) ? profilename : ' ';
    profileGoal = (profilename != null) ? profilename : ' ';
    fileName = profileName.trim().toLowerCase().replaceAll(new RegExp(r'[];\\/:*?\<>|&'), ' ');
  }

  String displayHeightIntegerPart() {
    return (heightIntegerPart != null) ? heightIntegerPart.toString() : '0';
  }

  String displayHeightDecimalPart() {
    return (heightDecimalPart != null) ? heightDecimalPart.toString() : '0';
  }

  String displayWeight() {
    return (weight != null) ? weight.toString() : '0';
  }

  String displayWeightIntegerPart() {
    return (weightIntegerPart != null) ? weightIntegerPart.toString() : '0';
  }

  String displayWeightDecimalPart() {
    return (weightDecimalPart != null) ? weightDecimalPart.toString() : '0';
  }

  String displayAge() {
    return (age != null) ? age.toString() : '0';
  }

  String displayGenderWord() {
    switch(gender) {
      case Gender.Female:
        return phrasebook.PhraseBook.femaleLabel();
        break;
      case Gender.Male:
        return phrasebook.PhraseBook.maleLabel();
        break;
      default:
        return phrasebook.PhraseBook.notDefinedLabel();
    }
  }

  String displayGenderSign() {
    switch(gender) {
      case Gender.Female:
        return femaleSign;
        break;
      case Gender.Male:
        return maleSign;
        break;
      default:
        return femaleSign;
    }
  }

  setGenderBySign(String genderSign) {
    if (genderSign == maleSign) {gender = Gender.Male;};
    if (genderSign == femaleSign) {gender = Gender.Female;};
  }

  String displayActivityFactor() {
    switch(activityFactor) {
      case ActivityFactor.sedentary :
        return phrasebook.PhraseBook.sedentaryLabel();
        break;
      case ActivityFactor.lightlyActive :
        return phrasebook.PhraseBook.lightlyActiveLabel();
        break;
      case ActivityFactor.moderatelyActive :
        return phrasebook.PhraseBook.moderatelyActiveLabel();
        break;
      case ActivityFactor.active :
        return phrasebook.PhraseBook.activeLabel();
      case ActivityFactor.vigorous :
        return phrasebook.PhraseBook.vigorousLabel();
        break;
      case ActivityFactor.vigorouslyActive :
        return phrasebook.PhraseBook.vigorouslyActiveLabel();
        break;
      default :
        return phrasebook.PhraseBook.sedentaryLabel();
    }
  }

  String displayAnActivityFactorLabel(ActivityFactor af) {
    switch(af) {
      case ActivityFactor.sedentary :
        return phrasebook.PhraseBook.sedentaryLabel();
        break;
      case ActivityFactor.lightlyActive :
        return phrasebook.PhraseBook.lightlyActiveLabel();
        break;
      case ActivityFactor.moderatelyActive :
        return phrasebook.PhraseBook.moderatelyActiveLabel();
        break;
      case ActivityFactor.active :
        return phrasebook.PhraseBook.activeLabel();
      case ActivityFactor.vigorous :
        return phrasebook.PhraseBook.vigorousLabel();
        break;
      case ActivityFactor.vigorouslyActive :
        return phrasebook.PhraseBook.vigorouslyActiveLabel();
        break;
      default :
        return phrasebook.PhraseBook.sedentaryLabel();
    }
  }

  setActivityFactorByDisplay(String activityFactorDisplay) {
      if (phrasebook.PhraseBook.sedentaryLabel() == activityFactorDisplay) { activityFactor = ActivityFactor.sedentary;};
      if (phrasebook.PhraseBook.lightlyActiveLabel() == activityFactorDisplay) { activityFactor = ActivityFactor.lightlyActive;};
      if (phrasebook.PhraseBook.moderatelyActiveLabel() == activityFactorDisplay) { activityFactor = ActivityFactor.moderatelyActive;};
      if (phrasebook.PhraseBook.activeLabel() == activityFactorDisplay) { activityFactor = ActivityFactor.active;};
      if (phrasebook.PhraseBook.vigorousLabel() == activityFactorDisplay) { activityFactor = ActivityFactor.vigorous;};
      if (phrasebook.PhraseBook.vigorouslyActiveLabel() == activityFactorDisplay) { activityFactor = ActivityFactor.vigorouslyActive;};
    }

  String displayChest() {
    return (chest != null) ? chest.toString() : '0';
  }

  String displayTriceps() {
    return (triceps != null) ? triceps.toString() : '0';
  }

  String displayAbdomen() {
    return (abdomen != null) ? abdomen.toString() : '0';
  }

  String displaySuprailium() {
    return (suprailium != null) ? suprailium.toString() : '0';
  }

  String displayThigh() {
    return (thigh != null) ? thigh.toString() : '0';
  }



  computeWeight() {
    (weightIntegerPart == null || weightDecimalPart == null) ? weight = null : weight = weightIntegerPart + (weightDecimalPart/100);
  }

  computeBMI() {
    // classic way
    // http://www.bmi-calculator.net/bmi-formula.php
    // Imperial : BMI = (Weight in Pounds / (Height in inches x Height in inches)) x 703
    // ISO : BMI = (Weight in Kilograms / (Height in Meters x Height in Meters))
    //
    // new way
    // https://www.medicalnewstoday.com/articles/255712.php
    // ISO: BMI = 1.3 x weight (kg) / height (m)2.5
    // or
    // imperial : BMI = 5734*weight(lb)/height(in)2.5
    computeWeight();
    if ((weight == null) || (heightIntegerPart == null) || (heightDecimalPart == null) || (metricChoice == null)) {
      throw new ProfileNotEnoughArguments('$weight $heightIntegerPart $heightDecimalPart ' + metricChoice.toString());
  } else {
      switch(metricChoice) {
        case MetricChoice.imperial:
          bBMI = 10000*(weight / pow((heightIntegerPart*12+heightDecimalPart),2))*703;
          nBMI = 5734*weight / pow(heightIntegerPart*12+heightDecimalPart,2.5);
          break;
        case MetricChoice.iso:
          bBMI = 10000*(weight / pow((heightIntegerPart*100+heightDecimalPart),2));
          nBMI = 100000*(weight*1.3 / pow((heightIntegerPart*100+heightDecimalPart),2.5));
          break;
        default:
          throw new ProfileNotAProperValue('metricChoice : ' + metricChoice.toString());
      }
    }
  }

  String displayNewBMI() {
    try {
      computeBMI();
      return nBMI.round().toString();
    }
    catch(e) {
      return phrasebook.PhraseBook.notEnoughData();
    }
  }

  String displayOldBMI() {
    try {
      computeBMI();
      return bBMI.round().toString();
    }
    catch(e) {
      return phrasebook.PhraseBook.notEnoughData();
    }
  }

  double computeRMRml(double rRMRcal, double weight) {
    // To convert kilocalories per day obtained from the Harris Benedict equation2 to ml.kg-1.min-1, the following formula is used.
    //     kcal.day-1/1440 = kcal.min-1; kcal.min-1/5 = L.min-1; L.min-1/(weight kg)x1000 = ml.kg-1.min-1
    double rRMRml;
    rRMRml = (rRMRcal / 1440 / 5 / weight)*1000;
    return rRMRml;
  }

  computeRMR(RmrDates version) {
    // RMR =  resting metabolic rate
    // https://sites.google.com/site/compendiumofphysicalactivities/corrected-mets
    // https://en.wikipedia.org/wiki/Harris–Benedict_equation
    // https://en.wikipedia.org/wiki/Metabolic_equivalent
        computeWeight();
        if ((weight == null) || (heightIntegerPart == null) || (heightDecimalPart == null) || (metricChoice == null) || (age == null) || (gender == null)) {
          throw new ProfileNotEnoughArguments('$weight $heightIntegerPart $heightDecimalPart $metricChoice $age $gender');
        } else {
          switch(metricChoice) {
            case MetricChoice.imperial:
              switch(gender) {
                case Gender.Female:
                  switch(version) {
                    case RmrDates.a1918:
                      rRMRcal = 655.0955 + (9.5634*(weight*0.453592)) + (1.8496*((heightIntegerPart*12+heightDecimalPart)*0.0508)) - (4.6756*age);
                      rRMRml = computeRMRml(rRMRcal, weight);
                      break;
                    case RmrDates.a1984:
                      rRMRcal = 447.593 + (9.247*(weight*0.453592)) + (3.098*((heightIntegerPart*12+heightDecimalPart)*0.0508)) - (4.330*age);
                      rRMRml = computeRMRml(rRMRcal, weight);
                      break;
                    case RmrDates.a1990:
                      rRMRcal = -161 + (10*(weight*0.453592)) + (6.25*((heightIntegerPart*12+heightDecimalPart)*0.0508)) - (5*age);
                      rRMRml = computeRMRml(rRMRcal, weight);
                      break;
                    default:
                      throw new ProfileNotAProperValue('version : $version');
                  }
                  break;
                case Gender.Male:
                switch(version) {
                    case RmrDates.a1918:
                      rRMRcal = 66.4730 + (13.7516*(weight*0.453592)) + (5.033*((heightIntegerPart*12+heightDecimalPart)*0.0508)) - (6.7550*age);
                      rRMRml = computeRMRml(rRMRcal, weight);
                      break;
                    case RmrDates.a1984:
                      rRMRcal = 88.362 + (13.397*(weight*0.453592)) + (4.799*((heightIntegerPart*12+heightDecimalPart)*0.0508)) - (5.677*age);
                      rRMRml = computeRMRml(rRMRcal, weight);
                      break;
                    case RmrDates.a1990:
                      rRMRcal = 5 + (10*(weight*0.453592)) + (6.25*((heightIntegerPart*12+heightDecimalPart)*0.0508)) - (5*age);
                      rRMRml = computeRMRml(rRMRcal, weight);
                      break;
                    default:
                      throw new ProfileNotAProperValue('version : $version');
                  }
                  break;
                default:
                  throw new ProfileNotAProperValue('gender : $gender');
              }
              break;
            case MetricChoice.iso:
            switch(gender) {
              case Gender.Female:
              switch(version) {
                  case RmrDates.a1918:
                    rRMRcal = 655.0955 + (9.5634*weight) + (1.8496*(heightIntegerPart*100+heightDecimalPart)) - (4.6756*age);
                    rRMRml = computeRMRml(rRMRcal, weight);
                    break;
                  case RmrDates.a1984:
                    rRMRcal = 447.593 + (9.247*weight) + (3.098*(heightIntegerPart*100+heightDecimalPart)) - (4.330*age);
                    rRMRml = computeRMRml(rRMRcal, weight);
                    break;
                  case RmrDates.a1990:
                    rRMRcal = -161 + (10*weight) + (6.25*(heightIntegerPart*100+heightDecimalPart)) - (5*age);
                    rRMRml = computeRMRml(rRMRcal, weight);
                    break;
                  default:
                    throw new ProfileNotAProperValue('version : $version');
                }
                break;
              case Gender.Male:
              switch(version) {
                  case RmrDates.a1918:
                    rRMRcal = 66.4730 + (13.7516*weight) + (5.0033*(heightIntegerPart*100+heightDecimalPart)) - (6.7550*age);
                    rRMRml = computeRMRml(rRMRcal, weight);
                    break;
                  case RmrDates.a1984:
                    rRMRcal = 88.362 + (13.397*weight) + (4.799*(heightIntegerPart*100+heightDecimalPart)) - (5.677*age);
                    rRMRml = computeRMRml(rRMRcal, weight);
                    break;
                  case RmrDates.a1990:
                    rRMRcal = 5 + (10*weight) + (6.25*(heightIntegerPart*100+heightDecimalPart)) - (5*age);
                    rRMRml = computeRMRml(rRMRcal, weight);
                    break;
                  default:
                    throw new ProfileNotAProperValue('version : $version');
                }
                break;
              default:
                  throw new ProfileNotAProperValue('gender : $gender');
              }
              break;
            default:
              throw new ProfileNotAProperValue('metricChoice : $metricChoice');
          }
       }
  }

  double getCorrectedMetValue (double metValue) {
    double correctedMetValue;
    if ((metValue == null) || (rRMRml == null)) {
      throw new ProfileNotAProperValue('metValue/RMRml : $metValue/$rRMRml');
    } else {
      correctedMetValue = metValue * (3.5 / rRMRml);
    }
    return correctedMetValue;
  }

  String displayRMR(RmrDates version) {
    try {
      computeRMR(version);
      return rRMRcal.round().toString();
    }
    catch(e) {
      return phrasebook.PhraseBook.notEnoughData();
    }
  }


  computeHBE() {
    //http://www.bmi-calculator.net/bmr-calculator/harris-benedict-equation/
    //If you are sedentary (little or no exercise) : Calorie-Calculation = BMR x 1.2
    //If you are lightly active (light exercise/sports 1-3 days/week) : Calorie-Calculation = BMR x 1.375
    //If you are moderatetely active (moderate exercise/sports 3-5 days/week) : Calorie-Calculation = BMR x 1.55
    //If you are very active (hard exercise/sports 6-7 days a week) : Calorie-Calculation = BMR x 1.725
    //If you are extra active (very hard exercise/sports & physical job or 2x training) : Calorie-Calculation = BMR x 1.9
    if ((rRMRcal == null) || (activityFactor == null)) {
      throw new ProfileNotEnoughArguments(rRMRcal.toString() + ':' + activityFactor.toString());
    } else {
      switch(activityFactor) {
        case ActivityFactor.sedentary:
          hHBE = rRMRcal * 1.4;
          break;
        case ActivityFactor.lightlyActive:
          hHBE = rRMRcal * 1.69;
          break;
        case ActivityFactor.moderatelyActive:
          hHBE = rRMRcal * 1.70;
          break;
        case ActivityFactor.active:
          hHBE = rRMRcal * 1.99;
          break;
        case ActivityFactor.vigorous:
          hHBE = rRMRcal * 2.0;
          break;
        case ActivityFactor.vigorouslyActive:
          hHBE = rRMRcal * 2.4;
          break;
        default:
          throw new ProfileNotAProperValue('activityFactor : ' + activityFactor.toString());
      }
    }
  }

  String displayHBE() {
    try {
      computeHBE();
      return hHBE.round().toString();
    }
    catch(e) {
      return phrasebook.PhraseBook.notEnoughData();
    }
  }

  computeFat() {
    /*
quadratic formula :	BD = a − b ⋅ S + c ⋅ S² − d ⋅ age

    man
    BD :	Body density
    a :	1.10938
    b :	0.0008267
    S :	"sum of skinfolds in mm for chest, abdomen and thigh"
    c :	0.0000016
    d :	0.0002574
    age :	year

    woman
    BD :	Body density
    a :	1.0994921
    b :	0.0009929
    S :	"sum of skinfolds in mm
    for triceps, thigh, and suprailium"
    c :	0.0000023
    d :	0.0001392
    age :	year

exponential formula :	BD = exp(a − b ⋅ Sk − c ⋅ age)
  man
  BD :	body density
  a :	0.109648
  b :	0.0021745
  k :	0.747
  c :	0.0002516
  S :	"sum of skinfolds in mm for chest, abdomen and thigh"

  woman
  BD :	body density
  a :	0.120936
  b :	0.0084087
  k :	0.532
  c :	0.0001178
  S :	"sum of skinfolds in mm for triceps, thigh, and suprailium"

  To find out the approximate body fat percentage, the body density score must be plugged into another formula. The Siri equation, which was designed to estimate body fat percent from body density, is:
[(4.95/body density) - 4.5] x 100 = percent body fat

*/
   switch(gender) {
     case(Gender.Male):
       (triceps == null) || (abdomen == null) || (thigh = null) || (age == null)
           ? throw new ProfileNotEnoughArguments('$triceps $abdomen $thigh')
           : quadraticBodyDensity =  (1.10938 - 0.0008267 * (triceps+abdomen+thigh) + 0.0000016 * pow((triceps+abdomen+thigh),2)-0.0002574*age);
             exponentialBodyDensity = exp(0.109648-0.0021745*pow((triceps+abdomen+thigh),0.747)-0.0002516*age);
     break;
     case(Gender.Female):
       (triceps == null) || (suprailium == null) || (thigh = null) || (age == null)
           ? throw new ProfileNotEnoughArguments('$triceps $suprailium $thigh')
           : quadraticBodyDensity =  (1.0994921 - 0.0009929 * (triceps+suprailium+thigh) + 0.0000023 * pow((triceps+suprailium+thigh),2)-0.0001392*age);
             exponentialBodyDensity = exp(0.120936-0.0084087*pow((triceps+suprailium+thigh),0.532)-0.0001178*age);
     break;
     default:
       throw new ProfileNotAProperValue('gender : $gender');
    }

    quadraticBodyDensity == null ? null : quadraticFatPercentage = ((4.95/quadraticBodyDensity)-4.5)*100; exponentialFatPercentage = ((4.95/exponentialBodyDensity)-4.5)*100;

  }

    computeAll() {
      // infering the metrics of the current profile
      try {
        computeBMI();
      }
      catch(e) {
      }

      try {
        computeHBE();
      }
      catch(e) {
      }

      try {
        computeFat();
      }
      catch(e) {
      }
    }

  saveFile() {
    new File(profileName).exists();
  }


  verify() {
    print('Hi my name is : $profileName\n');
    print('filename is : $fileName\n');
    print('Weight :$weight');
    print('old BMI : $bBMI');
    print('new BMI : $nBMI');
    print('BMR : $bBMR');
    print('HBE : $hHBE');
  }

}
