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
  AugmentedFifteenth;

  static const _nameMap = {
    Interval.PerfectUnison: "1",
    Interval.AugmentedUnison: "1aug",
    Interval.DiminishedSecond: "2dim",
    Interval.MinorSecond: "2min",
    Interval.MajorSecond: "2maj",
    Interval.AugmentedSecond: "2aug",
    Interval.DiminishedThird: "3dim",
    Interval.MinorThird: "3min",
    Interval.MajorThird: "3maj",
    Interval.AugmentedThird: "3aug",
    Interval.DiminishedFourth: "4dim",
    Interval.PerfectFourth: "4",
    Interval.AugmentedFourth: "4aug",
    Interval.DiminishedFifth: "5dim",
    Interval.PerfectFifth: "5",
    Interval.AugmentedFifth: "5aug",
    Interval.DiminishedSixth: "6dim",
    Interval.MinorSixth: "6min",
    Interval.MajorSixth: "6maj",
    Interval.AugmentedSixth: "6aug",
    Interval.DiminishedSeventh: "7dim",
    Interval.MinorSeventh: "7min",
    Interval.MajorSeventh: "7maj",
    Interval.AugmentedSeventh: "7aug",
    Interval.DiminishedOctave: "8dim",
    Interval.PerfectOctave: "8",
    Interval.AugmentedOctave: "8aug",
    Interval.DiminishedNinth: "9dim",
    Interval.MinorNinth: "9min",
    Interval.MajorNinth: "9maj",
    Interval.AugmentedNinth: "9aug",
    Interval.DiminishedTenth: "10dim",
    Interval.MinorTenth: "10min",
    Interval.MajorTenth: "10maj",
    Interval.AugmentedTenth: "10aug",
    Interval.DiminishedEleventh: "11dim",
    Interval.PerfectEleventh: "11",
    Interval.AugmentedEleventh: "11aug",
    Interval.DiminishedTwelfth: "12dim",
    Interval.PerfectTwelfth: "12",
    Interval.AugmentedTwelfth: "12aug",
    Interval.DiminishedThirteenth: "13dim",
    Interval.MinorThirteenth: "13min",
    Interval.MajorThirteenth: "13maj",
    Interval.AugmentedThirteenth: "13aug",
    Interval.DiminishedFourteenth: "14dim",
    Interval.MinorFourteenth: "14min",
    Interval.MajorFourteenth: "14maj",
    Interval.AugmentedFourteenth: "14aug",
    Interval.DiminishedFifteenth: "15dim",
    Interval.PerfectFifteenth: "15",
    Interval.AugmentedFifteenth: "15aug",
  };
  String get name => _nameMap[this]!;

  static const _positionMap = {
    Interval.PerfectUnison: 0,
    Interval.AugmentedUnison: 0,
    Interval.DiminishedSecond: 1,
    Interval.MinorSecond: 1,
    Interval.MajorSecond: 1,
    Interval.AugmentedSecond: 1,
    Interval.DiminishedThird: 2,
    Interval.MinorThird: 2,
    Interval.MajorThird: 2,
    Interval.AugmentedThird: 2,
    Interval.DiminishedFourth: 3,
    Interval.PerfectFourth: 3,
    Interval.AugmentedFourth: 3,
    Interval.DiminishedFifth: 4,
    Interval.PerfectFifth: 4,
    Interval.AugmentedFifth: 4,
    Interval.DiminishedSixth: 5,
    Interval.MinorSixth: 5,
    Interval.MajorSixth: 5,
    Interval.AugmentedSixth: 5,
    Interval.DiminishedSeventh: 6,
    Interval.MinorSeventh: 6,
    Interval.MajorSeventh: 6,
    Interval.AugmentedSeventh: 6,
    Interval.DiminishedOctave: 7,
    Interval.PerfectOctave: 7,
    Interval.AugmentedOctave: 7,
    Interval.DiminishedNinth: 8,
    Interval.MinorNinth: 8,
    Interval.MajorNinth: 8,
    Interval.AugmentedNinth: 8,
    Interval.DiminishedTenth: 9,
    Interval.MinorTenth: 9,
    Interval.MajorTenth: 9,
    Interval.AugmentedTenth: 9,
    Interval.DiminishedEleventh: 10,
    Interval.PerfectEleventh: 10,
    Interval.AugmentedEleventh: 10,
    Interval.DiminishedTwelfth: 11,
    Interval.PerfectTwelfth: 11,
    Interval.AugmentedTwelfth: 11,
    Interval.DiminishedThirteenth: 12,
    Interval.MinorThirteenth: 12,
    Interval.MajorThirteenth: 12,
    Interval.AugmentedThirteenth: 12,
    Interval.DiminishedFourteenth: 13,
    Interval.MinorFourteenth: 13,
    Interval.MajorFourteenth: 13,
    Interval.AugmentedFourteenth: 13,
    Interval.DiminishedFifteenth: 14,
    Interval.PerfectFifteenth: 14,
    Interval.AugmentedFifteenth: 14,
  };
  int get position => _positionMap[this]!;

  static const _semitonesMap = {
    Interval.PerfectUnison: 0,
    Interval.AugmentedUnison: 1,
    Interval.DiminishedSecond: 0,
    Interval.MinorSecond: 1,
    Interval.MajorSecond: 2,
    Interval.AugmentedSecond: 3,
    Interval.DiminishedThird: 2,
    Interval.MinorThird: 3,
    Interval.MajorThird: 4,
    Interval.AugmentedThird: 5,
    Interval.DiminishedFourth: 4,
    Interval.PerfectFourth: 5,
    Interval.AugmentedFourth: 6,
    Interval.DiminishedFifth: 6,
    Interval.PerfectFifth: 7,
    Interval.AugmentedFifth: 8,
    Interval.DiminishedSixth: 7,
    Interval.MinorSixth: 8,
    Interval.MajorSixth: 9,
    Interval.AugmentedSixth: 10,
    Interval.DiminishedSeventh: 9,
    Interval.MinorSeventh: 10,
    Interval.MajorSeventh: 11,
    Interval.AugmentedSeventh: 12,
    Interval.DiminishedOctave: 11,
    Interval.PerfectOctave: 12,
    Interval.AugmentedOctave: 13,
    Interval.DiminishedNinth: 12,
    Interval.MinorNinth: 13,
    Interval.MajorNinth: 14,
    Interval.AugmentedNinth: 15,
    Interval.DiminishedTenth: 14,
    Interval.MinorTenth: 15,
    Interval.MajorTenth: 16,
    Interval.AugmentedTenth: 17,
    Interval.DiminishedEleventh: 16,
    Interval.PerfectEleventh: 17,
    Interval.AugmentedEleventh: 18,
    Interval.DiminishedTwelfth: 18,
    Interval.PerfectTwelfth: 19,
    Interval.AugmentedTwelfth: 20,
    Interval.DiminishedThirteenth: 19,
    Interval.MinorThirteenth: 20,
    Interval.MajorThirteenth: 21,
    Interval.AugmentedThirteenth: 22,
    Interval.DiminishedFourteenth: 21,
    Interval.MinorFourteenth: 22,
    Interval.MajorFourteenth: 23,
    Interval.AugmentedFourteenth: 24,
    Interval.DiminishedFifteenth: 23,
    Interval.PerfectFifteenth: 24,
    Interval.AugmentedFifteenth: 25,
  };
  int get semitones => _semitonesMap[this]!;

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
