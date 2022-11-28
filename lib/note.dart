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

  Natural natural() {
    return note;
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
    var targetInt = target;

    // special case, perfect octave
    if (targetInt.position % 7 == 0 && targetInt.semitones % 12 == 0) {
      return Note(
          note: note,
          accidentals: accidentals,
          octave: octave + targetInt.semitones ~/ 12);
    }

    // first, locate the target natural
    var targetNatural =
        naturals()[(note.position + targetInt.position) % naturals().length];

    // compute origin offset
    var originOffset = note.semitones;

    // compute destination offset from interval
    var destinationOffset = targetInt.semitones % 12;

    // compute distance between targetNatural and destinationOffset
    var distanceTarget =
        targetNatural.semitones - ((originOffset + destinationOffset));

    var targetAccidentals = accidentals - distanceTarget;

    var targetOctave = octave + targetInt.semitones ~/ 12;

    if (targetNatural.position < note.position) {
      targetAccidentals = targetAccidentals - 12;
    }

    if (targetInt == Interval.AugmentedSeventh ||
        targetInt == Interval.AugmentedFourteenth) {
      targetOctave--;
      targetAccidentals = targetAccidentals + 12;
    }
    if (targetInt == Interval.DiminishedOctave ||
        targetInt == Interval.DiminishedFifteenth) {
      targetOctave++;
      targetAccidentals = targetAccidentals - 12;
    }

    if (targetAccidentals < 0) {
      if (-targetAccidentals % 12 == 0) {
        targetAccidentals = 0;
      }
    } else {
      if (targetAccidentals % 12 == 0) {
        targetAccidentals = 0;
      }
    }

    if (targetNatural.position < note.position) {
      targetOctave++;
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
  if (value.isEmpty) {
    throw Exception("empty note name");
  }

  var natural = Natural.C;
  var octave = Octave.C4;

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
    } else if (value[i] == '♮') {
      accidentalsSum = 0;
    } else {
      throw Exception("invalid accidental");
    }
  }

  return Note(note: natural, accidentals: accidentalsSum, octave: octave);
}

List<Note> notes() {
  List<Note> ret = List<Note>.empty(growable: true);
  Natural.values.forEach((e) {
    for (var i = 0; i < 8; i++) {
      ret.add(noteParse("${e.name}♭♭$i"));
      ret.add(noteParse("${e.name}♭$i"));
      ret.add(noteParse("${e.name}$i"));
      ret.add(noteParse("${e.name}♯♯$i"));
    }
  });
  return ret;
}
