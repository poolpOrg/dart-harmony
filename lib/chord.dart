import 'natural.dart';
import 'note.dart';
import 'interval.dart';

class Chord {
  final List<Interval> structure;

static const PowerChord = Chord(structure: [
    Interval.PerfectUnison,
    Interval.PerfectFifth,
  ]);

static const Major = Chord(structure: [
    Interval.PerfectUnison,
    Interval.MajorThird,
    Interval.PerfectFifth,
  ]);

static const Minor = Chord(structure: [
    Interval.PerfectUnison,
    Interval.MinorThird,
    Interval.PerfectFifth,
  ]);

static const Diminished = Chord(structure: [
    Interval.PerfectUnison,
    Interval.MinorThird,
    Interval.DiminishedFifth,
  ]);

static const Augmented = Chord(structure: [
    Interval.PerfectUnison,
    Interval.MajorThird,
    Interval.AugmentedFifth,
  ]);

static const MajorFlatFifth = Chord(structure: [
    Interval.PerfectUnison,
    Interval.MajorThird,
    Interval.DiminishedFifth,
  ]);

static const SusSecond = Chord(structure: [
    Interval.PerfectUnison,
    Interval.MajorSecond,
    Interval.PerfectFifth,
]);

static const SusFourth = Chord(structure: [
    Interval.PerfectUnison,
    Interval.PerfectFourth,
    Interval.PerfectFifth,
]);

static const SusSecondSusFourth = Chord(structure: [
    Interval.PerfectUnison,
    Interval.MajorSecond,
    Interval.PerfectFourth,
    Interval.PerfectFifth,
]);

static const MajorSixth = Chord(structure: [
    Interval.PerfectUnison,
    Interval.MajorThird,
    Interval.PerfectFifth,
    Interval.MajorSixth
  ]);

static const MinorSixth = Chord(structure: [
    Interval.PerfectUnison,
    Interval.MinorThird,
    Interval.PerfectFifth,
    Interval.MajorSixth
  ]);

static const MajorFlatSixth = Chord(structure: [
    Interval.PerfectUnison,
    Interval.MajorThird,
    Interval.PerfectFifth,
    Interval.MinorSixth
  ]);

static const MinorFlatSixth = Chord(structure: [
    Interval.PerfectUnison,
    Interval.MinorThird,
    Interval.PerfectFifth,
    Interval.MinorSixth
  ]);

static const DominantSeventh = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
]);

static const MajorSeventh = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
]);

static const MinorMajorSeventh = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
]);

static const MinorSeventh = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
]);

static const AugmentedMajorSeventh = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.AugmentedFifth,
  Interval.MajorSeventh,
]);

static const AugmentedSeventh = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.AugmentedFifth,
  Interval.MinorSeventh,
]);

static const HalfDiminishedSeventh = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.DiminishedFifth,
  Interval.MinorSeventh,
]);

static const DiminishedSeventh = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MinorThird,
  Interval.DiminishedFifth,
  Interval.DiminishedSeventh,
]);

static const DominantSeventhFlatFive = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MajorThird,
  Interval.DiminishedFifth,
  Interval.MinorSeventh,
]);

static const DominantSeventhSusSecond = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
]);

static const DominantSeventhSusFourth = Chord(structure:[
  Interval.PerfectUnison,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
]);

static const DominantSeventhSusSecondSusFourth = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MinorSeventh,
]);

static const MajorSeventhSusSecond = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
]);

static const MajorSeventhSusFourth = Chord(structure:[
  Interval.PerfectUnison,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
]);

static const MajorSeventhSusSecondSusFourth = Chord(structure:[
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSeventh,
]);

/*
static const DominantSeventh = Chord(structure:[

]);
*/


  const Chord({required this.structure});

  List<Note> notes(Note root) {
    return List<Note>.from(structure.map((e) => root.interval(e)));
  }
}
