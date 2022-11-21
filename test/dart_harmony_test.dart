import 'package:dart_harmony/harmony.dart';
import 'package:dart_harmony/natural.dart';
import 'package:dart_harmony/interval.dart';
import 'package:test/test.dart';

void main() {
  test('naturals_01', () {
    expect(Natural.naturals().length, 7);
  });

  test('naturals_02', () {
    expect(Natural.naturals().map((e) => e.name), [
      Natural.C.name,
      Natural.D.name,
      Natural.E.name,
      Natural.F.name,
      Natural.G.name,
      Natural.A.name,
      Natural.B.name
    ]);
  });

  test('intervals_01', () {
    expect(Interval.intervals().length, 45);
  });

  test('intervals_02', () {
    expect(Interval.intervals().map((e) => e.name()), [
      "P1",
      "A1",
      "d2",
      "m2",
      "M2",
      "A2",
      "d3",
      "m3",
      "M3",
      "A3",
      "d4",
      "P4",
      "A4",
      "d5",
      "P5",
      "A5",
      "d6",
      "m6",
      "M6",
      "A6",
      "d7",
      "m7",
      "M7",
      "A7",
      "d8",
      "P8",
      "A8",
      "d9",
      "m9",
      "M9",
      "A9",
      "d10",
      "m10",
      "M10",
      "A10",
      "d11",
      "P11",
      "A11",
      "d12",
      "P12",
      "A12",
      "d13",
      "m13",
      "M13",
      "A13",
    ]);
  });

  test('intervals_03', () {
    expect(Interval.fromConfiguration(0, 0), Interval.PerfectUnison);
    expect(Interval.fromConfiguration(0, 1), Interval.AugmentedUnison);

    expect(Interval.fromConfiguration(1, 0), Interval.DiminishedSecond);
    expect(Interval.fromConfiguration(1, 1), Interval.MinorSecond);
    expect(Interval.fromConfiguration(1, 2), Interval.MajorSecond);
    expect(Interval.fromConfiguration(1, 3), Interval.AugmentedSecond);

    expect(Interval.fromConfiguration(2, 2), Interval.DiminishedThird);
    expect(Interval.fromConfiguration(2, 3), Interval.MinorThird);
    expect(Interval.fromConfiguration(2, 4), Interval.MajorThird);
    expect(Interval.fromConfiguration(2, 5), Interval.AugmentedThird);

    expect(Interval.fromConfiguration(3, 4), Interval.DiminishedFourth);
    expect(Interval.fromConfiguration(3, 5), Interval.PerfectFourth);
    expect(Interval.fromConfiguration(3, 6), Interval.AugmentedFourth);

    expect(Interval.fromConfiguration(4, 6), Interval.DiminishedFifth);
    expect(Interval.fromConfiguration(4, 7), Interval.PerfectFifth);
    expect(Interval.fromConfiguration(4, 8), Interval.AugmentedFifth);

    expect(Interval.fromConfiguration(5, 7), Interval.DiminishedSixth);
    expect(Interval.fromConfiguration(5, 8), Interval.MinorSixth);
    expect(Interval.fromConfiguration(5, 9), Interval.MajorSixth);
    expect(Interval.fromConfiguration(5, 10), Interval.AugmentedSixth);

    expect(Interval.fromConfiguration(6, 9), Interval.DiminishedSeventh);
    expect(Interval.fromConfiguration(6, 10), Interval.MinorSeventh);
    expect(Interval.fromConfiguration(6, 11), Interval.MajorSeventh);
    expect(Interval.fromConfiguration(6, 12), Interval.AugmentedSeventh);

    expect(Interval.fromConfiguration(7, 11), Interval.DiminishedOctave);
    expect(Interval.fromConfiguration(7, 12), Interval.PerfectOctave);
    expect(Interval.fromConfiguration(7, 13), Interval.AugmentedOctave);

    expect(Interval.fromConfiguration(8, 12), Interval.DiminishedNinth);
    expect(Interval.fromConfiguration(8, 13), Interval.MinorNinth);
    expect(Interval.fromConfiguration(8, 14), Interval.MajorNinth);
    expect(Interval.fromConfiguration(8, 15), Interval.AugmentedNinth);

    expect(Interval.fromConfiguration(9, 14), Interval.DiminishedTenth);
    expect(Interval.fromConfiguration(9, 15), Interval.MinorTenth);
    expect(Interval.fromConfiguration(9, 16), Interval.MajorTenth);
    expect(Interval.fromConfiguration(9, 17), Interval.AugmentedTenth);

    expect(Interval.fromConfiguration(10, 16), Interval.DiminishedEleventh);
    expect(Interval.fromConfiguration(10, 17), Interval.PerfectEleventh);
    expect(Interval.fromConfiguration(10, 18), Interval.AugmentedEleventh);

    expect(Interval.fromConfiguration(11, 18), Interval.DiminishedTwelfth);
    expect(Interval.fromConfiguration(11, 19), Interval.PerfectTwelfth);
    expect(Interval.fromConfiguration(11, 20), Interval.AugmentedTwelfth);

    expect(Interval.fromConfiguration(12, 19), Interval.DiminishedThirteenth);
    expect(Interval.fromConfiguration(12, 20), Interval.MinorThirteenth);
    expect(Interval.fromConfiguration(12, 21), Interval.MajorThirteenth);
    expect(Interval.fromConfiguration(12, 22), Interval.AugmentedThirteenth);
  });
}
