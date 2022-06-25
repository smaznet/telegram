import 'package:telegram/tl/tlobject.dart';

class RPCError implements Exception {
  int? code;
  String message;
  var request;

  RPCError(this.message, this.request, {this.code});

  String toString() => 'RPCError {0}: {1}{2}'
      .replaceAll('{0}', code.toString())
      .replaceAll('{1}', message)
      .replaceAll('{2}', RPCError._fmtRequest(request));

  static _fmtRequest(request) {
// TODO fix this
    if (request is TLObject) {
      return '(caused by ${request.runtimeType})';
    } else {
      return '';
    }
  }
}
