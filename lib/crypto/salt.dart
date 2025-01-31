import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

class Salt {
  /// Generates a random salt of [length] bytes from a cryptographically secure
  /// random number generator.
  ///
  /// Each element of this list is a byte.
  static List<int> generate(int length) {
    final Uint8List buffer = Uint8List(length);
    final Random rng = Random.secure();
    for (int i = 0; i < length; i++) {
      buffer[i] = rng.nextInt(256);
    }
    return buffer;
  }

  /// Generates a random salt of [length] bytes from a cryptographically secure
  /// random number generator and encodes it to Base64.
  ///
  /// [length] is the number of bytes generated, not the [length] of the base64
  /// encoded string returned. Decoding
  ///
  /// the base64 encoded string will yield [length] number of bytes.
  static String generateAsBase64String(int length) {
    const Base64Encoder encoder = Base64Encoder();
    return encoder.convert(generate(length));
  }
}
