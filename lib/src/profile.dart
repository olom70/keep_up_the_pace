import 'dart:io';
import 'dart:math';
//
// Exception handling
//
class ProfileNotEnoughArguments implements Exception {
  String rootCause = 'no metric provided';
  ProfileNotEnoughArguments (String argument) {
    rootCause = argument;
  }
  String errMsg() => 'Some metrics are missing ($rootCause). Check that all the required values are initialized.';
}

class ProfileNotAProperValue implements Exception {
  String property = 'no property provided';
  ProfileNotAProperValue (String argument) {
    property = argument;
  }
  String errMsg() => 'One of the metrics ($property) has not an authorized value. Checks the values of all the metrics';
}

// class to manage ap profile
class Profile {

  //facts
  String profileName;
  String fileName;
  String profileGoal;
  String metricChoice;
  String defaultProfile;
  int weight;
  int heightIntegerPart;
  int heightDecimalPart;
  int age;
  double wrist;
  double forearm;
  double waist;
  double hips;
  String gender;
  String activityFactor;
  // infered
  double bBMI; // classic way to calculate it
  double nBMI; // new way to calculate it
  double bBMR;
  double hHBE;
  double fatPercentage;
  double bodyFatWeight;
  double leanBodyMass;
  double ratio;


// constructor
  Profile (String profilename) {
    this.profileName = profilename;
    fileName = profileName.trim().toLowerCase().replaceAll(new RegExp(r'[];\\/:*?\<>|&'), ' ');
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
    if ((weight == null) || (heightIntegerPart == null) || (heightDecimalPart == null) || (metricChoice == null)) {
      throw new ProfileNotEnoughArguments('$weight $heightIntegerPart $heightDecimalPart $metricChoice');
  } else {
      switch(metricChoice) {
        case 'imperial':
          bBMI = 10000*(weight / pow((heightIntegerPart*12+heightDecimalPart),2))*703;
          nBMI = 5734*weight / pow(heightIntegerPart*12+heightDecimalPart,2.5);
          break;
        case 'iso':
          bBMI = 10000*(weight / pow((heightIntegerPart*100+heightDecimalPart),2));
          nBMI = 100000*(weight*1.3 / pow((heightIntegerPart*100+heightDecimalPart),2.5));
          break;
        default:
          throw new ProfileNotAProperValue('metricChoice : $metricChoice');
      }
    }
  }

  computeBMR() {
    //http://www.bmi-calculator.net/bmr-calculator/bmr-formula.php
    //Imperial :
    //Women: BMR = 655 + (4.35 x weight in pounds) + (4.7 x height in inches) - (4.7 x age in years)
    //Men: BMR = 66 + (6.23 x weight in pounds) + (12.7 x height in inches) - (6.8 x age in years)
    //
    //ISO :
    //Women: BMR = 655 + (9.6 x weight in kg) + (1.8 x height in cm) - (4.7 x age in years)
    //Men: BMR = 66 + (13.7 x weight in kg) + (5 x height in cm) - (6.8 x age in years)
        if ((weight == null) || (heightIntegerPart == null) || (heightDecimalPart == null) || (metricChoice == null) || (age == null) || (gender == null)) {
          throw new ProfileNotEnoughArguments('$weight $heightIntegerPart $heightDecimalPart $metricChoice $age $gender');
        } else {
          switch(metricChoice) {
            case 'imperial':
              switch(gender) {
                case 'W':
                  bBMR = 655 + (4.35*weight) + (4.7*(heightIntegerPart*12+heightDecimalPart)) - (4.7*age);
                  break;
                case 'M':
                  bBMR = 66 + (6.23*weight) + (12.7*(heightIntegerPart*12+heightDecimalPart)) - (6.8*age);
                  break;
                default:
                  throw new ProfileNotAProperValue('gender : $gender');
              }
              break;
            case 'iso':
            switch(gender) {
              case 'W':
                bBMR = 655 + (9.6*weight) + (1.8*(heightIntegerPart*12+heightDecimalPart)) - (4.7*age);
                break;
              case 'M':
                bBMR = 66 + (13.7*weight) + (5*(heightIntegerPart*12+heightDecimalPart)) - (6.8*age);
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

  computeHBE() {
    //http://www.bmi-calculator.net/bmr-calculator/harris-benedict-equation/
    //If you are sedentary (little or no exercise) : Calorie-Calculation = BMR x 1.2
    //If you are lightly active (light exercise/sports 1-3 days/week) : Calorie-Calculation = BMR x 1.375
    //If you are moderatetely active (moderate exercise/sports 3-5 days/week) : Calorie-Calculation = BMR x 1.55
    //If you are very active (hard exercise/sports 6-7 days a week) : Calorie-Calculation = BMR x 1.725
    //If you are extra active (very hard exercise/sports & physical job or 2x training) : Calorie-Calculation = BMR x 1.9
    if ((bBMR == null) || (activityFactor == null)) {
      throw new ProfileNotEnoughArguments('$bBMR $activityFactor');
    } else {
      switch(activityFactor) {
        case 'sedentary':
          hHBE = bBMR * 1.2;
          break;
        case 'lightlyActive':
          hHBE = bBMR * 1.375;
          break;
        case 'moderatelyActive':
          hHBE = bBMR * 1.55;
          break;
        case 'veryActive':
          hHBE = bBMR * 1.725;
          break;
        case 'extraActive':
          hHBE = bBMR * 1.9;
          break;
        default:
          throw new ProfileNotAProperValue('activityFactor : $activityFactor');
      }
    }
  }

  computeFat() {
  //http://www.calculator.net/body-fat-calculator.html
  //body fat calculator formula for man:
  //495/(1.0324-0.19077(LOG(waist-neck))+0.15456(LOG(height)))-450
  //
  //body fat calculator formula for woman:
  //495/(1.29579-0.35004(LOG(waist+hip-neck))+0.22100(LOG(height)))-450
    if ((metricChoice == null) || (waist == null) || (hips == null) || (gender == null)) {
      throw new ProfileNotEnoughArguments('$metricChoice $waist $hips $gender');
    } else {
      switch(metricChoice) {
        case('imperial'):
          switch(gender) {
            case('W'):
              fatPercentage = 495 / (
                1.29579-0.35004*(log(waist+hips-wrist))
                + 0.22100*(log((heightIntegerPart*12+heightDecimalPart)))
                ) - 450;
            break;
            case('M'):
              fatPercentage = 495 / (
                1.0324-0.19077*(log(waist-wrist))
                + 0.15456*(log((heightIntegerPart*12+heightDecimalPart)))
              ) - 450;
            break;
            default:
              throw new ProfileNotAProperValue('gender : $gender');
          }
          break;
          case('iso'):
            switch(gender) {
              case('W'):
                fatPercentage = 495 / (
                  1.29579-0.35004*(log(waist+hips-wrist))
                  + 0.22100*(log((heightIntegerPart*100+heightDecimalPart)))
                  ) - 450;
              break;
              case('M'):
                fatPercentage = 495 / (
                  1.0324-0.19077*(log(waist-wrist))
                  + 0.15456*(log((heightIntegerPart*100+heightDecimalPart)))
                ) - 450;
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

    computeRatio() {
      if ((waist == null) || (hips == null)) {
        throw new ProfileNotEnoughArguments('$waist $hips');
      } else {
        ratio = waist / hips;
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
    print('fatPercentage : $fatPercentage');
    print('ratio : $ratio');
  }

}
