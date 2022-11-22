class Natural {
  final String _name;
  final int _position;
  final int _semitone;

  const Natural(this._name, this._position, this._semitone);

  static const C = Natural("C", 0, 0);
  static const D = Natural("D", 1, 2);
  static const E = Natural("E", 2, 4);
  static const F = Natural("F", 3, 5);
  static const G = Natural("G", 4, 7);
  static const A = Natural("A", 5, 9);
  static const B = Natural("B", 6, 11);

  static List<Natural> naturals() {
    return [C, D, E, F, G, A, B];
  }

  String name() => _name;
  int position() => _position;
  int semitone() => _semitone;
}
