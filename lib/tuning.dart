import 'dart:math';

enum Tuning {
  A440,
  Pythagorean;

  static const _nameMap = {
    Tuning.A440: "A440",
  };
  String get name => _nameMap[this]!;

  static Map<Tuning, Function(dynamic i)> _rMap = {
    Tuning.A440: (i) => pow(2, i / 12),
  };
  dynamic Function(dynamic) get r => _rMap[this]!;
}

Tuning tuningParse(String value) {
  if (!Tuning._nameMap.containsValue(value)) {
    throw Exception("could not parse tuning $value");
  }
  return Tuning._nameMap.entries
      .firstWhere((element) => element.value == value)
      .key;
}

List<Tuning> tunings() {
  return Tuning.values;
}
