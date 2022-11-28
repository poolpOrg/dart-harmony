import 'package:dart_harmony/octave.dart';
import 'package:dart_harmony/natural.dart';
import 'package:dart_harmony/interval.dart';
import 'package:test/test.dart';

void test_octaves() {
  test('octaves_01', () {
    expect(octaves().length, 8);
  });

  test('octaves_02', () {
    expect(octaves().map((e) => e.name), [
      Octave.C0.name,
      Octave.C1.name,
      Octave.C2.name,
      Octave.C3.name,
      Octave.C4.name,
      Octave.C5.name,
      Octave.C6.name,
      Octave.C7.name,
    ]);
  });

  test('octaves_03', () {
    expect(octaves().map((e) => e.index), [0, 1, 2, 3, 4, 5, 6, 7]);
  });

  test('octaves_04', () {
    expect(octaves().map((e) => e.value), [0, 1, 2, 3, 4, 5, 6, 7]);
  });
}
