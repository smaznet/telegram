import 'package:telegram/tl/base_contructor.dart';
import 'package:telegram/tl/constructors/constructors.dart';

import '../crypto/auth_key.dart';
import 'abstract.dart';

extension _NoDup on List<List<dynamic>> {
  addEntity(List<dynamic> item) {
    this.removeWhere((element) => element[1] == item[1]);
    this.add(item);
  }
}

class MemorySession extends Session {
  String? _serverAddress;
  int _dcId = 0;
  int? _port;
  AuthKey? _authKey;
  List<List<dynamic>> _entities = [];

  MemorySession();
  setDC(int dcId, String serverAddress, int port) {
    this._dcId = dcId | 0;
    this._serverAddress = serverAddress;
    this._port = port;
  }

  int get dcId {
    return this._dcId;
  }

  set dcId(int value) {
    this._dcId = value;
  }

  String? get serverAddress {
    return this._serverAddress;
  }

  set serverAddress(String? serverAddress) {
    this._serverAddress = serverAddress;
  }

  int? get port {
    return this._port;
  }

  set port(int? port) {
    this._port = port;
  }

  AuthKey? get authKey {
    return this._authKey;
  }

  set authKey(AuthKey? value) {
    this._authKey = value;
  }

  entities() {
    return this._entities;
  }

  addEntities<T extends BaseConstructor>(List<T> entities) {
    entities.forEach(addEntity);
  }

  addEntity<T>(T entity) {
    if (entity is InputPeerBase) {
      if (entity is InputPeerUser) {
        _entities.addEntity(["user", entity.userId, entity.accessHash]);
      } else if (entity is InputPeerChannel) {
        _entities.addEntity(["channel", entity.channelId, entity.accessHash]);
      }
    } else if (entity is UserBase) {
      if (entity is User) {
        _entities.addEntity([
          "user",
          entity.id,
          entity.accessHash,
          entity.username?.toLowerCase(),
          entity.phone
        ]);
      } else if (T == UserEmpty) {}
    } else if (entity is ChatBase) {
      if (entity is Chat) {
        _entities.addEntity([
          "chat",
          entity.id,
        ]);
      } else if (entity is Channel) {
        _entities.addEntity([
          "channel",
          entity.id,
          entity.accessHash,
          entity.username?.toLowerCase()
        ]);
      }
    }
  }

  T? getEntity<T>(dynamic id) {
    final findIndex = _entities.indexWhere((element) =>
        element[1] == id ||
        (element.length >= 4 &&
            (element[3] == "$id".toLowerCase() ||
                element[3] == "$id".substring(1).toLowerCase())));
    if (findIndex == -1) return null;
    final List<dynamic> item = _entities[findIndex];
    if (<T>[] is List<InputPeerBase>) {
      if (item.first == "user") {
        return InputPeerUser(
          userId: item[1],
          accessHash: item[2],
        ) as T;
      } else if (item.first == "channel") {
        return InputPeerChannel(
          channelId: item[1],
          accessHash: item[2],
        ) as T;
      } else if (item.first == "chat") {
        return InputPeerChat(
          chatId: item[1],
        ) as T;
      }
    }
    return null;
  }
}
