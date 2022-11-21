import 'natural.dart';
import 'interval.dart';

class Octave {
  final int value;
  Octave({required this.value});
}

class Accidental {
  final int value;
  static int Natural = 0;
  static int Flat = -1;
  static int Sharp = 1;

  Accidental({required this.value});
}

class Note {
  final Natural natural;
  final int accidentals;
  final int octave;

  Note(
      {required this.natural, required this.accidentals, required this.octave});

  String name() {
    if (accidentals == 0) {
      return natural.name + octave.toString();
    } else if (accidentals < 0) {
      return natural.name + ("♭" * -accidentals) + octave.toString();
    } else {
      return natural.name + ("♯" * accidentals) + octave.toString();
    }
  }

  int semitone() {
    return natural.semitone + accidentals;
  }

  bool enharmonic(Note target) {
    return semitone() % 12 == target.semitone() % 12;
  }

  Note interval(Interval target) {
    var targetInterval = target;

    // special case
    if (targetInterval.position == natural.position && targetInterval.semitone % 12 == 0) {
      return Note(
          natural: natural,
          accidentals: accidentals,
          octave: octave + targetInterval.semitone ~/ 12);
    }

    var targetNatural = Natural.naturals()[
        (natural.position + targetInterval.position) %
            Natural.naturals().length];
    var sourceSemitone = natural.semitone + accidentals;

  // . print(targetNatural.position);
  //  print(sourceSemitone);

    var targetOctave = octave + targetInterval.semitone ~/ 12;
    if (targetNatural.position < natural.position) {
      targetOctave++;
    }

    var targetSemitone = targetNatural.semitone + accidentals;
    var targetAccidentals = accidentals;
    if (targetInterval.semitone < natural.semitone) {
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
        natural: targetNatural,
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

    var targetPosition = destination.natural.position - origin.natural.position;
    var targetSemitone = destination.semitone() - origin.semitone();

    if (target.octave > octave) {
      targetPosition += 7;
      targetSemitone += 12;
    }

    return Interval.fromConfiguration(targetPosition, targetSemitone);
  }
}
