/**
 * Errors not related to the Telegram API itself
 */

/**
 * Occurs when a read operation was cancelled.
 */
class ReadCancelledError implements Exception {
  String cause = "The read operation was cancelled.";

  ReadCancelledError(cause);
}

/**
 * Occurs when a type is not found, for example,
 * when trying to read a TLObject with an invalid constructor code.
 */
class TypeNotFoundError implements Exception {
  int? invalidConstructorId;
  int? remaining;

  TypeNotFoundError({this.invalidConstructorId, this.remaining});

  String toString() =>
      '''Could not find a matching Constructor ID for the TLObject that was supposed to be
    read with ID ${invalidConstructorId}. Most likely, a TLObject was trying to be read when
    it should not be read. Remaining bytes: ${remaining}''';
}

/**
 * Occurs when using the TCP full mode and the checksum of a received
 * packet doesn't match the expected checksum.
 */
class InvalidChecksumError implements Exception {
  int? checksum;
  int? validChecksum;

  InvalidChecksumError({this.checksum, this.validChecksum});

  String toString() =>
      '''Invalid checksum (${checksum} when ${validChecksum} was expected).This
    packet should be skipped''';
}

/**
 * Occurs when the buffer is invalid, and may contain an HTTP error code.
 * For instance, 404 means "forgotten/broken authorization key", while
 */
class InvalidBufferError implements Exception {
  List<int> payload;

  InvalidBufferError({required this.payload});

  String toString() {
    if (payload.length == 4) {
      return '''Invalid response buffer (HTTP code ${payload})''';
    } else {
      return '''Invalid response buffer (too short ${payload})''';
    }
  }
}

/**
 * Generic security error, mostly used when generating a new AuthKey.
 */
class SecurityError implements Exception {
  String reason;

  SecurityError(this.reason);
}

/**
 * Occurs when there's a hash mismatch between the decrypted CDN file
 * and its expected hash.
 */
class CdnFileTamperedError extends SecurityError {
  String reason = 'The CDN file has been altered and its download cancelled.';

  CdnFileTamperedError(this.reason) : super(reason);
}

/**
 * Occurs when handling a badMessageNotification
 */
class BadMessageError implements Exception {
  final ErrorMessages = {
    16: 'msg_id too low (most likely, client time is wrong it would be worthwhile to ' +
        'synchronize it using msg_id notifications and re-send the original message ' +
        'with the “correct” msg_id or wrap it in a container with a new msg_id if the ' +
        'original message had waited too long on the client to be transmitted).',
    17: 'msg_id too high (similar to the previous case, the client time has to be ' +
        'synchronized, and the message re-sent with the correct msg_id).',
    18: 'Incorrect two lower order msg_id bits (the server expects client message msg_id ' +
        'to be divisible by 4).',
    19: 'Container msg_id is the same as msg_id of a previously received message ' +
        '(this must never happen).',
    20: 'Message too old, and it cannot be verified whether the server has received a ' +
        'message with this msg_id or not.',
    32: 'msg_seqno too low (the server has already received a message with a lower ' +
        'msg_id but with either a higher or an equal and odd seqno).',
    33: 'msg_seqno too high (similarly, there is a message with a higher msg_id but with ' +
        'either a lower or an equal and odd seqno).',
    34: 'An even msg_seqno expected (irrelevant message), but odd received.',
    35: 'Odd msg_seqno expected (relevant message), but even received.',
    48: 'Incorrect server salt (in this case, the bad_server_salt response is received with ' +
        'the correct salt, and the message is to be re-sent with it).',
    64: 'Invalid container.',
  };
  int code;
  var request;
  BadMessageError(this.request, this.code);

  String toString() {
    return (this.ErrorMessages[code] ??
        '''Unknown error code (this should not happen): ${code}.''');
  }
}