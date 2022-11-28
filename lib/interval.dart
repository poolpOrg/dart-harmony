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
  AugmentedThirteenth,
  DiminishedFourteenth,
  MinorFourteenth,
  MajorFourteenth,
  AugmentedFourteenth,
  DiminishedFifteenth,
  PerfectFifteenth,
  AugmentedFifteenth,
}

extension IntervalExtension on Interval {
  String get name {
    switch (this) {
      case Interval.PerfectUnison:
        return "1";
      case Interval.AugmentedUnison:
        return "1aug";

      case Interval.DiminishedSecond:
        return "2dim";
      case Interval.MinorSecond:
        return "2min";
      case Interval.MajorSecond:
        return "2maj";
      case Interval.AugmentedSecond:
        return "2aug";

      case Interval.DiminishedThird:
        return "3dim";
      case Interval.MinorThird:
        return "3min";
      case Interval.MajorThird:
        return "3maj";
      case Interval.AugmentedThird:
        return "3aug";

      case Interval.DiminishedFourth:
        return "4dim";
      case Interval.PerfectFourth:
        return "4";
      case Interval.AugmentedFourth:
        return "4aug";

      case Interval.DiminishedFifth:
        return "5dim";
      case Interval.PerfectFifth:
        return "5";
      case Interval.AugmentedFifth:
        return "5aug";

      case Interval.DiminishedSixth:
        return "6dim";
      case Interval.MinorSixth:
        return "6min";
      case Interval.MajorSixth:
        return "6maj";
      case Interval.AugmentedSixth:
        return "6aug";

      case Interval.DiminishedSeventh:
        return "7dim";
      case Interval.MinorSeventh:
        return "7min";
      case Interval.MajorSeventh:
        return "7maj";
      case Interval.AugmentedSeventh:
        return "7aug";

      case Interval.DiminishedOctave:
        return "8dim";
      case Interval.PerfectOctave:
        return "8";
      case Interval.AugmentedOctave:
        return "8aug";

      case Interval.DiminishedNinth:
        return "9dim";
      case Interval.MinorNinth:
        return "9min";
      case Interval.MajorNinth:
        return "9maj";
      case Interval.AugmentedNinth:
        return "9aug";

      case Interval.DiminishedTenth:
        return "10dim";
      case Interval.MinorTenth:
        return "10min";
      case Interval.MajorTenth:
        return "10maj";
      case Interval.AugmentedTenth:
        return "10aug";

      case Interval.DiminishedEleventh:
        return "11dim";
      case Interval.PerfectEleventh:
        return "11";
      case Interval.AugmentedEleventh:
        return "11aug";

      case Interval.DiminishedTwelfth:
        return "12dim";
      case Interval.PerfectTwelfth:
        return "12";
      case Interval.AugmentedTwelfth:
        return "12aug";

      case Interval.DiminishedThirteenth:
        return "13dim";
      case Interval.MinorThirteenth:
        return "13min";
      case Interval.MajorThirteenth:
        return "13maj";
      case Interval.AugmentedThirteenth:
        return "13aug";

      case Interval.DiminishedFourteenth:
        return "14dim";
      case Interval.MinorFourteenth:
        return "14min";
      case Interval.MajorFourteenth:
        return "14maj";
      case Interval.AugmentedFourteenth:
        return "14aug";

      case Interval.DiminishedFifteenth:
        return "15dim";
      case Interval.PerfectFifteenth:
        return "15";
      case Interval.AugmentedFifteenth:
        return "15aug";
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

      case Interval.DiminishedFourteenth:
        return 13;
      case Interval.MinorFourteenth:
        return 13;
      case Interval.MajorFourteenth:
        return 13;
      case Interval.AugmentedFourteenth:
        return 13;

      case Interval.DiminishedFifteenth:
        return 14;
      case Interval.PerfectFifteenth:
        return 14;
      case Interval.AugmentedFifteenth:
        return 14;
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

      case Interval.DiminishedFourteenth:
        return 21;
      case Interval.MinorFourteenth:
        return 22;
      case Interval.MajorFourteenth:
        return 23;
      case Interval.AugmentedFourteenth:
        return 24;

      case Interval.DiminishedFifteenth:
        return 23;
      case Interval.PerfectFifteenth:
        return 24;
      case Interval.AugmentedFifteenth:
        return 25;
    }
  }

  Interval invert() {
    if (this == Interval.PerfectUnison) {
      return Interval.PerfectOctave;
    }
    if (this == Interval.PerfectOctave) {
      return Interval.PerfectUnison;
    }
    if (this == Interval.AugmentedSeventh) {
      return Interval.DiminishedSecond;
    }
    if (this == Interval.DiminishedOctave) {
      return Interval.AugmentedUnison;
    }
    return lookupInterval(7 - (position % 7), 12 - (semitones % 12));
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

Interval intervalParse(String value) {
  for (var i = 0; i < Interval.values.length; i++) {
    if (Interval.values[i].name == value) {
      return Interval.values[i];
    }
  }
  throw Exception("no such interval");
}
