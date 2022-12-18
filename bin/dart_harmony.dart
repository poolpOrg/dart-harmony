import 'package:dart_harmony/natural.dart';
import 'package:dart_harmony/note.dart';
import 'package:dart_harmony/interval.dart';
import 'package:dart_harmony/scale.dart';
import 'package:dart_harmony/chord.dart';
import 'package:dart_harmony/sound.dart';
import 'package:dart_harmony/tuning.dart';

void main(List<String> arguments) {
  //var sound = Sound(frequency: 440);
  //print(sound);
  //print(sound.frequency);
  //print(sound.harmonics(2).map((e) => e.frequency));

  var tuner = Tuner.EqualTemperament;
  print(tuner.frequency(Tuning.A432, noteParse(arguments[0])).frequency);
}
