import 'natural.dart';
import 'note.dart';
import 'interval.dart';

class Scale {
  final List<Interval> structure;

  static const Ionian = Scale(structure: [
    Interval.PerfectUnison,
    Interval.MajorSecond,
    Interval.MajorThird,
    Interval.PerfectFourth,
    Interval.PerfectFifth,
    Interval.MajorSixth,
    Interval.MajorSeventh,
    Interval.PerfectOctave,
  ]);

  static const Dorian = Scale(structure: [
    Interval.PerfectUnison,
    Interval.MajorSecond,
    Interval.MinorThird,
    Interval.PerfectFourth,
    Interval.PerfectFifth,
    Interval.MajorSixth,
    Interval.MinorSeventh,
    Interval.PerfectOctave,
  ]);

  static const Phrygian = Scale(structure: [
    Interval.PerfectUnison,
    Interval.MinorSecond,
    Interval.MinorThird,
    Interval.PerfectFourth,
    Interval.PerfectFifth,
    Interval.MinorSixth,
    Interval.MinorSeventh,
    Interval.PerfectOctave,
  ]);

  static const Lydian = Scale(structure: [
    Interval.PerfectUnison,
    Interval.MajorSecond,
    Interval.MajorThird,
    Interval.PerfectFourth,
    Interval.PerfectFifth,
    Interval.MajorSixth,
    Interval.MajorSeventh,
    Interval.PerfectOctave,
  ]);

  static const Mixolydian = Scale(structure: [
    Interval.PerfectUnison,
    Interval.MajorSecond,
    Interval.MajorThird,
    Interval.PerfectFourth,
    Interval.PerfectFifth,
    Interval.MajorSixth,
    Interval.MinorSeventh,
    Interval.PerfectOctave,
  ]);

  static const Aeolian = Scale(structure: [
    Interval.PerfectUnison,
    Interval.MajorSecond,
    Interval.MinorThird,
    Interval.PerfectFourth,
    Interval.PerfectFifth,
    Interval.MinorSixth,
    Interval.MinorSeventh,
    Interval.PerfectOctave,
  ]);

  static const Locrian = Scale(structure: [
    Interval.PerfectUnison,
    Interval.MinorSecond,
    Interval.MinorThird,
    Interval.PerfectFourth,
    Interval.DiminishedFifth,
    Interval.MinorSixth,
    Interval.MinorSeventh,
    Interval.PerfectOctave,
  ]);

  const Scale({required this.structure});

  List<Note> notes(Note root) {
    return List<Note>.from(structure.map((e) => root.interval(e)));
  }
}
