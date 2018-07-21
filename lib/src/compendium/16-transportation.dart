import '00-compendium.dart' as compendium;

class Transportation extends compendium.Compendium {

  final Map metValue  = const <int, double>{16010 : 2.5
  ,16015 : 1.3
  ,16016 : 1.3
  ,16020 : 1.8
  ,16030 : 2.8
  ,16035 : 6.3
  ,16040 : 6.0
  ,16050 : 2.5
  ,16060 : 3.5};

  final Map metDescription  = const <int, String>{16010 : "automobile or light truck (not a semi) driving"
  ,16015 : "riding in a car or truck"
  ,16016 : "riding in a bus or train"
  ,16020 : "flying airplane or helicopter"
  ,16030 : "motor scooter, motorcycle"
  ,16035 : "pulling rickshaw"
  ,16040 : "pushing plane in and out of hangar"
  ,16050 : "truck, semi, tractor, > 1 ton, or bus, driving"
  ,16060 : "walking for transportation, 2.8-3.2 mph, level, moderate pace, firm surface"};

  final Map metDescription_fr  = const <int, String>{16010 : "conduire une voiture ou un camion léger (hors semi-remorque)"
  ,16015 : "se déplacer en voiture ou en camion"
  ,16016 : "se déplacer en bus ou train"
  ,16020 : "se déplacer en avion ou en hélicoptère"
  ,16030 : "scooter, moto"
  ,16035 : "tirer un pousse-pousse"
  ,16040 : "pousser un avion à l'intérieur et à l'extérieur d'un hangar"
  ,16050 : "conduire un camion, un semi-remorque, un tracteur > 1 tonne ou un bus"
  ,16060 : "marcher à 4,5-5 km/h, sur le plat, rythme modéré, sol ferme"};


}
