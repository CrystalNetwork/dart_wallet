import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

import 'package:dart_wallet/src/utils/pbkdf2.dart';

void main() {
  var logger = Logger();
  logger.d('Run test...');

  group('PBKDF2', () {
    test('mnemonic to seed', () {
      final pbkdf2 = PBKDF2();
      const mnemonic =
          "pyramid often brief welcome hazard amused gasp viable home fury earth cupboard uniform toy taste";
      const passphrase = "test";
      const bip39seed =
          "4a577c631437fab976c62d0e765773aa038bd4322d60941617a12a7af733df087bfd87a397c083289cfee22acd806fa5b8b7fb187c0ea1d165e2953a8ab614b9";
      final seed = pbkdf2.process(mnemonic, passphrase: passphrase);
      // Convert seed to hex string and pad with 0 if needed
      final seedHex = seed.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
      expect(seed.length, 64);
      expect(seedHex, bip39seed);

      // logger.d(mnemonic);
      // logger.d(seedHex);
    });

    // Add more test cases as needed
  });
}
