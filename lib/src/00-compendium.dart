abstract class Compendium {

  final Map metValue  = new Map();

  final Map metDescription  = new Map();

  printValues() {
     double value;
     String description;
     for (int mMETCode in metValue.keys) {
        value = null;
        description = null;
        value = metValue[mMETCode];
        metDescription[mMETCode] != null ? description = metDescription[mMETCode] : description = 'Description not properly initialized, please report this problem.';
        print('ID : $mMETCode values $value / $description');
     }
  }

}
