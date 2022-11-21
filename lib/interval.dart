class Interval {
  final int position;
  final int semitone;

  const Interval({required this.position, required this.semitone});

  static const PerfectUnison = Interval(position: 0, semitone: 0);
  static const AugmentedUnison = Interval(position: 0, semitone: 1);

  static const DiminishedSecond = Interval(position: 1, semitone: 0);
  static const MinorSecond = Interval(position: 1, semitone: 1);
  static const MajorSecond = Interval(position: 1, semitone: 2);
  static const AugmentedSecond = Interval(position: 1, semitone: 3);

  static const DiminishedThird = Interval(position: 2, semitone: 2);
  static const MinorThird = Interval(position: 2, semitone: 3);
  static const MajorThird = Interval(position: 2, semitone: 4);
  static const AugmentedThird = Interval(position: 2, semitone: 5);

  static const DiminishedFourth = Interval(position: 3, semitone: 4);
  static const PerfectFourth = Interval(position: 3, semitone: 5);
  static const AugmentedFourth = Interval(position: 3, semitone: 6);

  static const DiminishedFifth = Interval(position: 4, semitone: 6);
  static const PerfectFifth = Interval(position: 4, semitone: 7);
  static const AugmentedFifth = Interval(position: 4, semitone: 8);

  static const DiminishedSixth = Interval(position: 5, semitone: 7);
  static const MinorSixth = Interval(position: 5, semitone: 8);
  static const MajorSixth = Interval(position: 5, semitone: 9);
  static const AugmentedSixth = Interval(position: 5, semitone: 10);

  static const DiminishedSeventh = Interval(position: 6, semitone: 9);
  static const MinorSeventh = Interval(position: 6, semitone: 10);
  static const MajorSeventh = Interval(position: 6, semitone: 11);
  static const AugmentedSeventh = Interval(position: 6, semitone: 12);

  static const DiminishedOctave = Interval(position: 7, semitone: 11);
  static const PerfectOctave = Interval(position: 7, semitone: 12);
  static const AugmentedOctave = Interval(position: 7, semitone: 13);

  static const DiminishedNinth = Interval(position: 8, semitone: 12);
  static const MinorNinth = Interval(position: 8, semitone: 13);
  static const MajorNinth = Interval(position: 8, semitone: 14);
  static const AugmentedNinth = Interval(position: 8, semitone: 15);

  static const DiminishedTenth = Interval(position: 9, semitone: 14);
  static const MinorTenth = Interval(position: 9, semitone: 15);
  static const MajorTenth = Interval(position: 9, semitone: 16);
  static const AugmentedTenth = Interval(position: 9, semitone: 17);

  static const DiminishedEleventh = Interval(position: 10, semitone: 16);
  static const PerfectEleventh = Interval(position: 10, semitone: 17);
  static const AugmentedEleventh = Interval(position: 10, semitone: 18);

  static const DiminishedTwelfth = Interval(position: 11, semitone: 18);
  static const PerfectTwelfth = Interval(position: 11, semitone: 19);
  static const AugmentedTwelfth = Interval(position: 11, semitone: 20);

  static const DiminishedThirteenth = Interval(position: 12, semitone: 19);
  static const MinorThirteenth = Interval(position: 12, semitone: 20);
  static const MajorThirteenth = Interval(position: 12, semitone: 21);
  static const AugmentedThirteenth = Interval(position: 12, semitone: 22);

  static Interval fromConfiguration(int position, int semitone) {
    var _intervals = intervals();
    for (var i = 0; i < _intervals.length; i++) {
      if (_intervals[i].position == position &&
          _intervals[i].semitone == semitone) {
        return _intervals[i];
      }
    }
    throw Exception("no interval with such configuration");
  }

  bool equals(Interval interval) {
    return position == interval.position && semitone == interval.semitone;
  }

  String name() {
    switch (this) {
      case PerfectUnison:
        return "P1";
      case AugmentedUnison:
        return "A1";

      case DiminishedSecond:
        return "d2";
      case MinorSecond:
        return "m2";
      case MajorSecond:
        return "M2";
      case AugmentedSecond:
        return "A2";

      case DiminishedThird:
        return "d3";
      case MinorThird:
        return "m3";
      case MajorThird:
        return "M3";
      case AugmentedThird:
        return "A3";

      case DiminishedFourth:
        return "d4";
      case PerfectFourth:
        return "P4";
      case AugmentedFourth:
        return "A4";

      case DiminishedFifth:
        return "d5";
      case PerfectFifth:
        return "P5";
      case AugmentedFifth:
        return "A5";

      case DiminishedSixth:
        return "d6";
      case MinorSixth:
        return "m6";
      case MajorSixth:
        return "M6";
      case AugmentedSixth:
        return "A6";

      case DiminishedSeventh:
        return "d7";
      case MinorSeventh:
        return "m7";
      case MajorSeventh:
        return "M7";
      case AugmentedSeventh:
        return "A7";

      case DiminishedOctave:
        return "d8";
      case PerfectOctave:
        return "P8";
      case AugmentedOctave:
        return "A8";

      case DiminishedNinth:
        return "d9";
      case MinorNinth:
        return "m9";
      case MajorNinth:
        return "M9";
      case AugmentedNinth:
        return "A9";

      case DiminishedTenth:
        return "d10";
      case MinorTenth:
        return "m10";
      case MajorTenth:
        return "M10";
      case AugmentedTenth:
        return "A10";

      case DiminishedEleventh:
        return "d11";
      case PerfectEleventh:
        return "P11";
      case AugmentedEleventh:
        return "A11";

      case DiminishedTwelfth:
        return "d12";
      case PerfectTwelfth:
        return "P12";
      case AugmentedTwelfth:
        return "A12";

      case DiminishedThirteenth:
        return "d13";
      case MinorThirteenth:
        return "m13";
      case MajorThirteenth:
        return "M13";
      case AugmentedThirteenth:
        return "A13";

      default:
        return "unknown";
    }
  }

  static Interval fromName(String name) {
    switch (name) {
      case "P1":
        return PerfectUnison;
      case "A1":
        return AugmentedUnison;

      case "d2":
        return DiminishedSecond;
      case "m2":
        return MinorSecond;
      case "M2":
        return MajorSecond;
      case "A2":
        return AugmentedSecond;

      case "d3":
        return DiminishedThird;
      case "m3":
        return MinorThird;
      case "M3":
        return MajorThird;
      case "A3":
        return AugmentedThird;

      case "d4":
        return DiminishedFourth;
      case "P4":
        return PerfectFourth;
      case "A4":
        return AugmentedFourth;

      case "d5":
        return DiminishedFifth;
      case "P5":
        return PerfectFifth;
      case "A5":
        return AugmentedFifth;

      case "d6":
        return DiminishedSixth;
      case "m6":
        return MinorSixth;
      case "M6":
        return MajorSixth;
      case "A6":
        return AugmentedSixth;

      case "d7":
        return DiminishedSeventh;
      case "m7":
        return MinorSeventh;
      case "M7":
        return MajorSeventh;
      case "A7":
        return AugmentedSeventh;

      case "d8":
        return DiminishedOctave;
      case "P8":
        return PerfectOctave;
      case "A8":
        return AugmentedOctave;

      case "d9":
        return DiminishedNinth;
      case "m9":
        return MinorNinth;
      case "M9":
        return MajorNinth;
      case "A9":
        return AugmentedNinth;

      case "d10":
        return DiminishedTenth;
      case "m10":
        return MinorTenth;
      case "M10":
        return MajorTenth;
      case "A10":
        return AugmentedTenth;

      case "d11":
        return DiminishedEleventh;
      case "P11":
        return PerfectEleventh;
      case "A11":
        return AugmentedEleventh;

      case "d12":
        return DiminishedTwelfth;
      case "P12":
        return PerfectTwelfth;
      case "A12":
        return AugmentedTwelfth;

      case "d13":
        return DiminishedThirteenth;
      case "m13":
        return MinorThirteenth;
      case "M13":
        return MajorThirteenth;
      case "A13":
        return AugmentedThirteenth;

      default:
        throw Exception('unknown interval name');
    }
  }

  static List<Interval> intervals() {
    return [
      PerfectUnison,
      AugmentedUnison,
      DiminishedSecond,
      MinorSecond,
      MajorSecond,
      AugmentedSecond,
      DiminishedThird,
      MinorThird,
      MajorThird,
      AugmentedThird,
      DiminishedFourth,
      PerfectFourth,
      AugmentedFourth,
      DiminishedFifth,
      PerfectFifth,
      AugmentedFifth,
      DiminishedSixth,
      MinorSixth,
      MajorSixth,
      AugmentedSixth,
      DiminishedSeventh,
      MinorSeventh,
      MajorSeventh,
      AugmentedSeventh,
      DiminishedOctave,
      PerfectOctave,
      AugmentedOctave,
      DiminishedNinth,
      MinorNinth,
      MajorNinth,
      AugmentedNinth,
      DiminishedTenth,
      MinorTenth,
      MajorTenth,
      AugmentedTenth,
      DiminishedEleventh,
      PerfectEleventh,
      AugmentedEleventh,
      DiminishedTwelfth,
      PerfectTwelfth,
      AugmentedTwelfth,
      DiminishedThirteenth,
      MinorThirteenth,
      MajorThirteenth,
      AugmentedThirteenth
    ];
  }

  Interval relative() {
    return Interval.fromConfiguration(7 - position % 7, 12 - semitone % 12);
  }
}
