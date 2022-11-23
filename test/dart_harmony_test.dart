import 'package:dart_harmony/natural.dart';
import 'package:dart_harmony/interval.dart';
import 'package:test/test.dart';

void main() {
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

  test('intervals_01', () {
    expect(intervals().length, 7);
  });

  test('intervals_02', () {
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
}
