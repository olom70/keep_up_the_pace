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

}
