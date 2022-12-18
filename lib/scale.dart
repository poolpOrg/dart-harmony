// ignore_for_file: constant_identifier_names

import 'package:dart_harmony/accidental.dart';
import 'package:dart_harmony/natural.dart';

import 'note.dart';
import 'chord.dart';
import 'octave.dart';
import 'interval.dart';

enum ScaleStructure {
  Ionian,
  Dorian,
  Phrygian,
  Lydian,
  Mixolydian,
  Aeolian,
  Locrian,
}

const Ionian = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.MajorThird,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSixth,
  Interval.MajorSeventh,
];

const Dorian = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.MinorThird,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSixth,
  Interval.MinorSeventh,
];

const Phrygian = [
  Interval.PerfectUnison,
  Interval.MinorSecond,
  Interval.MinorThird,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MinorSixth,
  Interval.MinorSeventh,
];

const Lydian = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.MajorThird,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSixth,
  Interval.MajorSeventh,
];

const Mixolydian = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.MajorThird,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MajorSixth,
  Interval.MinorSeventh,
];

const Aeolian = [
  Interval.PerfectUnison,
  Interval.MajorSecond,
  Interval.MinorThird,
  Interval.PerfectFourth,
  Interval.PerfectFifth,
  Interval.MinorSixth,
  Interval.MinorSeventh,
];

const Locrian = [
  Interval.PerfectUnison,
  Interval.MinorSecond,
  Interval.MinorThird,
  Interval.PerfectFourth,
  Interval.DiminishedFifth,
  Interval.MinorSixth,
  Interval.MinorSeventh,
];

extension ScaleStructureMethods on ScaleStructure {
  List<Interval> get intervals {
    switch (this) {
      case ScaleStructure.Ionian:
        return Ionian;
      case ScaleStructure.Dorian:
        return Dorian;
      case ScaleStructure.Phrygian:
        return Phrygian;
      case ScaleStructure.Lydian:
        return Lydian;
      case ScaleStructure.Mixolydian:
        return Mixolydian;
      case ScaleStructure.Aeolian:
        return Aeolian;
      case ScaleStructure.Locrian:
        return Locrian;
    }
  }

  String get name {
    switch (this) {
      case ScaleStructure.Ionian:
        return "ionian";
      case ScaleStructure.Dorian:
        return "dorian";
      case ScaleStructure.Phrygian:
        return "phrygian";
      case ScaleStructure.Lydian:
        return "lydian";
      case ScaleStructure.Mixolydian:
        return "myxolidian";
      case ScaleStructure.Aeolian:
        return "aeolian";
      case ScaleStructure.Locrian:
        return "locrian";
    }
  }
}

class Scale {
  final Note note;
  final ScaleStructure structure;

  const Scale({required this.note, required this.structure});

  String name() {
    return note.name() + structure.name;
  }

  List<Note> notes() {
    return List<Note>.from(structure.intervals.map((e) => note.interval(e)));
  }

  List<Chord> diatonicTriads() {
    List<Chord> ret = List<Chord>.empty(growable: true);

    for (var i = 0; i < notes().length; i++) {
      var root = notes()[i];
      var third = notes()[(i + 2) % (notes().length)];
      var fifth = notes()[(i + 4) % (notes().length)];

      if (third.note.index < root.note.index || (i + 2) >= notes().length) {
        third = Note(
            note: third.note,
            accidentals: third.accidentals,
            octave: third.octave + 1);
      }
      if (fifth.note.index < root.note.index || (i + 4) >= notes().length) {
        fifth = Note(
            note: fifth.note,
            accidentals: fifth.accidentals,
            octave: fifth.octave + 1);
      }

      var structure = List<Interval>.empty(growable: true);
      structure.add(root.distance(root));
      structure.add(root.distance(third));
      structure.add(root.distance(fifth));

      ret.add(Chord(
          inversion: Interval.PerfectUnison,
          note: root,
          structure: chordFromStructure(structure)));
    }

    return ret;
  }

  List<Chord> diatonicSeventhChords() {
    List<Chord> ret = List<Chord>.empty(growable: true);

    for (var i = 0; i < notes().length; i++) {
      var root = notes()[i];
      var third = notes()[(i + 2) % (notes().length)];
      var fifth = notes()[(i + 4) % (notes().length)];
      var seventh = notes()[(i + 6) % (notes().length)];

      if (third.note.index < root.note.index || (i + 2) >= notes().length) {
        third = Note(
            note: third.note,
            accidentals: third.accidentals,
            octave: third.octave + 1);
      }
      if (fifth.note.index < root.note.index || (i + 4) >= notes().length) {
        fifth = Note(
            note: fifth.note,
            accidentals: fifth.accidentals,
            octave: fifth.octave + 1);
      }
      if (seventh.note.index < root.note.index || (i + 6) >= notes().length) {
        seventh = Note(
            note: seventh.note,
            accidentals: seventh.accidentals,
            octave: seventh.octave + 1);
      }

      var structure = List<Interval>.empty(growable: true);
      structure.add(root.distance(root));
      structure.add(root.distance(third));
      structure.add(root.distance(fifth));
      structure.add(root.distance(seventh));

      ret.add(Chord(
          inversion: Interval.PerfectUnison,
          note: root,
          structure: chordFromStructure(structure)));
    }

    return ret;
  }

  Scale interval(Interval target) {
    return Scale(note: note.interval(target), structure: structure);
  }
}

Scale scaleParse(String value) {
  if (value.length == 0) {
    throw Exception("empty chord name");
  }

  int noteEnd = 1;
  for (var i = noteEnd; i < value.length; i++) {
    if (value[i] != '♭' &&
        value[i] != '♯' &&
        value[i] != 'b' &&
        value[i] != '#') {
      break;
    }
    noteEnd++;
  }

  var noteName = value.substring(0, noteEnd);
  var scaleName = value.substring(noteEnd);

  ScaleStructure structure = ScaleStructure.Ionian;
  if (scaleName.isNotEmpty) {
    var found = false;
    for (var i = 0; i < ScaleStructure.values.length; i++) {
      if (ScaleStructure.values[i].name == scaleName) {
        structure = ScaleStructure.values[i];
        found = true;
        break;
      }
    }
    if (!found) {
      throw Exception("could not find scale");
    }
  }

  var note = noteParse(noteName);

  var s = Scale(note: note, structure: structure);

  return s;
}

List<ScaleStructure> scales() {
  return ScaleStructure.values.toList();
}

List<Note> ascendingChromaticScale() {
  List<Note> notes = List<Note>.empty(growable: true);
  for (var i = 0; i < naturals().length; i++) {
    notes.add(noteParse(naturals()[i].name));
    if (naturals()[i].name != 'E' && naturals()[i].name != 'B') {
      notes.add(noteParse("${naturals()[i].name}#"));
    }
  }
  return notes;
}

List<Note> descendingChromaticScale() {
  List<Note> notes = List<Note>.empty(growable: true);
  for (var i = 0; i < naturals().length; i++) {
    notes.add(noteParse(naturals()[naturals().length - i - 1].name));
    if (naturals()[naturals().length - i - 1].name != 'C' &&
        naturals()[naturals().length - i - 1].name != 'F') {
      notes.add(noteParse("${naturals()[naturals().length - i - 1].name}b"));
    }
  }
  return notes;
}
