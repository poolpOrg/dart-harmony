import 'dart:math';
import 'note.dart';
import 'sound.dart';

enum Tuning {
  A432,
  A434,
  A436,
  A438,
  A440,
  A442,
  A444,
  A446;

  static const _nameMap = {
    Tuning.A432: "A432",
    Tuning.A434: "A434",
    Tuning.A436: "A436",
    Tuning.A438: "A438",
    Tuning.A440: "A440",
    Tuning.A442: "A442",
    Tuning.A444: "A444",
    Tuning.A446: "A446",
  };
  String get name => _nameMap[this]!;

  static const _frequencyMap = {
    Tuning.A432: 432.0,
    Tuning.A434: 434.0,
    Tuning.A436: 436.0,
    Tuning.A438: 438.0,
    Tuning.A440: 440.0,
    Tuning.A442: 442.0,
    Tuning.A444: 444.0,
    Tuning.A446: 446.0,
  };
  double get frequency => _frequencyMap[this]!;
}

enum Tuner {
  EqualTemperament;

  static const _nameMap = {
    Tuner.EqualTemperament: "A440",
  };
  String get name => _nameMap[this]!;

  static Map<Tuner, Function(dynamic i)> _rMap = {
    Tuner.EqualTemperament: (i) => pow(2, i / 12),
  };
  dynamic Function(dynamic) get r => _rMap[this]!;

  Sound frequency(Tuning tuning, Note note) {
    var offset = note.semitone() + (note.octave.index * 12);
    var delta = 57 - offset;

    if (delta == 0) {
      return Sound(frequency: tuning.frequency);
    } else if (delta < 0) {
      return Sound(frequency: tuning.frequency * r(-delta));
    } else {
      return Sound(frequency: tuning.frequency / r(delta));
    }
  }
}
