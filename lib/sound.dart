class Sound {
  double frequency;

  Sound({required this.frequency});

  List<Sound> harmonics(int count) {
    return List<int>.generate(count, (i) => i + 1)
        .map((e) => Sound(frequency: e * frequency))
        .toList();
  }
}
