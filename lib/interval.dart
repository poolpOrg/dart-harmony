// ignore_for_file: constant_identifier_names

enum Interval {
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
}

extension IntervalExtension on Interval {
  String get name {
    switch (this) {
      case Interval.PerfectUnison:
        return "P1";
      case Interval.AugmentedUnison:
        return "A1";

      case Interval.DiminishedSecond:
        return "d2";
      case Interval.MinorSecond:
        return "m2";
      case Interval.MajorSecond:
        return "M2";
      case Interval.AugmentedSecond:
        return "A2";

      case Interval.DiminishedThird:
        return "d3";
      case Interval.MinorThird:
        return "m3";
      case Interval.MajorThird:
        return "M3";
      case Interval.AugmentedThird:
        return "A3";

      case Interval.DiminishedFourth:
        return "d4";
      case Interval.PerfectFourth:
        return "P4";
      case Interval.AugmentedFourth:
        return "A4";

      case Interval.DiminishedFifth:
        return "d5";
      case Interval.PerfectFifth:
        return "P5";
      case Interval.AugmentedFifth:
        return "A5";

      case Interval.DiminishedSixth:
        return "d6";
      case Interval.MinorSixth:
        return "m6";
      case Interval.MajorSixth:
        return "M6";
      case Interval.AugmentedSixth:
        return "A6";

      case Interval.DiminishedSeventh:
        return "d7";
      case Interval.MinorSeventh:
        return "m7";
      case Interval.MajorSeventh:
        return "M7";
      case Interval.AugmentedSeventh:
        return "A7";

      case Interval.DiminishedOctave:
        return "d8";
      case Interval.PerfectOctave:
        return "P8";
      case Interval.AugmentedOctave:
        return "A8";

      case Interval.DiminishedNinth:
        return "d9";
      case Interval.MinorNinth:
        return "m9";
      case Interval.MajorNinth:
        return "M9";
      case Interval.AugmentedNinth:
        return "A9";

      case Interval.DiminishedTenth:
        return "d10";
      case Interval.MinorTenth:
        return "m10";
      case Interval.MajorTenth:
        return "M10";
      case Interval.AugmentedTenth:
        return "A10";

      case Interval.DiminishedEleventh:
        return "d11";
      case Interval.PerfectEleventh:
        return "P11";
      case Interval.AugmentedEleventh:
        return "A11";

      case Interval.DiminishedTwelfth:
        return "d12";
      case Interval.PerfectTwelfth:
        return "P12";
      case Interval.AugmentedTwelfth:
        return "A12";

      case Interval.DiminishedThirteenth:
        return "d13";
      case Interval.MinorThirteenth:
        return "m13";
      case Interval.MajorThirteenth:
        return "M13";
      case Interval.AugmentedThirteenth:
        return "A13";
    }
  }

  int get position {
    switch (this) {
      case Interval.PerfectUnison:
        return 0;
      case Interval.AugmentedUnison:
        return 0;

      case Interval.DiminishedSecond:
        return 1;
      case Interval.MinorSecond:
        return 1;
      case Interval.MajorSecond:
        return 1;
      case Interval.AugmentedSecond:
        return 1;

      case Interval.DiminishedThird:
        return 2;
      case Interval.MinorThird:
        return 2;
      case Interval.MajorThird:
        return 2;
      case Interval.AugmentedThird:
        return 2;

      case Interval.DiminishedFourth:
        return 3;
      case Interval.PerfectFourth:
        return 3;
      case Interval.AugmentedFourth:
        return 3;

      case Interval.DiminishedFifth:
        return 4;
      case Interval.PerfectFifth:
        return 4;
      case Interval.AugmentedFifth:
        return 4;

      case Interval.DiminishedSixth:
        return 5;
      case Interval.MinorSixth:
        return 5;
      case Interval.MajorSixth:
        return 5;
      case Interval.AugmentedSixth:
        return 5;

      case Interval.DiminishedSeventh:
        return 6;
      case Interval.MinorSeventh:
        return 6;
      case Interval.MajorSeventh:
        return 6;
      case Interval.AugmentedSeventh:
        return 6;

      case Interval.DiminishedOctave:
        return 7;
      case Interval.PerfectOctave:
        return 7;
      case Interval.AugmentedOctave:
        return 7;

      case Interval.DiminishedNinth:
        return 8;
      case Interval.MinorNinth:
        return 8;
      case Interval.MajorNinth:
        return 8;
      case Interval.AugmentedNinth:
        return 8;

      case Interval.DiminishedTenth:
        return 9;
      case Interval.MinorTenth:
        return 9;
      case Interval.MajorTenth:
        return 9;
      case Interval.AugmentedTenth:
        return 9;

      case Interval.DiminishedEleventh:
        return 10;
      case Interval.PerfectEleventh:
        return 10;
      case Interval.AugmentedEleventh:
        return 10;

      case Interval.DiminishedTwelfth:
        return 11;
      case Interval.PerfectTwelfth:
        return 11;
      case Interval.AugmentedTwelfth:
        return 11;

      case Interval.DiminishedThirteenth:
        return 12;
      case Interval.MinorThirteenth:
        return 12;
      case Interval.MajorThirteenth:
        return 12;
      case Interval.AugmentedThirteenth:
        return 12;
    }
  }

  int get semitones {
    switch (this) {
      case Interval.PerfectUnison:
        return 0;
      case Interval.AugmentedUnison:
        return 1;

      case Interval.DiminishedSecond:
        return 0;
      case Interval.MinorSecond:
        return 1;
      case Interval.MajorSecond:
        return 2;
      case Interval.AugmentedSecond:
        return 3;

      case Interval.DiminishedThird:
        return 2;
      case Interval.MinorThird:
        return 3;
      case Interval.MajorThird:
        return 4;
      case Interval.AugmentedThird:
        return 5;

      case Interval.DiminishedFourth:
        return 4;
      case Interval.PerfectFourth:
        return 5;
      case Interval.AugmentedFourth:
        return 6;

      case Interval.DiminishedFifth:
        return 6;
      case Interval.PerfectFifth:
        return 7;
      case Interval.AugmentedFifth:
        return 8;

      case Interval.DiminishedSixth:
        return 7;
      case Interval.MinorSixth:
        return 8;
      case Interval.MajorSixth:
        return 9;
      case Interval.AugmentedSixth:
        return 10;

      case Interval.DiminishedSeventh:
        return 9;
      case Interval.MinorSeventh:
        return 10;
      case Interval.MajorSeventh:
        return 11;
      case Interval.AugmentedSeventh:
        return 12;

      case Interval.DiminishedOctave:
        return 11;
      case Interval.PerfectOctave:
        return 12;
      case Interval.AugmentedOctave:
        return 13;

      case Interval.DiminishedNinth:
        return 12;
      case Interval.MinorNinth:
        return 13;
      case Interval.MajorNinth:
        return 14;
      case Interval.AugmentedNinth:
        return 15;

      case Interval.DiminishedTenth:
        return 14;
      case Interval.MinorTenth:
        return 15;
      case Interval.MajorTenth:
        return 16;
      case Interval.AugmentedTenth:
        return 17;

      case Interval.DiminishedEleventh:
        return 16;
      case Interval.PerfectEleventh:
        return 17;
      case Interval.AugmentedEleventh:
        return 18;

      case Interval.DiminishedTwelfth:
        return 18;
      case Interval.PerfectTwelfth:
        return 19;
      case Interval.AugmentedTwelfth:
        return 20;

      case Interval.DiminishedThirteenth:
        return 19;
      case Interval.MinorThirteenth:
        return 20;
      case Interval.MajorThirteenth:
        return 21;
      case Interval.AugmentedThirteenth:
        return 22;
    }
  }
}

List<Interval> intervals() {
  return Interval.values;
}

Interval lookupInterval(int position, int semitones) {
  for (var i = 0; i < Interval.values.length; i++) {
    if (Interval.values[i].position == position &&
        Interval.values[i].semitones == semitones) {
      return Interval.values[i];
    }
  }
  throw Exception("no such interval");
}
