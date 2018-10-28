import 'package:intl/intl.dart';

class PhraseBook {
  static notAProperValue(property) => Intl.message(
    "One of the metrics ($property) has not an authorized value. Checks the values of all the metrics",
    name: "notAProperValue",
    args: [property],
    desc: 'not an authorized value',
    examples: const {'property': 'waist : -2'});

  static notEnoughArguments(rootCause) => Intl.message(
    "Some metrics are missing ($rootCause). Check that all the required values are initialized.",
    name: "notEnoughArguments",
    args: [rootCause],
    desc: "not Enough arguments",
    examples: const {'rootCause' : 'age'});

  static notEnoughData() => Intl.message(
      "Not enough data",
      name: "notEnoughData",
      args: [],
      desc: "not enough data to display the requested information",
      examples: const {'not enough data' : ' '});

  static maleLabel() => Intl.message(
      "Male",
      name: "maleLabel",
      args: [],
      desc: "man",
      examples: const {'Male' : 'Man'});

  static femaleLabel() => Intl.message(
      "Female",
      name: "FemaleLabel",
      args: [],
      desc: "female",
      examples: const {'Female' : 'Woman'});

  static notDefinedLabel() => Intl.message(
      "Not defined",
      name: "notDefinedLabel",
      args: [],
      desc: "when something to be returned is not defined",
      examples: const {'value' : 'not defined'});


}
