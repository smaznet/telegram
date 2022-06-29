import 'dart:convert';
import 'dart:typed_data';

import 'package:convert/convert.dart';

import '../crypto/auth_key.dart';
import 'memory.dart';

const CURRENT_VERSION = '1';

class StringSession extends MemorySession {
  /**
   * This session file can be easily saved and loaded as a string. According
   * to the initial design, it contains only the data that is necessary for
   * successful connection and authentication, so takeout ID is not stored.

   * It is thought to be used where you don't want to create any on-disk
   * files but would still like to be able to save and load existing sessions
   * by other means.

   * You can use custom `encode` and `decode` functions, if present:

   * `encode` definition must be ``function encode(value: Buffer) -> string:``.
   * `decode` definition must be ``function decode(value: string) -> Buffer:``.
   * @param session {string|null}
   */
  StringSession({String? session}) {
    if (session != null && session.isNotEmpty) {
      if (session[0] != CURRENT_VERSION) {
        throw ('Not a valid string');
      }
      session = session.substring(1);
      var data = base64.decode(session);
      var dataView = ByteData.view(data.buffer);
      var offset = 0;
      dcId = dataView.getUint8(offset);
      offset += 1;

      if (session.length == 352) {
        final ipv4 = dataView.buffer.asUint8List(offset, 4);
        offset += 4;
        serverAddress = '${ipv4[0]}.${ipv4[1]}.${ipv4[2]}.${ipv4[3]}';
      } else {
        final serverAddressLen = dataView.getInt16(offset);
        offset += 2;
        if (serverAddressLen > 100) {
          offset -= 2;

          final list = RegExp(r'\w{1,4}')
              .allMatches(hex.encode(dataView.buffer.asUint8List(offset, 16)))
              .map((e) => e.group(0)!)
              .map((e) => e.replaceFirst(RegExp(r"^0+"), ""))
              .join(":")
              .replaceAll("0000:", ":")
              .replaceAll(RegExp(r":{2,}"), "::");

          serverAddress = list;

          offset += 16;
        } else {
          serverAddress = utf8
              .decode(dataView.buffer.asUint8List(offset, serverAddressLen));
          offset += serverAddressLen;
        }
      }
      this.port = dataView.getInt16(offset);
      this.authKey = AuthKey(null, null);
      this.authKey!.setKey(dataView.buffer.asUint8List(offset + 2));
    }
  }

  getAuthKey(dcId) {
    if (dcId is int && dcId != this.dcId) return null;
    return this.authKey;
  }

  setAuthKey(authKey, dcId) {
    this.authKey = authKey;
  }

  load() async {}

  String save() {
    if (this.authKey == null ||
        this.serverAddress == null ||
        this.port == null) {
      return "";
    }
    List<int>? key = this.authKey?.getKey();
    if (key == null || key.isEmpty) return "";

    final List<int> dcBuffer = [dcId];
    final List<int> addressBuffer = this.serverAddress!.codeUnits;
    ByteData addLenBuffer = ByteData(2);
    addLenBuffer.setInt16(0, addressBuffer.length);

    ByteData portBuffer = ByteData(2);
    portBuffer.setInt16(0, this.port!);

    return CURRENT_VERSION +
        base64Encode([
          ...dcBuffer,
          ...addLenBuffer.buffer.asUint8List(),
          ...addressBuffer,
          ...portBuffer.buffer.asUint8List(),
          ...key,
        ]);
  }
}
