import 'package:dart_harmony/natural.dart';
import 'package:dart_harmony/note.dart';
import 'package:test/test.dart';

void test_notes() {
  test('notes_01', () {
    expect(naturals().map((e) => noteParse(e.name).name()), [
      Natural.C.name,
      Natural.D.name,
      Natural.E.name,
      Natural.F.name,
      Natural.G.name,
      Natural.A.name,
      Natural.B.name,
    ]);
  });

  test('notes_02', () {
    expect(naturals().map((e) => noteParse(e.name).name(showOctave: true)), [
      "${Natural.C.name}4",
      "${Natural.D.name}4",
      "${Natural.E.name}4",
      "${Natural.F.name}4",
      "${Natural.G.name}4",
      "${Natural.A.name}4",
      "${Natural.B.name}4",
    ]);
  });

  test('notes_03', () {
    expect(
        naturals().map((e) => noteParse("${e.name}5").name(showOctave: true)), [
      "${Natural.C.name}5",
      "${Natural.D.name}5",
      "${Natural.E.name}5",
      "${Natural.F.name}5",
      "${Natural.G.name}5",
      "${Natural.A.name}5",
      "${Natural.B.name}5",
    ]);
  });

  test('notes_04', () {
    expect(naturals().map((e) => noteParse("${e.name}♭").name()), [
      "${Natural.C.name}♭",
      "${Natural.D.name}♭",
      "${Natural.E.name}♭",
      "${Natural.F.name}♭",
      "${Natural.G.name}♭",
      "${Natural.A.name}♭",
      "${Natural.B.name}♭",
    ]);
  });

  test('notes_05', () {
    expect(naturals().map((e) => noteParse("${e.name}♭♭").name()), [
      "${Natural.C.name}♭♭",
      "${Natural.D.name}♭♭",
      "${Natural.E.name}♭♭",
      "${Natural.F.name}♭♭",
      "${Natural.G.name}♭♭",
      "${Natural.A.name}♭♭",
      "${Natural.B.name}♭♭",
    ]);
  });

  test('notes_06', () {
    expect(naturals().map((e) => noteParse("${e.name}♯").name()), [
      "${Natural.C.name}♯",
      "${Natural.D.name}♯",
      "${Natural.E.name}♯",
      "${Natural.F.name}♯",
      "${Natural.G.name}♯",
      "${Natural.A.name}♯",
      "${Natural.B.name}♯",
    ]);
  });

  test('notes_07', () {
    expect(naturals().map((e) => noteParse("${e.name}♯♯").name()), [
      "${Natural.C.name}♯♯",
      "${Natural.D.name}♯♯",
      "${Natural.E.name}♯♯",
      "${Natural.F.name}♯♯",
      "${Natural.G.name}♯♯",
      "${Natural.A.name}♯♯",
      "${Natural.B.name}♯♯",
    ]);
  });

  test('notes_08', () {
    expect(
        naturals().map((e) => noteParse("${e.name}♭").name(showOctave: true)), [
      "${Natural.C.name}♭4",
      "${Natural.D.name}♭4",
      "${Natural.E.name}♭4",
      "${Natural.F.name}♭4",
      "${Natural.G.name}♭4",
      "${Natural.A.name}♭4",
      "${Natural.B.name}♭4",
    ]);
  });

  test('notes_09', () {
    expect(
        naturals().map((e) => noteParse("${e.name}♭♭").name(showOctave: true)),
        [
          "${Natural.C.name}♭♭4",
          "${Natural.D.name}♭♭4",
          "${Natural.E.name}♭♭4",
          "${Natural.F.name}♭♭4",
          "${Natural.G.name}♭♭4",
          "${Natural.A.name}♭♭4",
          "${Natural.B.name}♭♭4",
        ]);
  });

  test('notes_10', () {
    expect(
        naturals().map((e) => noteParse("${e.name}♯").name(showOctave: true)), [
      "${Natural.C.name}♯4",
      "${Natural.D.name}♯4",
      "${Natural.E.name}♯4",
      "${Natural.F.name}♯4",
      "${Natural.G.name}♯4",
      "${Natural.A.name}♯4",
      "${Natural.B.name}♯4",
    ]);
  });

  test('notes_11', () {
    expect(
        naturals().map((e) => noteParse("${e.name}♯♯").name(showOctave: true)),
        [
          "${Natural.C.name}♯♯4",
          "${Natural.D.name}♯♯4",
          "${Natural.E.name}♯♯4",
          "${Natural.F.name}♯♯4",
          "${Natural.G.name}♯♯4",
          "${Natural.A.name}♯♯4",
          "${Natural.B.name}♯♯4",
        ]);
  });
}
