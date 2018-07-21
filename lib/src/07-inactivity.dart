import '00-compendium.dart' as compendium;

class Inactivity extends compendium.Compendium {

  final Map metValue  = const <int, double>{7010 : 1.0
  ,7011 : 1.3
  ,7020 : 1.3
  ,7021 : 1.3
  ,7022 : 1.5
  ,7023 : 1.8
  ,7024 : 1.3
  ,7025 : 1.5
  ,7026 : 1.3
  ,7030 : 0.95
  ,7040 : 1.3
  ,7041 : 1.8
  ,7050 : 1.3
  ,7060 : 1.3
  ,7070 : 1.3
  ,7075 : 1.0 };

  final Map metDescription  = const <int, String>{7010 : "lying quietly and watching television"
  ,7011 : "lying quietly, doing nothing, lying in bed awake, listening to music (not talking or reading)"
  ,7020 : "sitting quietly and watching television"
  ,7021 : "sitting quietly, general"
  ,7022 : "sitting quietly, fidgeting, general, fidgeting hands"
  ,7023 : "sitting, fidgeting feet"
  ,7024 : "sitting, smoking"
  ,7025 : "sitting, listening to music (not talking or reading) or watching a movie in a theater"
  ,7026 : "sitting at a desk, resting head in hands"
  ,7030 : "sleeping"
  ,7040 : "standing quietly, standing in a line"
  ,7041 : "standing, fidgeting"
  ,7050 : "reclining, writing"
  ,7060 : "reclining, talking or talking on phone"
  ,7070 : "reclining, reading"
  ,7075 : "meditating"};

}
