import '00-compendium.dart' as compendium;

class SelfCare extends compendium.Compendium {

  final Map metValue  = const <int, double>{13000 : 2.3
  ,13009 : 1.8
  ,13010 : 1.5
  ,13020 : 2.5
  ,13030 : 1.5
  ,13035 : 2.0
  ,13036 : 1.5
  ,13040 : 2.0
  ,13045 : 2.5
  ,13046 : 1.3
  ,13050 : 2.0 };

  final Map metDescription  = const <int, String>{13000 : "getting ready for bed, general, standing"
  ,13009 : "sitting on toilet, eliminating while standing or squating"
  ,13010 : "bathing, sitting"
  ,13020 : "dressing, undressing, standing or sitting"
  ,13030 : "eating, sitting"
  ,13035 : "talking and eating or eating only, standing"
  ,13036 : "taking medication, sitting or standing"
  ,13040 : "grooming, washing hands, shaving, brushing teeth, putting on make-up, sitting or standing"
  ,13045 : "hairstyling, standing"
  ,13046 : "having hair or nails done by someone else, sitting"
  ,13050 : "showering, toweling off, standing"};

  final Map metDescription_fr   = const <int, String>{13000 : "être debout, se préparer à aller au lit, général"
  ,13009 : "aller à la selle assis"
  ,13010 : "se baigner, assis"
  ,13020 : "s'habiller, se déshabiller, debout ou assis"
  ,13030 : "manger, assis"
  ,13035 : "parler et manger ou manger uniquement, debout"
  ,13036 : "prendre des médicaments, assis ou debout"
  ,13040 : "se préparer, se laver les mains, se raser, se brosser les dents, se maquiller, assis ou debout"
  ,13045 : "se coiffer, debout"
  ,13046 : "se faire coiffer ou manucurer par quelqu'un, assis"
  ,13050 : "se doucher, se sécher, debout"};


}
