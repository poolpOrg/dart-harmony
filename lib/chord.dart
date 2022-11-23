import 'note.dart';
import 'interval.dart';

const PowerChord = [Interval.PerfectUnison, Interval.PerfectFifth];

const Major = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.PerfectFifth,
];

const Minor = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.PerfectFifth,
];

const Diminished = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.DiminishedFifth,
];

const Augmented = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.AugmentedFifth,
];

const MajorFlatFifth = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.DiminishedFifth,
];

const SusSecond = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFifth,
];

const SusFourth = [
  Interval.PerfectUnison,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
];

const SusSecondSusFourth = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
];

const MajorSixth = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.PerfectFifth,
  Interval.MajorSixth
];

const MinorSixth = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.PerfectFifth,
  Interval.MajorSixth
];

const MajorFlatSixth = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.PerfectFifth,
  Interval.MinorSixth
];

const MinorFlatSixth = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.PerfectFifth,
  Interval.MinorSixth
];

const DominantSeventh = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
];

const MajorSeventh = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
];

const MinorMajorSeventh = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
];

const MinorSeventh = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
];

const AugmentedMajorSeventh = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.AugmentedFifth,
  Interval.MajorSeventh,
];

const AugmentedSeventh = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.AugmentedFifth,
  Interval.MinorSeventh,
];

const HalfDiminishedSeventh = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.DiminishedFifth,
  Interval.MinorSeventh,
];

const DiminishedSeventh = [
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.DiminishedFifth,
  Interval.DiminishedSeventh,
];

const DominantSeventhFlatFive = [
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.DiminishedFifth,
  Interval.MinorSeventh,
];

const DominantSeventhSusSecond = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
];

const DominantSeventhSusFourth = [
  Interval.PerfectUnison,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
];

const DominantSeventhSusSecondSusFourth = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
];

const MajorSeventhSusSecond = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
];

const MajorSeventhSusFourth = [
  Interval.PerfectUnison,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
];

const MajorSeventhSusSecondSusFourth = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
];

class Chord {
  final Note note;
  final List<Interval> structure;
  final Interval inversion;

  static String structureName(List<Interval> structure) {
    switch (structure) {
      case PowerChord:
        return "5";
      case Minor:
        return "min";
      case Major:
        return "";
      case Diminished:
        return "dim";
      case Augmented:
        return "aug";
      case MajorFlatFifth:
        return "(♭5)";
      case SusSecond:
        return "sus2";
      case SusFourth:
        return "sus4";
      case SusSecondSusFourth:
        return "sus2sus4";
      case MajorSixth:
        return "6";
      case MinorSixth:
        return "min6";
      case MajorFlatSixth:
        return "(♭6)";
      case MinorFlatSixth:
        return "min(♭6)";
      case DominantSeventh:
        return "7";
      case MajorSeventh:
        return "maj7";
      case MinorMajorSeventh:
        return "min(maj7)";
      case MinorSeventh:
        return "(♭7)";
      case AugmentedMajorSeventh:
        return "aug(maj7)";
      case AugmentedSeventh:
        return "aug7";
      case HalfDiminishedSeventh:
        return "m7(♭5)";
      case DiminishedSeventh:
        return "(o7)";
      case DominantSeventhFlatFive:
        return "7(♭5)";
      case DominantSeventhSusSecond:
        return "7sus2";
      case DominantSeventhSusFourth:
        return "7sus4";
      case DominantSeventhSusSecondSusFourth:
        return "7sus2sus4";
      case MajorSeventhSusSecond:
        return "M7sus2";
      case MajorSeventhSusFourth:
        return "M7sus4";
      case MajorSeventhSusSecondSusFourth:
        return "M7sus2sus4";
    }
    throw Exception("unknown chord structure");
  }

  const Chord(
      {required this.note, required this.structure, required this.inversion});

  static List<List<Interval>> chords() {
    return [
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
    ];
  }

//  List<Note> notes(Note root) {
//    return List<Note>.from(structure.map((e) => root.interval(e)));
//  }

  String name() {
    return note.natural() + Chord.structureName(structure);
  }

  List<Interval> intervals() {
    return structure;
  }

  List<Note> notes() {
    return structure.map((e) => note.interval(e)).toList();
  }
}
