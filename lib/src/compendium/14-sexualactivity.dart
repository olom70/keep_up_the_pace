import '00-compendium.dart' as compendium;

class SexualActivity extends compendium.Compendium {

  final Map metValue  = const <int, double>{14010 : 2.8
  ,14020 : 1.8
  ,14030 : 1.3 };

  final Map metDescription  = const <int, String>{14010 : "active, vigorous effort"
  ,14020 : "general, moderate effort"
  ,14030 : "passive, light effort, kissing, hugging"};

  final Map metDescription_fr  = const <int, String>{14010 : "mode actif, effort vigoureux"
  ,14020 : "général, effort modéré"
  ,14030 : "mode passif, effort léger, baisers, embrassades"};


}
