import 'natural.dart';
import 'interval.dart';

class Accidental {
  // ignore: constant_identifier_names
  static const int Natural = 0;

  // ignore: constant_identifier_names
  static const int Flat = -1;

  // ignore: constant_identifier_names
  static const int Sharp = 1;
}

class Octave {
  // ignore: constant_identifier_names
  static const int C0 = 0;

  // ignore: constant_identifier_names
  static const int C1 = 1;

  // ignore: constant_identifier_names
  static const int C2 = 2;

  // ignore: constant_identifier_names
  static const int C3 = 3;

  // ignore: constant_identifier_names
  static const int C4 = 4;

  // ignore: constant_identifier_names
  static const int C5 = 5;

  // ignore: constant_identifier_names
  static const int C6 = 6;

  // ignore: constant_identifier_names
  static const int C7 = 7;
}

class Note {
  final Natural note;
  final int accidentals;
  final int octave;

  Note({required this.note, required this.accidentals, required this.octave});

  String name() {
    if (accidentals == 0) {
      return note.name() + octave.toString();
    } else if (accidentals < 0) {
      return note.name() + ("♭" * -accidentals) + octave.toString();
    } else {
      return note.name() + ("♯" * accidentals) + octave.toString();
    }
  }

  int semitone() {
    return note.semitone() + accidentals;
  }

  bool enharmonic(Note target) {
    return semitone() % 12 == target.semitone() % 12;
  }

  Note interval(Interval target) {
    var targetInterval = target;

    // special case
    if (targetInterval.position == note.position() &&
        targetInterval.semitone % 12 == 0) {
      return Note(
          note: note,
          accidentals: accidentals,
          octave: octave + targetInterval.semitone ~/ 12);
    }

    var targetNatural = Natural.naturals()[
        (note.position() + targetInterval.position) %
            Natural.naturals().length];
    var sourceSemitone = note.semitone() + accidentals;

    // . print(targetNatural.position);
    //  print(sourceSemitone);

    var targetOctave = octave + targetInterval.semitone ~/ 12;
    if (targetNatural.position() < note.position()) {
      targetOctave++;
    }

    var targetSemitone = targetNatural.semitone() + accidentals;
    var targetAccidentals = accidentals;
    if (targetInterval.semitone < note.semitone()) {
      targetSemitone += 12;
    }

    var targetDistance =
        targetSemitone - (targetInterval.semitone % 12 + sourceSemitone);

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

    var offset1 = octave * 12 + semitone();
    var offset2 = target.octave * 12 + target.semitone();
    if (offset1 > offset2) {
      origin = target;
      destination = this;
    }

    var targetPosition = destination.note.position() - origin.note.position();
    var targetSemitone = destination.semitone() - origin.semitone();

    if (target.octave > octave) {
      targetPosition += 7;
      targetSemitone += 12;
    }

    return Interval.fromConfiguration(targetPosition, targetSemitone);
  }
}
