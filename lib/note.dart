// ignore_for_file: constant_identifier_names

import 'accidental.dart';
import 'natural.dart';
import 'interval.dart';
import 'octave.dart';

class Note {
  final Natural note;
  final int accidentals;
  final Octave octave;

  Note({required this.note, required this.accidentals, required this.octave});

  String natural() {
    return note.name;
  }

  String accidental() {
    if (accidentals == 0) {
      return "";
    }
    if (accidentals < 0) {
      return "♭" * -accidentals;
    } else {
      return "♯" * accidentals;
    }
  }

  String name({bool showOctave = false}) {
    if (accidentals == 0) {
      return note.name + (showOctave ? octave.name : "");
    } else if (accidentals < 0) {
      return note.name + ("♭" * -accidentals) + (showOctave ? octave.name : "");
    } else {
      return note.name + ("♯" * accidentals) + (showOctave ? octave.name : "");
    }
  }

  int semitone() {
    return note.semitones + accidentals;
  }

  bool enharmonic(Note target) {
    return semitone() % 12 == target.semitone() % 12;
  }

  Note interval(Interval target) {
    var targetInterval = target;

    // special case
    if (targetInterval.position == note.position &&
        targetInterval.semitones % 12 == 0) {
      return Note(
          note: note,
          accidentals: accidentals,
          octave: octave + targetInterval.semitones ~/ 12);
    }

    var targetNatural = naturals()[
        (note.position + targetInterval.position) % naturals().length];
    var sourceSemitone = note.semitones + accidentals;

    // . print(targetNatural.position);
    //  print(sourceSemitone);

    var targetOctave = octave + targetInterval.semitones ~/ 12;
    if (targetNatural.position < note.position) {
      targetOctave++;
    }

    var targetSemitone = targetNatural.semitones + accidentals;
    var targetAccidentals = accidentals;
    if (targetInterval.semitones < note.semitones) {
      targetSemitone += 12;
    }

    var targetDistance =
        targetSemitone - (targetInterval.semitones % 12 + sourceSemitone);

    //print(targetDistance);
    targetAccidentals -= targetDistance;
    //print(targetAccidentals);

    if (targetAccidentals < 0) {
      targetAccidentals = -targetAccidentals;
      targetAccidentals = targetAccidentals % 12;
      targetAccidentals = -targetAccidentals;
    } else if (targetAccidentals > 0) {
      targetAccidentals = targetAccidentals % 12;
    }

    return Note(
        note: targetNatural,
        accidentals: targetAccidentals,
        octave: targetOctave);
  }

  Interval distance(Note target) {
    var origin = this;
    var destination = target;

    var offset1 = octave.value * 12 + semitone();
    var offset2 = target.octave.value * 12 + target.semitone();
    if (offset1 > offset2) {
      origin = target;
      destination = this;
    }

    var targetPosition = destination.note.position - origin.note.position;
    var targetSemitone = destination.semitone() - origin.semitone();

    if (target.octave.value > octave.value) {
      targetPosition += 7;
      targetSemitone += 12;
    }

    return lookupInterval(targetPosition, targetSemitone);
  }
}

Note noteParse(String value) {
  if (value.length == 0) {
    throw Exception("empty note name");
  }

  var natural = Natural.C;
  var octave = Octave.C4;
  var accidentals = Accidental.Natural;

  var lastChar = value[value.length - 1];
  var parsedOctave = num.tryParse(value[value.length - 1]);
  if (parsedOctave != null) {
    octave = octaveParse(value[value.length - 1]);
    value = value.substring(0, value.length - 1);
  }

  natural = naturalParse(value[0]);
  value = value.substring(1);

  int accidentalsSum = 0;
  for (var i = 0; i < value.length; i++) {
    if (value[i] == '♭' || value[i] == 'b') {
      accidentalsSum += Accidental.Flat.value as int;
    } else if (value[i] == '♯' || value[i] == '#') {
      accidentalsSum += Accidental.Sharp.value as int;
    }
  }

  return Note(note: natural, accidentals: accidentalsSum, octave: octave);
}
