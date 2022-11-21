class Natural {
  final String name;
  final int position;
  final int semitone;

  const Natural(
      {required this.name, required this.position, required this.semitone});

  static const C = Natural(name: "C", position: 0, semitone: 0);
  static const D = Natural(name: "D", position: 1, semitone: 2);
  static const E = Natural(name: "E", position: 2, semitone: 4);
  static const F = Natural(name: "F", position: 3, semitone: 5);
  static const G = Natural(name: "G", position: 4, semitone: 7);
  static const A = Natural(name: "A", position: 5, semitone: 9);
  static const B = Natural(name: "B", position: 6, semitone: 11);

  static List<Natural> naturals() {
    return [C, D, E, F, G, A, B];
  }
}
