import 'dart:async';
import 'dart:io';

import 'binary_writer.dart';

class FutureSocket {
  Socket? client;
  bool closed = false;
  late final BinaryWriter stream;
  Completer<bool> canRead = new Completer<bool>();

  Future<void> connect(String ip, int port) async {
    stream = new BinaryWriter(new List<int>.empty(growable: true));
    canRead = new Completer<bool>();

    client = await Socket.connect(ip, port, timeout: Duration(seconds: 10));

    this.receive();

    this.closed = false;
    return;
  }

  void write(List<int> data) {
    if (this.closed) {
      throw ("Socket was closed");
    }
    this.client!.add(data);
  }

  Future<void> close() async {
    await this.client!.close();
    this.closed = true;
  }

  Future<List<int>> read(int number) async {
    if (this.closed) {
      throw ("Socket was closed");
    }
    await this.canRead.future;

    if (this.closed) {
      throw ("Socket was closed");
    }
    final toReturn = this.stream.read(number);

    if (this.stream.length == 0) {
      this.canRead = new Completer<bool>();
    }
    return toReturn;
  }

  Future<List<int>> readExactly(int number) async {
    final readData = new BinaryWriter(new List.empty(growable: true));
    while (true) {
      final thisTime = await this.read(number);
      readData.write(thisTime);
      number = number - thisTime.length;
      if (number == 0) {
        return readData.getValue();
      }
    }
  }

  void receive() {
    this.client!.listen(
      (List<int> event) {
        this.stream.write(event);

        if (!this.canRead.isCompleted) {
          this.canRead.complete(true);
        }
      },
    );
  }
}
