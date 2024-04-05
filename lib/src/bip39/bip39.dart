int _entropyLength(int words) {
  switch (words) {
    case 12:
      return 128;
    case 15:
      return 160;
    case 18:
      return 192;
    case 21:
      return 224;
    case 24:
      return 256;
    default:
      throw ArgumentError('Invalid number of words');
  }
}

int _checkSumLength(int words) {
  return words ~/ 3;
}

class Bip39 {
  int entropyLength(int words) {
    return _entropyLength(words);
  }

  int checkSumLength(int words) {
    return _checkSumLength(words);
  }
}
