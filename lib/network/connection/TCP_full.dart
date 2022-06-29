import 'package:crclib/catalog.dart';

import '../../errors/common.dart';
import '../../extensions/future_socket.dart';
import '../../utils.dart';
import 'connection.dart';

class FullPacketCodec extends PacketCodec {
  late int _sendCounter;
  var tag = null;

  FullPacketCodec(connection) : super(connection) {
    this._sendCounter = 0; // Telegram will ignore us otherwise
  }

  List<int> encodePacket(List<int> data) {
// https://core.telegram.org/mtproto#tcp-transport
// total length, sequence number, packet and checksum (CRC32)
    final length = data.length + 12;
    final toSend = new List<int>.empty(growable: true);

    toSend.addAll(readBufferFromBigInt(length, 4, signed: true));

    toSend.addAll(readBufferFromBigInt(this._sendCounter, 4, signed: true));
    toSend.addAll(data);
    toSend.addAll(
        readBufferFromBigInt(new Crc32Xz().convert(toSend), 4, signed: false));
    this._sendCounter += 1;

    return toSend;
  }

  /**
   *
   * @param reader {PromisedWebSockets}
   * @returns {Promise<*>}
   */
  Future<List<int>> readPacket(FutureSocket reader) async {
    final packetLenSeq = await reader.readExactly(8); // 4 and 4

    if (packetLenSeq == false) {
      return [];
    }
    final int packetLen =
        readBigIntFromBuffer(packetLenSeq.sublist(0, 4), signed: true).toInt();

    final body = await reader.readExactly(packetLen - 8);

    final int checksum =
        readBigIntFromBuffer(body.sublist(body.length - 4), signed: false)
            .toInt();

    body.removeRange(body.length - 4, body.length);
    packetLenSeq.addAll(body);
    final validChecksum = new Crc32Xz().convert(packetLenSeq);

    if (!(validChecksum == checksum)) {
      throw InvalidChecksumError();
    }
    return body;
  }
}

class ConnectionTCPFull extends Connection {
  final PacketCodecClass = FullPacketCodec;

  ConnectionTCPFull(ip, port, dcId, loggers) : super(ip, port, dcId, loggers);
}
