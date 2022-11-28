import 'package:dart_harmony/natural.dart';
import 'package:dart_harmony/interval.dart';
import 'package:test/test.dart';

void test_naturals() {
  test('naturals_01', () {
    expect(naturals().length, 7);
  });

  test('naturals_02', () {
    expect(naturals().map((e) => e.name), [
      Natural.C.name,
      Natural.D.name,
      Natural.E.name,
      Natural.F.name,
      Natural.G.name,
      Natural.A.name,
      Natural.B.name
    ]);
  });

  test('naturals_03', () {
    expect(naturals().map((e) => e.position), [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
    ]);
  });
}
