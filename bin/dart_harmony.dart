import 'package:dart_harmony/harmony.dart' as harmony;
import 'package:dart_harmony/natural.dart';
import 'package:dart_harmony/note.dart';
import 'package:dart_harmony/interval.dart';
import 'package:dart_harmony/scale.dart';
import 'package:dart_harmony/chord.dart';

void main(List<String> arguments) {
  //print(Natural.naturals().map((e) => e.name));

  var n =
      Note(note: Natural.C, accidentals: Accidental.Natural, octave: Octave.C4);

  print("5:\t\t${Chord.PowerChord.notes(n).map((e) => e.name())}");
  print("");
  print("Major:\t\t${Chord.Major.notes(n).map((e) => e.name())}");
  print("Minor:\t\t${Chord.Minor.notes(n).map((e) => e.name())}");
  print("Diminished:\t${Chord.Diminished.notes(n).map((e) => e.name())}");
  print("Augmented:\t${Chord.Augmented.notes(n).map((e) => e.name())}");
  print("Major(b5):\t${Chord.MajorFlatFifth.notes(n).map((e) => e.name())}");
  print("");
  print("sus2:\t\t${Chord.SusSecond.notes(n).map((e) => e.name())}");
  print("sus4:\t\t${Chord.SusFourth.notes(n).map((e) => e.name())}");
  print(
      "sus2sus4:\t\t${Chord.SusSecondSusFourth.notes(n).map((e) => e.name())}");
  print("");

  print("Major6:\t\t${Chord.MajorSixth.notes(n).map((e) => e.name())}");
  print("Minor6:\t\t${Chord.MinorSixth.notes(n).map((e) => e.name())}");
  print("Major(b6):\t${Chord.MajorFlatSixth.notes(n).map((e) => e.name())}");
  print("Minor(b6):\t${Chord.MinorFlatSixth.notes(n).map((e) => e.name())}");

  print("");
  print("7:\t\t${Chord.DominantSeventh.notes(n).map((e) => e.name())}");
  print("M7:\t\t${Chord.MajorSeventh.notes(n).map((e) => e.name())}");
  print("m7:\t\t${Chord.MinorSeventh.notes(n).map((e) => e.name())}");
  print("min(M7):\t${Chord.MinorMajorSeventh.notes(n).map((e) => e.name())}");
  print("7(#5):\t\t${Chord.AugmentedSeventh.notes(n).map((e) => e.name())}");
  print(
      "M7(#5):\t\t${Chord.AugmentedMajorSeventh.notes(n).map((e) => e.name())}");
  print(
      "m7(b5):\t\t${Chord.HalfDiminishedSeventh.notes(n).map((e) => e.name())}");
  print("7dim:\t\t${Chord.DiminishedSeventh.notes(n).map((e) => e.name())}");
  print(
      "7(b5):\t\t${Chord.DominantSeventhFlatFive.notes(n).map((e) => e.name())}");

  print(
      "7sus2:\t\t${Chord.DominantSeventhSusSecond.notes(n).map((e) => e.name())}");
  print(
      "7sus4:\t\t${Chord.DominantSeventhSusFourth.notes(n).map((e) => e.name())}");
  print(
      "7sus2sus4:\t${Chord.DominantSeventhSusSecondSusFourth.notes(n).map((e) => e.name())}");
  print(
      "M7sus2:\t\t${Chord.MajorSeventhSusSecond.notes(n).map((e) => e.name())}");
  print(
      "M7sus4:\t\t${Chord.MajorSeventhSusFourth.notes(n).map((e) => e.name())}");
  print(
      "M7sus2sus4:\t${Chord.MajorSeventhSusSecondSusFourth.notes(n).map((e) => e.name())}");

  //print("${n.interval(Interval.MajorSeventh).name()}");
  //print("${n.interval(Interval.AugmentedSeventh).name()}");
  //print("${n.interval(Interval.DiminishedOctave).name()}");
  //for (var i = 0; i < Interval.intervals().length; i++) {
  //  print("${Interval.intervals()[i].name()}: ${n.interval(Interval.intervals()[i]).name()}");
  //}

  //var m = Note(natural: Natural.D, accidentals: Accidental.Natural, octave: 4);
  //print(n.name());
  //print(n.semitone());
  //print(n.distance(m).name());
  //print(n.distance(m).relative().name());
  //print(n.interval(Interval.MajorSeventh).name());

  //print("Ionian:\t\t${Scale.Ionian.notes(n).map((e) => e.name())}");
  //print("Dorian:\t\t${Scale.Dorian.notes(n).map((e) => e.name())}");
  //print("Phyrigian:\t${Scale.Phrygian.notes(n).map((e) => e.name())}");
  //print("Lydian:\t\t${Scale.Lydian.notes(n).map((e) => e.name())}");
  //print("Mixolydian:\t${Scale.Mixolydian.notes(n).map((e) => e.name())}");
  //print("Aeolian:\t${Scale.Aeolian.notes(n).map((e) => e.name())}");
  //print("Locrian:\t${Scale.Locrian.notes(n).map((e) => e.name())}");

  //var m = Note(natural: b, accidentals: Accidental.Sharp, octave: 4);
  //print(m.name());
  //print(m.semitone());
  //print(n.enharmonic(m));

  /*
  print(Interval.PerfectUnison.name());
  print(Interval.AugmentedUnison.name());

  print(Interval.DiminishedSecond.name());
  print(Interval.MinorSecond.name());
  print(Interval.MajorSecond.name());
  print(Interval.AugmentedSecond.name());

  print(Interval.DiminishedThird.name());
  print(Interval.MinorThird.name());
  print(Interval.MajorThird.name());
  print(Interval.AugmentedThird.name());

  print(Interval.DiminishedFourth.name());
  print(Interval.PerfectFourth.name());
  print(Interval.AugmentedFourth.name());

  print(Interval.DiminishedFifth.name());
  print(Interval.PerfectFifth.name());
  print(Interval.AugmentedFifth.name());

  print(Interval.DiminishedSixth.name());
  print(Interval.MinorSixth.name());
  print(Interval.MajorSixth.name());
  print(Interval.AugmentedSixth.name());

  print(Interval.DiminishedSeventh.name());
  print(Interval.MinorSeventh.name());
  print(Interval.MajorSeventh.name());
  print(Interval.AugmentedSeventh.name());

  print(Interval.DiminishedOctave.name());
  print(Interval.PerfectOctave.name());
  print(Interval.AugmentedOctave.name());

  print(Interval.DiminishedNinth.name());
  print(Interval.MinorNinth.name());
  print(Interval.MajorNinth.name());
  print(Interval.AugmentedNinth.name());

  print(Interval.DiminishedTenth.name());
  print(Interval.MinorTenth.name());
  print(Interval.MajorTenth.name());
  print(Interval.AugmentedTenth.name());

  print(Interval.DiminishedEleventh.name());
  print(Interval.PerfectEleventh.name());
  print(Interval.AugmentedEleventh.name());

  print(Interval.DiminishedTwelfth.name());
  print(Interval.PerfectTwelfth.name());
  print(Interval.AugmentedTwelfth.name());

  print(Interval.DiminishedThirteenth.name());
  print(Interval.MinorThirteenth.name());
  print(Interval.MajorThirteenth.name());
  print(Interval.AugmentedThirteenth.name());
*/
/*
  for (var i = 0; i < Interval.intervals().length; i++) {
    var itv = Interval.fromName(Interval.intervals()[i].name());
    print("${itv.name()}");
  }
  */
}
