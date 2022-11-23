enum Natural { C, D, E, F, G, A, B }

extension NaturalExtension on Natural {
  String get name {
    switch (this) {
      case Natural.C:
        return "C";
      case Natural.D:
        return "D";
      case Natural.E:
        return "E";
      case Natural.F:
        return "F";
      case Natural.G:
        return "G";
      case Natural.A:
        return "A";
      case Natural.B:
        return "B";
    }
  }

  int get position {
    switch (this) {
      case Natural.C:
        return 0;
      case Natural.D:
        return 1;
      case Natural.E:
        return 2;
      case Natural.F:
        return 3;
      case Natural.G:
        return 4;
      case Natural.A:
        return 5;
      case Natural.B:
        return 6;
    }
  }

  int get semitones {
    switch (this) {
      case Natural.C:
        return 0;
      case Natural.D:
        return 2;
      case Natural.E:
        return 4;
      case Natural.F:
        return 5;
      case Natural.G:
        return 7;
      case Natural.A:
        return 9;
      case Natural.B:
        return 11;
    }
  }
}

List<Natural> naturals() {
  return Natural.values;
}
