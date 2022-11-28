import 'package:dart_harmony/natural.dart';
import 'package:dart_harmony/note.dart';
import 'package:dart_harmony/interval.dart';
import 'package:dart_harmony/scale.dart';
import 'package:dart_harmony/chord.dart';

void main(List<String> arguments) {
  //print(Natural.naturals().map((e) => e.name));
  var natural = naturalParse(arguments.first);
  //print(natural.name);

  var note = noteParse(arguments.first);
  //print(note.name());
  for (var i = 0; i < intervals().length; i++) {
    //if (intervals()[i] == Interval.AugmentedSeventh) {
    //intervals()[i] == Interval.DiminishedOctave) {
    //print(
    //    "${intervals()[i].name}: ${note.interval(intervals()[i]).name(showOctave: true)}");
    //}
  }

  //print(note.name());
  var scale = scaleParse("${note.name()}aeolian");
  print(scale.notes().map((e) => e.name()));
  print(scale.diatonicTriads().map((e) => e.name()));
  print(scale.diatonicSeventhChords().map((e) => e.name()));

/*
  chords().forEach((element) {
    var c = chordParse(note.name() + element.name);
    print(c.name());
    c.notes().sublist(1).forEach((noteName) {
      var inversion =
          chordParse(note.name() + element.name + "/" + noteName.name());
      print("\t${inversion.name()}");
    });
  });
  */
}
