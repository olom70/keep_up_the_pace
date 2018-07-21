import 'package:intl/intl.dart';

class PhraseBook {
  static unknownMetCode(metCode) => Intl.message(
    "The MET Code provided ($metCode) was not found",
    name: "unknownMetCode",
    args: [metCode],
    desc: "Met Code Unknown",
    examples: const {'metCode' : '666'});
}
