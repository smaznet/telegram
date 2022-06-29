import 'dart:io' show Platform;
import 'dart:math';

import 'package:telegram/client/authMethods.dart';
import 'package:telegram/errors/rpc_base_error.dart';
import 'package:telegram/tl/base_contructor.dart';
import 'package:telegram/tl/base_request.dart';
import 'package:telegram/tl/requests/auth.dart';

import '../extensions/logger.dart';
import '../network/MTProto_sender.dart';
import '../network/connection/TCP_full.dart';
import '../sessions/string_session.dart';
import '../tl/all_tl_objects.dart';
import '../tl/constructors/constructors.dart';
import '../tl/requests/help.dart';
import '../tl/requests/requests.dart';
import '../utils.dart';
import 'authMethods.dart' as auth;

const int DEFAULT_DC_ID = 4;
const String DEFAULT_IPV4_IP = '149.154.167.91';
const String DEFAULT_IPV6_IP = '[2001:67c:4e8:f004::a]';
const int DEFAULT_PORT = 443;

class TelegramClient {
  final int apiId;
  late StringSession session;
  late Function(BaseRequest x) _initWith;
  int _connectionRetries = 10, _requestRetries = 10, _retryDelay = 5;
  final String apiHash;
  MTProtoSender? _sender;
  late Logger _log;
  late Type _connection;
  Config? _config;
  List<MTProtoSender> _borrowedSenders = [];
  List<Function(UpdateBase update, List? entities)> _eventBuilders =
      List.empty(growable: true);

  TelegramClient(session,
      {required this.apiId,
      required this.apiHash,
      connection: ConnectionTCPFull,
      langCode: 'en',
      systemLangCode: 'en',
      baseLogger: 'telegram',
      deviceModel: 'Unknown',
      systemVersion: '1.0',
      connectionRetries: 10,
      retryDelay: 5,
      requestRetries: 10,
      appVersion: '1.0'}) {
    this._requestRetries = requestRetries;
    this._connectionRetries = connectionRetries;
    this._connection = connection;
    this._retryDelay = retryDelay;
    this._eventBuilders = [];

    this._log = new Logger();
    this.session = StringSession(session: session);
    _initWith = (BaseRequest x) {
      return new InvokeWithLayer(
        layer: LAYER,
        query: new InitConnection(
          apiId: this.apiId,
          deviceModel: deviceModel ?? Platform.operatingSystem,
          systemVersion: systemVersion ?? Platform.operatingSystemVersion,
          appVersion: appVersion ?? '1.0',
          langCode: langCode,
          langPack: '',
          params: null,
          // this should be left empty.
          systemLangCode: systemLangCode,
          query: x,
          proxy: null, // no proxies yet.
        ),
      );
    };
  }

  _authKeyCallback(authKey, dcId) async {
    this.session.setAuthKey(authKey, dcId);
  }

  _initSession() async {
    await this.session.load();

    if (this.session.serverAddress == null) {
      this.session.setDC(DEFAULT_DC_ID, DEFAULT_IPV4_IP, DEFAULT_PORT);
    }
  }

  _handleUpdate(update) {
    //this.session.processEntities(update)
    // this._entityCache.add(update)

    if (update is Updates || update is UpdatesCombined) {
      // TODO deal with entities
      final entities = List<BaseConstructor>.empty(growable: true);
      for (final x in [...update.users, ...update.chats]) {
        entities.add(x);
      }
      for (final u in update.updates) {
        this._processUpdate(
            update: u, others: update.updates, entities: entities);
      }
    } else if (update is UpdateShort) {
      this._processUpdate(update: update.update, others: null);
    } else {
      this._processUpdate(update: update, others: null);
    }
    // TODO add caching
    // this._stateCache.update(update)
  }

  _processUpdate<T extends BaseConstructor>(
      {update, others, List<T>? entities}) {
    // update._entities = entities ?? [];
    if (entities != null) {
      this.session.addEntities<T>(entities);
    }
    this._dispatchUpdate(update: update, others: others, entities: entities);
  }

  _dispatchUpdate({
    update: null,
    others: null,
    channelId: null,
    entities: null,
    ptsDate: null,
  }) async {
    for (final ev in this._eventBuilders) {
      await ev(update, entities);
    }
  }

  Future<DcOption> getDc(int dcId,
      {bool downloadDc = false, web = false}) async {
    this._log.info("Getting dc ${dcId}");
    if (this._config == null) {
      this._config = await this.invoke(GetConfig());
    }
    for (final dc in this._config!.dcOptions) {
      if (dc.id == dcId) {
        return dc;
      }
    }
    throw ("Cannot find dc $dcId");
  }

  switchDc(int newDc) async {
    this._log.info("Reconnection to new dataCenter dc ${newDc}");
    final dc = await getDc(newDc);
    this.session.setDC(newDc, dc.ipAddress, dc.port);
    await this._sender?.authKey?.setKey(null);
    await this.disconnect();

    return this.connect();
  }

  addEventListener(Function(UpdateBase update, List? entities) listener) {
    this._eventBuilders.add(listener);
  }

  removeEventListener(Function(UpdateBase update, List? entities) listener) {
    this._eventBuilders.remove(listener);
  }

  connect() async {
    await _initSession();
    this._sender = new MTProtoSender(
      this.session.getAuthKey(0),
      logger: this._log,
      dcId: this.session.dcId,
      retries: this._connectionRetries,
      delay: this._retryDelay,
      //autoReconnect: this._autoReconnect,
      //connectTimeout: this._timeout,
      authKeyCallback: this._authKeyCallback,
      updateCallback: this._handleUpdate,
      //isMainSender: true,
    );

    final connection = ConnectionTCPFull(this.session.serverAddress,
        this.session.port, this.session.dcId, this._log);
    if (!await this
        ._sender!
        .connect(connection, eventDispatch: this._dispatchUpdate)) {
      return;
    }
    this.session.setAuthKey(this._sender!.authKey, null);
    await this._sender!.send(this._initWith(
          new GetConfig(),
        ));

    //this._dispatchUpdate({ update: new UpdateConnectionState(1) })

    this._updateLoop();
  }

  isConnected() {
    if (this._sender != null) {
      if (this._sender!.isConnected()) {
        return true;
      }
    }
    return false;
  }

  _updateLoop() async {
    while (this.isConnected()) {
      Random random = Random.secure();

      final rnd = random.nextInt(2 ^ 32);
      await asyncSleep(60);
      // We don't care about the result we just want to send it every
      // 60 seconds so telegram doesn't stop the connection
      try {
        this._sender!.send(new Ping(
              pingId: BigInt.from(rnd),
            ));
      } catch (e) {}

      // We need to send some content-related request at least hourly
      // for Telegram to keep delivering updates, otherwise they will
      // just stop even if we're connected. Do so every 30 minutes.

      // TODO Call getDifference instead since it's more relevant
      /*if (new Date().getTime() - this._lastRequest > 30 * 60 * 1000) {
        try {
          await this.invoke(new requests.updates.GetState())
        } catch (e) {

        }
      }*/
    }
  }

  Future<MTProtoSender> getSender(int dcId) async {
    if (this.session.dcId == dcId) {
      return this._sender!;
    } else {
      final _senderIndex =
          _borrowedSenders.indexWhere((element) => element.dcId == dcId);
      if (_senderIndex > -1) return _borrowedSenders[_senderIndex];

      MTProtoSender sender = MTProtoSender(
        this.session.getAuthKey(dcId),
        dcId: dcId,
        retries: this._connectionRetries,
        delay: this._retryDelay,
        authKeyCallback: this._authKeyCallback,
      );
      await _connectSender(sender, dcId);
      _borrowedSenders.add(sender);
      return sender;
    }
  }

  Future<T> invoke<T, X>(BaseRequest<T, X> request,
      {MTProtoSender? sender}) async {
    return (sender ?? this._sender!).send(request);
  }

  Future start(SignInType signInType) async {
    if (!this.isConnected()) {
      await this.connect();
    }
    await auth.start(this, signInType);
  }

  Future disconnect() async {
    if (this._sender != null) {
      this._sender!.disconnect();
    }
    for (var value in this._borrowedSenders) {
      await value.disconnect();
    }
  }

  Future _connectSender(MTProtoSender sender, int dcId) async {
    try {
      final DcOption dcOption = await getDc(dcId);
      final connection = ConnectionTCPFull(
        dcOption.ipAddress,
        dcOption.port,
        dcId,
        this._log,
      );
      await sender.connect(connection);
      if (this.session.dcId != dcId && !sender.authenticated) {
        final auth = await this.invoke(ExportAuthorization(dcId: dcId));
        await sender.send(this
            ._initWith(ImportAuthorization(id: auth.id, bytes: auth.bytes)));

        sender.authenticated = true;
      }
      return sender;
    } on RPCError catch (err) {
      _log.error("_connectSender RPCERR ${err.message}");
    } catch (err) {
      _log.error("_connectSender $err");
    }
  }
}
