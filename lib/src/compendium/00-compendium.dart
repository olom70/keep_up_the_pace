import 'compendiumphrasebook.dart' as phrasebook;
//
// Exception handling
//
class UnknownMetCode implements Exception {
  int metCode;
  UnknownMetCode (this.metCode);
  String errMsg() => phrasebook.PhraseBook.unknownMetCode(metCode);

}


abstract class Compendium {

  final Map metValue  = new Map();

  final Map metDescription  = new Map();

  final Map metDescription_fr  = new Map();

  printValues() {
     double value;
     String description;
     String description_fr;
     for (int mMETCode in metValue.keys) {
        value = null;
        description = null;
        value = metValue[mMETCode];
        metDescription[mMETCode] != null ? description = metDescription[mMETCode] : description = 'Description not properly initialized, please report this problem.';
        metDescription_fr[mMETCode] != null ? description_fr = metDescription_fr[mMETCode] : description_fr = 'Description not properly initialized, please report this problem.';
        print('ID : $mMETCode values $value / $description / $description_fr');
     }
  }

  double getMetValue(int metCode) {
    double metValue;
    this.metValue[metCode] != null ? metValue = this.metValue[metCode] : throw new UnknownMetCode(metCode);
    metValue = this.metValue[metCode];
    return metValue;
  }

}
