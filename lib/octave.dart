// ignore_for_file: constant_identifier_names

enum Octave {
  C0(0),
  C1(1),
  C2(2),
  C3(3),
  C4(4),
  C5(5),
  C6(6),
  C7(7);

  const Octave(this.value);
  final num value;
}

extension OctaveMethods on Octave {
  String get name {
    switch (this) {
      case Octave.C0:
        return "0";
      case Octave.C1:
        return "1";
      case Octave.C2:
        return "2";
      case Octave.C3:
        return "3";
      case Octave.C4:
        return "4";
      case Octave.C5:
        return "5";
      case Octave.C6:
        return "6";
      case Octave.C7:
        return "7";
    }
  }

  int get value {
    switch (this) {
      case Octave.C0:
        return 0;
      case Octave.C1:
        return 1;
      case Octave.C2:
        return 2;
      case Octave.C3:
        return 3;
      case Octave.C4:
        return 4;
      case Octave.C5:
        return 5;
      case Octave.C6:
        return 6;
      case Octave.C7:
        return 7;
    }
  }

  Octave operator +(int n) {
    var v = value + n;
    switch (v) {
      case 0:
        return Octave.C0;
      case 1:
        return Octave.C1;
      case 2:
        return Octave.C2;
      case 3:
        return Octave.C3;
      case 4:
        return Octave.C4;
      case 5:
        return Octave.C5;
      case 6:
        return Octave.C6;
      case 7:
        return Octave.C7;
      default:
        throw Exception("octave overflow");
    }
  }

  Octave operator -(int n) {
    var v = value - n;
    switch (v) {
      case 0:
        return Octave.C0;
      case 1:
        return Octave.C1;
      case 2:
        return Octave.C2;
      case 3:
        return Octave.C3;
      case 4:
        return Octave.C4;
      case 5:
        return Octave.C5;
      case 6:
        return Octave.C6;
      case 7:
        return Octave.C7;
      default:
        throw Exception("octave overflow");
    }
  }
}

Octave octaveParse(String value) {
  switch (value) {
    case "0":
      return Octave.C0;
    case "1":
      return Octave.C1;
    case "2":
      return Octave.C2;
    case "3":
      return Octave.C3;
    case "4":
      return Octave.C4;
    case "5":
      return Octave.C5;
    case "6":
      return Octave.C6;
    case "7":
      return Octave.C7;
  }
  throw Exception("invalid octave");
}

List<Octave> octaves() {
  return Octave.values;
}
