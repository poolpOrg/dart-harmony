// ignore_for_file: constant_identifier_names

import 'note.dart';
import 'interval.dart';

enum ChordStructure {
  PowerChord,
  Major,
  Minor,
  Diminished,
  Augmented,
  MajorFlatFifth,
  SusSecond,
  SusFourth,
  SusSecondSusFourth,
  MajorSixth,
  MinorSixth,
  MajorFlatSixth,
  MinorFlatSixth,
  DominantSeventh,
  MajorSeventh,
  MinorMajorSeventh,
  MinorSeventh,
  AugmentedMajorSeventh,
  AugmentedSeventh,
  HalfDiminishedSeventh,
  DiminishedSeventh,
  DominantSeventhFlatFive,
  DominantSeventhSusSecond,
  DominantSeventhSusFourth,
  DominantSeventhSusSecondSusFourth,
  MajorSeventhSusSecond,
  MajorSeventhSusFourth,
  MajorSeventhSusSecondSusFourth,
}

const List<Interval> PowerChord = [
  Interval.PerfectUnison,
  Interval.PerfectFifth
];

const List<Interval> Major = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.PerfectFifth,
];

const List<Interval> Minor = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.PerfectFifth,
];

const List<Interval> Diminished = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.DiminishedFifth,
];

const List<Interval> Augmented = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.AugmentedFifth,
];

const List<Interval> MajorFlatFifth = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.DiminishedFifth,
];

const List<Interval> SusSecond = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFifth,
];

const List<Interval> SusFourth = [
  Interval.PerfectUnison,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
];

const List<Interval> SusSecondSusFourth = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
];

const List<Interval> MajorSixth = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.PerfectFifth,
  Interval.MajorSixth
];

const List<Interval> MinorSixth = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.PerfectFifth,
  Interval.MajorSixth
];

const List<Interval> MajorFlatSixth = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.PerfectFifth,
  Interval.MinorSixth
];

const List<Interval> MinorFlatSixth = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.PerfectFifth,
  Interval.MinorSixth
];

const List<Interval> DominantSeventh = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
];

const List<Interval> MajorSeventh = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
];

const List<Interval> MinorMajorSeventh = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
];

const List<Interval> MinorSeventh = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
];

const List<Interval> AugmentedMajorSeventh = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.AugmentedFifth,
  Interval.MajorSeventh,
];

const List<Interval> AugmentedSeventh = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.AugmentedFifth,
  Interval.MinorSeventh,
];

const List<Interval> HalfDiminishedSeventh = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.DiminishedFifth,
  Interval.MinorSeventh,
];

const List<Interval> DiminishedSeventh = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.DiminishedFifth,
  Interval.DiminishedSeventh,
];

const List<Interval> DominantSeventhFlatFive = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.DiminishedFifth,
  Interval.MinorSeventh,
];

const List<Interval> DominantSeventhSusSecond = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
];

const List<Interval> DominantSeventhSusFourth = [
  Interval.PerfectUnison,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
];

const List<Interval> DominantSeventhSusSecondSusFourth = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
];

const List<Interval> MajorSeventhSusSecond = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
];

const List<Interval> MajorSeventhSusFourth = [
  Interval.PerfectUnison,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
];

const List<Interval> MajorSeventhSusSecondSusFourth = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
];

extension ChordStructureMethods on ChordStructure {
  List<Interval> get intervals {
    switch (this) {
      case ChordStructure.PowerChord:
        return PowerChord;
      case ChordStructure.Minor:
        return Minor;
      case ChordStructure.Major:
        return Major;
      case ChordStructure.Diminished:
        return Diminished;
      case ChordStructure.Augmented:
        return Augmented;
      case ChordStructure.MajorFlatFifth:
        return MajorFlatFifth;
      case ChordStructure.SusSecond:
        return SusSecond;
      case ChordStructure.SusFourth:
        return SusFourth;
      case ChordStructure.SusSecondSusFourth:
        return SusSecondSusFourth;
      case ChordStructure.MajorSixth:
        return MajorSixth;
      case ChordStructure.MinorSixth:
        return MinorSixth;
      case ChordStructure.MajorFlatSixth:
        return MajorFlatSixth;
      case ChordStructure.MinorFlatSixth:
        return MinorFlatSixth;
      case ChordStructure.DominantSeventh:
        return DominantSeventh;
      case ChordStructure.MajorSeventh:
        return MajorSeventh;
      case ChordStructure.MinorMajorSeventh:
        return MinorMajorSeventh;
      case ChordStructure.MinorSeventh:
        return MinorSeventh;
      case ChordStructure.AugmentedMajorSeventh:
        return AugmentedMajorSeventh;
      case ChordStructure.AugmentedSeventh:
        return AugmentedSeventh;
      case ChordStructure.HalfDiminishedSeventh:
        return HalfDiminishedSeventh;
      case ChordStructure.DiminishedSeventh:
        return DiminishedSeventh;
      case ChordStructure.DominantSeventhFlatFive:
        return DominantSeventhFlatFive;
      case ChordStructure.DominantSeventhSusSecond:
        return DominantSeventhSusSecond;
      case ChordStructure.DominantSeventhSusFourth:
        return DominantSeventhSusFourth;
      case ChordStructure.DominantSeventhSusSecondSusFourth:
        return DominantSeventhSusSecondSusFourth;
      case ChordStructure.MajorSeventhSusSecond:
        return MajorSeventhSusSecond;
      case ChordStructure.MajorSeventhSusFourth:
        return MajorSeventhSusFourth;
      case ChordStructure.MajorSeventhSusSecondSusFourth:
        return MajorSeventhSusSecondSusFourth;
    }
  }

  String get name {
    switch (this) {
      case ChordStructure.PowerChord:
        return "5";
      case ChordStructure.Minor:
        return "min";
      case ChordStructure.Major:
        return "";
      case ChordStructure.Diminished:
        return "dim";
      case ChordStructure.Augmented:
        return "aug";
      case ChordStructure.MajorFlatFifth:
        return "(♭5)";
      case ChordStructure.SusSecond:
        return "sus2";
      case ChordStructure.SusFourth:
        return "sus4";
      case ChordStructure.SusSecondSusFourth:
        return "sus2sus4";
      case ChordStructure.MajorSixth:
        return "6";
      case ChordStructure.MinorSixth:
        return "min6";
      case ChordStructure.MajorFlatSixth:
        return "(♭6)";
      case ChordStructure.MinorFlatSixth:
        return "min(♭6)";
      case ChordStructure.DominantSeventh:
        return "7";
      case ChordStructure.MajorSeventh:
        return "maj7";
      case ChordStructure.MinorMajorSeventh:
        return "min(maj7)";
      case ChordStructure.MinorSeventh:
        return "(♭7)";
      case ChordStructure.AugmentedMajorSeventh:
        return "aug(maj7)";
      case ChordStructure.AugmentedSeventh:
        return "aug7";
      case ChordStructure.HalfDiminishedSeventh:
        return "m7(♭5)";
      case ChordStructure.DiminishedSeventh:
        return "(o7)";
      case ChordStructure.DominantSeventhFlatFive:
        return "7(♭5)";
      case ChordStructure.DominantSeventhSusSecond:
        return "7sus2";
      case ChordStructure.DominantSeventhSusFourth:
        return "7sus4";
      case ChordStructure.DominantSeventhSusSecondSusFourth:
        return "7sus2sus4";
      case ChordStructure.MajorSeventhSusSecond:
        return "M7sus2";
      case ChordStructure.MajorSeventhSusFourth:
        return "M7sus4";
      case ChordStructure.MajorSeventhSusSecondSusFourth:
        return "M7sus2sus4";
    }
  }
}

class Chord {
  final Note note;
  final ChordStructure structure;
  final Interval inversion;

  const Chord(
      {required this.note, required this.structure, required this.inversion});

  static List<ChordStructure> chords() {
    return [
      ChordStructure.PowerChord,
      ChordStructure.Major,
      ChordStructure.Minor,
      ChordStructure.Diminished,
      ChordStructure.Augmented,
      ChordStructure.MajorFlatFifth,
      ChordStructure.SusSecond,
      ChordStructure.SusFourth,
      ChordStructure.SusSecondSusFourth,
      ChordStructure.MajorSixth,
      ChordStructure.MinorSixth,
      ChordStructure.MajorFlatSixth,
      ChordStructure.MinorFlatSixth,
      ChordStructure.DominantSeventh,
      ChordStructure.MajorSeventh,
      ChordStructure.MinorMajorSeventh,
      ChordStructure.MinorSeventh,
      ChordStructure.AugmentedMajorSeventh,
      ChordStructure.AugmentedSeventh,
      ChordStructure.HalfDiminishedSeventh,
      ChordStructure.DiminishedSeventh,
      ChordStructure.DominantSeventhFlatFive,
      ChordStructure.DominantSeventhSusSecond,
      ChordStructure.DominantSeventhSusFourth,
      ChordStructure.DominantSeventhSusSecondSusFourth,
      ChordStructure.MajorSeventhSusSecond,
      ChordStructure.MajorSeventhSusFourth,
      ChordStructure.MajorSeventhSusSecondSusFourth,
    ];
  }

//  List<Note> notes(Note root) {
//    return List<Note>.from(structure.map((e) => root.interval(e)));
//  }

  String name() {
    if (inversion != Interval.PerfectUnison) {
      return "${note.natural()}${structure.name}/${note.interval(inversion).name()}";
    }

    return note.natural() + structure.name;
  }

  List<Interval> intervals() {
    return structure.intervals;
  }

  List<Note> notes() {
    return structure.intervals.map((e) => note.interval(e)).toList();
  }
}

Chord chordParse(String value) {
  if (value.length == 0) {
    throw Exception("empty chord name");
  }

  int noteEnd = 1;
  for (var i = noteEnd; i < value.length; i++) {
    if (value[i] != '♭' &&
        value[i] != '♯' &&
        value[i] != 'b' &&
        value[i] != '#') {
      break;
    }
  }

  var noteName = value.substring(0, noteEnd);
  var chordName = value.substring(noteEnd);
  var inversion = "";

  var inversionIndex = chordName.indexOf("/");
  if (inversionIndex != -1) {
    inversion = chordName.substring(inversionIndex + 1);
    chordName = chordName.substring(0, inversionIndex);
  }

  var structure =
      ChordStructure.values.where((element) => element.name == chordName).first;
  var note = noteParse(noteName);

  var c = Chord(
      note: note, structure: structure, inversion: Interval.PerfectUnison);

  if (inversion != "") {
    if (inversion == noteName) {
      throw Exception("inversion note is root of chord");
    }

    var n2 = noteParse(inversion);
    if (inversion != n2.name(showOctave: true)) {
      // decrement octave HERE
    }

    for (var i = 0; i < structure.intervals.length; i++) {
      if (note.interval(structure.intervals[i]).name() == n2.name()) {
        return Chord(
            note: note,
            structure: structure,
            inversion: structure.intervals[i]);
      }
    }
    throw Exception("inversion note is not in chord");
    // set octave of root to n2 octave
  }

  return c;
}
