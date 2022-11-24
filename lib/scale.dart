import 'note.dart';
import 'interval.dart';

enum ScaleStructure {
  Ionian,
  Dorian,
  Phrygian,
  Lydian,
  Mixolydian,
  Aeolian,
  Locrian,
}

const Ionian = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.MajorThird,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSixth,
  Interval.MajorSeventh,
  Interval.PerfectOctave,
];

const Dorian = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.MinorThird,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSixth,
  Interval.MinorSeventh,
  Interval.PerfectOctave,
];

const Phrygian = [
  Interval.PerfectUnison,
  Interval.MinorSecond,
  Interval.MinorThird,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MinorSixth,
  Interval.MinorSeventh,
  Interval.PerfectOctave,
];

const Lydian = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.MajorThird,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSixth,
  Interval.MajorSeventh,
  Interval.PerfectOctave,
];

const Mixolydian = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.MajorThird,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSixth,
  Interval.MinorSeventh,
  Interval.PerfectOctave,
];

const Aeolian = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.MinorThird,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MinorSixth,
  Interval.MinorSeventh,
  Interval.PerfectOctave,
];

const Locrian = [
  Interval.PerfectUnison,
  Interval.MinorSecond,
  Interval.MinorThird,
  Interval.PerfectFourth,
  Interval.DiminishedFifth,
  Interval.MinorSixth,
  Interval.MinorSeventh,
  Interval.PerfectOctave,
];

extension ScaleStructureMethods on ScaleStructure {
  List<Interval> get intervals {
    switch (this) {
      case ScaleStructure.Ionian:
        return Ionian;
      case ScaleStructure.Dorian:
        return Dorian;
      case ScaleStructure.Phrygian:
        return Phrygian;
      case ScaleStructure.Lydian:
        return Lydian;
      case ScaleStructure.Mixolydian:
        return Mixolydian;
      case ScaleStructure.Aeolian:
        return Aeolian;
      case ScaleStructure.Locrian:
        return Locrian;
    }
  }

  String get name {
    switch (this) {
      case ScaleStructure.Ionian:
        return "ionian";
      case ScaleStructure.Dorian:
        return "dorian";
      case ScaleStructure.Phrygian:
        return "phrygian";
      case ScaleStructure.Lydian:
        return "lydian";
      case ScaleStructure.Mixolydian:
        return "myxolidian";
      case ScaleStructure.Aeolian:
        return "aeolian";
      case ScaleStructure.Locrian:
        return "locrian";
    }
  }
}

class Scale {
  final Note note;
  final List<Interval> structure;

  const Scale({required this.note, required this.structure});

  List<Note> notes() {
    return List<Note>.from(structure.map((e) => note.interval(e)));
  }
}
