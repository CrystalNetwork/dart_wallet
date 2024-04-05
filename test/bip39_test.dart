import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

import 'package:dart_wallet/src/bip39/bip39.dart' as bip39;

void main() {
  var logger = Logger();
  logger.d('Run test...');
  test('Generate mnemonic', () {
    final entropyLength = bip39.Bip39().entropyLength(12);
    logger.d("Entropy length: $entropyLength");
  });

  test('Validate mnemonic', () {

  });

  test('Generate seed', () {

  });
}