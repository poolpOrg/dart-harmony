import 'package:dart_harmony/natural.dart';
import 'package:dart_harmony/note.dart';
import 'package:dart_harmony/interval.dart';
import 'package:dart_harmony/scale.dart';
import 'package:dart_harmony/chord.dart';

void main(List<String> arguments) {
  //print(Natural.naturals().map((e) => e.name));
  var natural = naturalParse("C");
  //print(natural.name);

  var note = noteParse("C0");
  //print(note.name());

  var chord = chordParse(arguments.first);
  //print(chord.name());

  var curr = noteParse("C0");
  do {
    print(curr.name());
  } while (!(curr = curr.interval(Interval.PerfectFifth)).enharmonic(note));

  curr = noteParse("C0");
  do {
    print(curr.name());
  } while (!(curr = curr.interval(Interval.PerfectFourth)).enharmonic(note));
}
