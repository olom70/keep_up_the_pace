import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:keep_up_the_pace/l10n/messages_all.dart';

class DemoLocalizations {
  static Future<DemoLocalizations> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return DemoLocalizations();
    });
  }

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  String get mainTitle {
    return Intl.message(
      'Main',
      name: 'MainScreenName',
      desc: 'The main screen has the expansions panels with access to Metrics, Profile and Compendium',
    );
  }

  String get metricsHeader {
    return Intl.message(
      'Metrics',
      name: 'MetricsHeader',
      desc: 'Metrics / Métriques',
    );
  }

  String get metricsDescription {
    return Intl.message(
      'Enter facts, know your state',
      name: 'metricsDescription',
      desc: 'Short Description of what metrics get access to',
    );
  }

  String get metricsLongDescription {
    return Intl.message(
      'Set up the current profile with gender, age, weight, size, etc. Visualize several metrics relative to you.',
      name: 'metricsLongDescription',
      desc: 'Long Description of what profile get access to',
    );
  }

  String get profileHeader {
    return Intl.message(
      'Profile',
      name: 'profileHeader',
      desc: 'Profile / Profil',
    );
  }

  String get profileDescription {
    return Intl.message(
      'Manage profiles',
      name: 'profileDescription',
      desc: 'Short Description of what profile get access to',
    );
  }

  String get profileLongDescription {
    return Intl.message(
      'Change name, copy, change goal, etc.',
      name: 'profileLongDescription',
      desc: 'Long Description of what profile get access to',
    );
  }

  String get compendiumHeader {
    return Intl.message(
      'Conpendium',
      name: 'compendiumHeader',
      desc: 'Compendium',
    );
  }

  String get compendiumDescription {
    return Intl.message(
      'Compendium of physical activities',
      name: 'compendiumDescription',
      desc: 'Short Description of what metrics get access to',
    );
  }

  String get compendiumLongDescription {
    return Intl.message(
      'Explore thousands of activities and their energy consumption',
      name: 'compendiumLongDescription',
      desc: 'Long Description of what metrics get access to',
    );
  }

  String get mainButtonLabel {
    return Intl.message(
      'GO!',
      name: 'mainButtonLabel',
      desc: 'The text onto the button',
    );
  }

  String get bmiLabel {
    return Intl.message(
      'BMI',
      name: 'bmiLabel',
      desc: 'BMI : Body Mass Index',
    );
  }

  String get settingsLabel {
    return Intl.message(
      'Settings',
      name: 'settingsLabel',
      desc: 'Settings is to enter the profile body specifications',
    );
  }

  String get heightPromptLabel {
    return Intl.message(
      'Enter your height',
      name: 'heightPromptLabel',
      desc: 'Prompt to invite you to enter your height',
    );
  }

  String get agePromptLabel {
    return Intl.message(
      'Enter your age',
      name: 'agePromptLabel',
      desc: 'Prompt to invite you to enter your age.',
    );
  }

  String get sexPromptLabel {
    return Intl.message(
      'Enter your gender',
      name: 'sexPromptLabel',
      desc: 'Prompt to invite you to specify if you are a woman or a man.',
    );
  }


  String get weightPromptLabel {
    return Intl.message(
      'Enter your weight',
      name: 'weightPromptLabel',
      desc: 'Prompt to invite you to enter your weight',
    );
  }

  String get activityFactorPromptLabel {
    return Intl.message(
      'Enter your level of activty',
      name: 'activityFactorPromptLabel',
      desc: 'Prompt to invite you to enter if you are sedentary or very active',
    );
  }

  String get notDefinedLabel {
    return Intl.message(
      'Not defined',
      name: 'notDefinedLabel',
      desc: 'when something to be returned is not defined',
    );
  }

  String get newBmiLabel {
    return Intl.message(
      'new BMI',
      name: 'newBmiLabel',
      desc: 'label for the new BMI formula',
    );
  }

  String get oldBmiLabel {
    return Intl.message(
      'old BMI',
      name: 'oldBmiLabel',
      desc: 'label for the old BMI formula',
    );
  }

  String get separator {
    return Intl.message(
      ' : ',
      name: 'separator',
      desc: 'separator between the label and the value',
    );
  }

  String get rmrLabel {
    return Intl.message(
      'RMR',
      name: 'rmrLabel',
      desc: 'RMR : Resting Metabolic Rate',
    );
  }

  String get tteLabel {
    return Intl.message(
      'TEE',
      name: 'teeLabel',
      desc: 'TEE : Total Energy Expenditure',
    );
  }

  String get fatLabel {
    return Intl.message(
      'Fat Percentage',
      name: 'fatLabel',
      desc: 'Fat Percentage : % of fat of the body',
    );
  }


  String get metricsLabel {
    return Intl.message(
      'Metrics : Dasboard',
      name: 'metricsLabel',
      desc: 'Dashboard with all the metrics',
    );
  }

  String get metricsButtonLabel {
    return Intl.message(
      'Details / Settings',
      name: 'metricsButtonLabel',
      desc: 'Button to go to the screen of a specific metric',
    );
  }


  String get metrics_tabsLabel {
    return Intl.message(
      'Metrics',
      name: 'metrics_tabsLabel',
      desc: 'All the metrics in a tabbed view',
    );
  }

  String get meter {
    return Intl.message(
      'Meter',
      name: 'meter',
      desc: 'the unit. 1 meter long for example',
    );
  }

  String get centimeter {
    return Intl.message(
      'Centimeter',
      name: 'centimeter',
      desc: 'the unit. 1 centimeter long for example',
    );
  }

  String get kilogram {
    return Intl.message(
      'Kilogram',
      name: 'kilogram',
      desc: 'the unit. 1 kilogram for example',
    );
  }

  String get gram {
    return Intl.message(
      'Gram',
      name: 'gram',
      desc: 'the unit. 1 gram for example',
    );
  }

  String get ageLabel {
    return Intl.message(
      'years old',
      name: 'ageLabel',
      desc: 'ex : 45 years old',
    );
  }

  String get maleLabel {
    return Intl.message(
      'Male',
      name: 'maleLabel',
      desc: 'I am a male',
    );
  }

  String get femaleLabel {
    return Intl.message(
      'Female',
      name: 'femaleLabel',
      desc: 'I am a male',
    );
  }

  String get threeSkinflodsMethodsLabel {
    return Intl.message(
      '3 skinfolds methods',
      name: 'threeSkinflodsMethodsLabel',
      desc: 'the name of the method to determine the fat % : 3 skin folds methods',
    );
  }

  String get sizeInMilimeterLabel {
    return Intl.message(
      'size in millimeter',
      name: 'sizeInMilimeterLabel',
      desc: 'size in millimeter of the skin fold',
    );
  }

  String get locationLabel {
    return Intl.message(
      'Location',
      name: 'locationLabel',
      desc: 'location of the measurement',
    );
  }

  String get chestLabel {
    return Intl.message(
      'Chest',
      name: 'chestLabel',
      desc: 'The chest',
    );
  }

  String get tricepsLabel {
    return Intl.message(
      'Triceps',
      name: 'tricepsLabel',
      desc: 'The triceps',
    );
  }

  String get abdomenLabel {
    return Intl.message(
      'Abdomen',
      name: 'abdomenLabel',
      desc: 'The abdomen',
    );
  }

  String get suprailiumLabel {
    return Intl.message(
      'Suprailium',
      name: 'suprailiumLabel',
      desc: 'The suprailium',
    );
  }

  String get thighLabel {
    return Intl.message(
      'Thigh',
      name: 'thighLabel',
      desc: 'The thigh',
    );
  }

}

class DemoLocalizationsDelegate extends LocalizationsDelegate<DemoLocalizations> {
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'fr'].contains(locale.languageCode);

  @override
  Future<DemoLocalizations> load(Locale locale) => DemoLocalizations.load(locale);

  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}