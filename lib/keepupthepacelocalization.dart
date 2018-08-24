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
      'Metrics',
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