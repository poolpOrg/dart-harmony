import 'package:dart_harmony/natural.dart';
import 'package:dart_harmony/note.dart';
import 'package:dart_harmony/interval.dart';
import 'package:dart_harmony/scale.dart';
import 'package:dart_harmony/chord.dart';

void main(List<String> arguments) {
  //print(Natural.naturals().map((e) => e.name));

  var n = Note(
      note: Natural.C,
      accidentals: Accidental.Natural.value,
      octave: Octave.C4);
  for (var i = 0; i < Interval.intervals().length; i++) {
    print(
        "${Interval.intervals()[i].name()}: ${n.interval(Interval.intervals()[i]).name()}");
  }

  for (var i = 0; i < Chord.chords().length; i++) {
    var c = Chord(
        note: n,
        structure: Chord.chords()[i],
        inversion: Interval.PerfectUnison);
    print(
        "${c.name()}: ${c.intervals().map((e) => e.name())}  ${c.notes().map((e) => e.name())}");
  }

  for (var i = 0; i < Scale(note: n, structure: Locrian).notes().length; i++) {
    print("${Scale(note: n, structure: Locrian).notes()[i].name()}");
  }
}
