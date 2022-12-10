enum Natural {
  C,
  D,
  E,
  F,
  G,
  A,
  B;

  static const _nameMap = {
    Natural.C: "C",
    Natural.D: "D",
    Natural.E: "E",
    Natural.F: "F",
    Natural.G: "G",
    Natural.A: "A",
    Natural.B: "B",
  };
  String get name => _nameMap[this]!;
}

extension NaturalExtension on Natural {
  int get position => _positionMap[this]!;

  static const _positionMap = {
    Natural.C: 0,
    Natural.D: 1,
    Natural.E: 2,
    Natural.F: 3,
    Natural.G: 4,
    Natural.A: 5,
    Natural.B: 6,
  };

  int get semitones => _semitonesMap[this]!;

  static const _semitonesMap = {
    Natural.C: 0,
    Natural.D: 2,
    Natural.E: 4,
    Natural.F: 5,
    Natural.G: 7,
    Natural.A: 9,
    Natural.B: 11,
  };
}

Natural naturalParse(String value) {
  if (!Natural._nameMap.containsValue(value)) {
    throw Exception("could not parse natural $value");
  }
  return Natural._nameMap.entries
      .firstWhere((element) => element.value == value)
      .key;
}

List<Natural> naturals() {
  return Natural.values;
}
