// ignore_for_file: constant_identifier_names

import 'note.dart';
import 'interval.dart';

import 'package:collection/collection.dart';

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

  MajorNinth,
  DominantNinth,
  DominantMinorNinth,
  MinorMajorNinth,
  MinorNinth,
  AugmentedMajorNinth,
  AugmentedDominantNinth,
  HalfDiminishedNinth,
  HalfDiminishedMinorNinth,
  DiminishedNinth,
  DiminishedMinorNinth,

  Eleventh,
  MajorEleventh,
  MinorMajorEleventh,
  MinorEleventh,
  AugmentedMajorEleventh,
  AugmentedEleventh,
  HalfDiminishedEleventh,
  DiminishedEleventh,

  Thirteenth,
  MajorThirteenth,
  MinorMajorThirteenth,
  MinorThirteenth,
  AugmentedMajorThirteenth,
  AugmentedThirteenth,
  HalfDiminishedThirteenth,
  DiminishedThirteenth,
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

const List<Interval> MajorNinth = [...MajorSeventh, Interval.MajorNinth];
const List<Interval> DominantNinth = [...DominantSeventh, Interval.MajorNinth];
const List<Interval> DominantMinorNinth = [
  ...DominantSeventh,
  Interval.MinorNinth
];
const List<Interval> MinorMajorNinth = [
  ...MinorMajorSeventh,
  Interval.MajorNinth
];
const List<Interval> MinorNinth = [...MinorSeventh, Interval.MajorNinth];

const List<Interval> AugmentedMajorNinth = [
  ...AugmentedMajorSeventh,
  Interval.MajorNinth
];
const List<Interval> AugmentedDominantNinth = [
  ...AugmentedSeventh,
  Interval.MajorNinth
];

const List<Interval> HalfDiminishedNinth = [
  ...HalfDiminishedSeventh,
  Interval.MajorNinth
];
const List<Interval> HalfDiminishedMinorNinth = [
  ...HalfDiminishedSeventh,
  Interval.MinorNinth
];

const List<Interval> DiminishedNinth = [
  ...DiminishedSeventh,
  Interval.MajorNinth
];
const List<Interval> DiminishedMinorNinth = [
  ...DiminishedSeventh,
  Interval.MinorNinth
];

const List<Interval> Eleventh = [...DominantNinth, Interval.PerfectEleventh];
const List<Interval> MajorEleventh = [...MajorNinth, Interval.PerfectEleventh];
const List<Interval> MinorMajorEleventh = [
  ...MinorMajorNinth,
  Interval.PerfectEleventh
];
const List<Interval> MinorEleventh = [...MinorNinth, Interval.PerfectEleventh];
const List<Interval> AugmentedMajorEleventh = [
  ...AugmentedMajorNinth,
  Interval.PerfectEleventh
];
const List<Interval> AugmentedEleventh = [
  ...AugmentedDominantNinth,
  Interval.PerfectEleventh
];
const List<Interval> HalfDiminishedEleventh = [
  ...HalfDiminishedNinth,
  Interval.PerfectEleventh
];
const List<Interval> DiminishedEleventh = [
  ...DiminishedNinth,
  Interval.PerfectEleventh
];

const List<Interval> Thirteenth = [...Eleventh, Interval.MajorThirteenth];
const List<Interval> MajorThirteenth = [
  ...MajorEleventh,
  Interval.MajorThirteenth
];
const List<Interval> MinorMajorThirteenth = [
  ...MinorMajorEleventh,
  Interval.MajorThirteenth
];
const List<Interval> MinorThirteenth = [
  ...MinorEleventh,
  Interval.MajorThirteenth
];
const List<Interval> AugmentedMajorThirteenth = [
  ...AugmentedMajorEleventh,
  Interval.MajorThirteenth
];
const List<Interval> AugmentedThirteenth = [
  ...AugmentedEleventh,
  Interval.MajorThirteenth
];
const List<Interval> HalfDiminishedThirteenth = [
  ...HalfDiminishedEleventh,
  Interval.MajorThirteenth
];
const List<Interval> DiminishedThirteenth = [
  ...DiminishedEleventh,
  Interval.MajorThirteenth
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

      case ChordStructure.MajorNinth:
        return MajorNinth;
      case ChordStructure.DominantNinth:
        return DominantNinth;
      case ChordStructure.DominantMinorNinth:
        return DominantMinorNinth;
      case ChordStructure.MinorMajorNinth:
        return MinorMajorNinth;
      case ChordStructure.MinorNinth:
        return MinorNinth;
      case ChordStructure.AugmentedMajorNinth:
        return AugmentedMajorNinth;
      case ChordStructure.AugmentedDominantNinth:
        return AugmentedDominantNinth;
      case ChordStructure.HalfDiminishedNinth:
        return HalfDiminishedNinth;
      case ChordStructure.HalfDiminishedMinorNinth:
        return HalfDiminishedMinorNinth;
      case ChordStructure.DiminishedNinth:
        return DiminishedNinth;
      case ChordStructure.DiminishedMinorNinth:
        return DiminishedMinorNinth;

      case ChordStructure.Eleventh:
        return Eleventh;
      case ChordStructure.MajorEleventh:
        return MajorEleventh;
      case ChordStructure.MinorMajorEleventh:
        return MinorMajorEleventh;
      case ChordStructure.MinorEleventh:
        return MinorEleventh;
      case ChordStructure.AugmentedMajorEleventh:
        return AugmentedMajorEleventh;
      case ChordStructure.AugmentedEleventh:
        return AugmentedEleventh;
      case ChordStructure.HalfDiminishedEleventh:
        return HalfDiminishedEleventh;
      case ChordStructure.DiminishedEleventh:
        return DiminishedEleventh;

      case ChordStructure.Thirteenth:
        return Thirteenth;
      case ChordStructure.MajorThirteenth:
        return MajorThirteenth;
      case ChordStructure.MinorMajorThirteenth:
        return MinorMajorThirteenth;
      case ChordStructure.MinorThirteenth:
        return MinorThirteenth;
      case ChordStructure.AugmentedMajorThirteenth:
        return AugmentedMajorThirteenth;
      case ChordStructure.AugmentedThirteenth:
        return AugmentedThirteenth;
      case ChordStructure.HalfDiminishedThirteenth:
        return HalfDiminishedThirteenth;
      case ChordStructure.DiminishedThirteenth:
        return DiminishedThirteenth;
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
        return "min7";
      case ChordStructure.AugmentedMajorSeventh:
        return "aug(maj7)";
      case ChordStructure.AugmentedSeventh:
        return "aug7";
      case ChordStructure.HalfDiminishedSeventh:
        return "min7(♭5)";
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

      case ChordStructure.MajorNinth:
        return "maj9";
      case ChordStructure.DominantNinth:
        return "9";
      case ChordStructure.DominantMinorNinth:
        return "7b9";
      case ChordStructure.MinorMajorNinth:
        return "-M9";
      case ChordStructure.MinorNinth:
        return "min9";
      case ChordStructure.AugmentedMajorNinth:
        return "+M9";
      case ChordStructure.AugmentedDominantNinth:
        return "aug9";
      case ChordStructure.HalfDiminishedNinth:
        return "ø9";
      case ChordStructure.HalfDiminishedMinorNinth:
        return "øb9";
      case ChordStructure.DiminishedNinth:
        return "dim9";
      case ChordStructure.DiminishedMinorNinth:
        return "dimb9";

      case ChordStructure.Eleventh:
        return "11";
      case ChordStructure.MajorEleventh:
        return "maj11";
      case ChordStructure.MinorMajorEleventh:
        return "-M11";
      case ChordStructure.MinorEleventh:
        return "min11";
      case ChordStructure.AugmentedMajorEleventh:
        return "+M11";
      case ChordStructure.AugmentedEleventh:
        return "aug11";
      case ChordStructure.HalfDiminishedEleventh:
        return "ø11";
      case ChordStructure.DiminishedEleventh:
        return "dim11";

      case ChordStructure.Thirteenth:
        return "13";
      case ChordStructure.MajorThirteenth:
        return "maj13";
      case ChordStructure.MinorMajorThirteenth:
        return "-M13";
      case ChordStructure.MinorThirteenth:
        return "min13";
      case ChordStructure.AugmentedMajorThirteenth:
        return "+M13";
      case ChordStructure.AugmentedThirteenth:
        return "aug13";
      case ChordStructure.HalfDiminishedThirteenth:
        return "ø13";
      case ChordStructure.DiminishedThirteenth:
        return "dim13";
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
    return ChordStructure.values;
  }

  String name() {
    if (inversion != Interval.PerfectUnison) {
      return "${note.natural()}${structure.name}/${note.interval(inversion).name()}";
    }
    return note.name() + structure.name;
  }

  List<Interval> intervals() {
    return structure.intervals;
  }

  List<Note> notes() {
    return structure.intervals.map((e) => note.interval(e)).toList();
  }

  Chord interval(Interval target) {
    return Chord(
        note: note.interval(target),
        structure: structure,
        inversion: inversion);
  }
}

Chord chordParse(String value) {
  if (value.isEmpty) {
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
    noteEnd++;
  }

  var noteName = value.substring(0, noteEnd);
  var chordName = value.substring(noteEnd);
  var inversion = "";

  var inversionIndex = chordName.indexOf("/");
  if (inversionIndex != -1) {
    inversion = chordName.substring(inversionIndex + 1);
    chordName = chordName.substring(0, inversionIndex);
  }

  ChordStructure structure = ChordStructure.Major;
  var found = false;
  for (var i = 0; i < ChordStructure.values.length; i++) {
    if (ChordStructure.values[i].name == chordName) {
      structure = ChordStructure.values[i];
      found = true;
      break;
    }
  }
  if (!found) {
    throw Exception("could not find chord");
  }

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

List<ChordStructure> chords() {
  return ChordStructure.values.toList();
}

ChordStructure chordFromStructure(List<Interval> structure) {
  var _chords = chords();
  for (var i = 0; i < _chords.length; i++) {
    if (ListEquality().equals(_chords[i].intervals, structure)) {
      return _chords[i];
    }
  }
  print(structure);
  throw Exception("unknown chord structure");
}
