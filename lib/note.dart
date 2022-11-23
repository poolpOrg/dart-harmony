// ignore_for_file: constant_identifier_names

import 'natural.dart';
import 'interval.dart';

enum Accidental {
  Natural,
  Flat,
  Sharp,
}

extension AccidentalMethods on Accidental {
  String get name {
    switch (this) {
      case Accidental.Natural:
        return "";
      case Accidental.Flat:
        return "♭";
      case Accidental.Sharp:
        return "♯";
    }
  }

  int get value {
    switch (this) {
      case Accidental.Natural:
        return 0;
      case Accidental.Flat:
        return -1;
      case Accidental.Sharp:
        return 1;
    }
  }
}

enum Octave { C0, C1, C2, C3, C4, C5, C6, C7 }

extension OctaveMethods on Octave {
  String get name {
    switch (this) {
      case Octave.C0:
        return "0";
      case Octave.C1:
        return "1";
      case Octave.C2:
        return "2";
      case Octave.C3:
        return "3";
      case Octave.C4:
        return "4";
      case Octave.C5:
        return "5";
      case Octave.C6:
        return "6";
      case Octave.C7:
        return "7";
    }
  }

  int get value {
    switch (this) {
      case Octave.C0:
        return 0;
      case Octave.C1:
        return 1;
      case Octave.C2:
        return 2;
      case Octave.C3:
        return 3;
      case Octave.C4:
        return 4;
      case Octave.C5:
        return 5;
      case Octave.C6:
        return 6;
      case Octave.C7:
        return 7;
    }
  }

  Octave operator +(int n) {
    var v = value + n;
    switch (v) {
      case 0:
        return Octave.C0;
      case 1:
        return Octave.C1;
      case 2:
        return Octave.C2;
      case 3:
        return Octave.C3;
      case 4:
        return Octave.C4;
      case 5:
        return Octave.C5;
      case 6:
        return Octave.C6;
      case 7:
        return Octave.C7;
      default:
        throw Exception("octave overflow");
    }
  }
}

class Note {
  final Natural note;
  final int accidentals;
  final Octave octave;

  Note({required this.note, required this.accidentals, required this.octave});

  String natural() {
    return note.name;
  }

  String name() {
    if (accidentals == 0) {
      return note.name + octave.name;
    } else if (accidentals < 0) {
      return note.name + ("♭" * -accidentals) + octave.name;
    } else {
      return note.name + ("♯" * accidentals) + octave.name;
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
