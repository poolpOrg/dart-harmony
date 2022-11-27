// ignore_for_file: constant_identifier_names

enum Accidental {
  Natural(0),
  Flat(-1),
  Sharp(1);

  const Accidental(this.value);
  final num value;
}

extension AccidentalMethods on Accidental {
  String get name {
    switch (this) {
      case Accidental.Natural:
        return "♮";
      case Accidental.Flat:
        return "♭";
      case Accidental.Sharp:
        return "♯";
    }
  }

  int get value {
    switch (this) {
      case Accidental.Natural:
        return 0;
      case Accidental.Flat:
        return -1;
      case Accidental.Sharp:
        return 1;
    }
  }
}

Accidental accidentalParse(String value) {
  switch (value) {
    case "":
    case "♮":
      return Accidental.Natural;
    case "b":
    case "♭":
      return Accidental.Flat;
    case "#":
    case "♯":
      return Accidental.Sharp;
  }
  throw Exception("could not parse accidental $value");
}

List<Accidental> accidentals() {
  return Accidental.values;
}
