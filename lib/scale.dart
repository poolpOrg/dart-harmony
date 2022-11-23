import 'note.dart';
import 'interval.dart';

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

class Scale {
  final Note note;
  final List<Interval> structure;

  const Scale({required this.note, required this.structure});

  List<Note> notes() {
    return List<Note>.from(structure.map((e) => note.interval(e)));
  }
}
