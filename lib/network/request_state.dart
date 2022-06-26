import 'dart:async';

class RequestState<T, U> {
  var containerId, msgId, after, result, data;
  var request;
  late Completer<T> completer;
  RequestState(request, {after: null}) {
    this.containerId = null;
    this.msgId = null;
    this.request = request;
    this.data = request.getBytes();
    this.after = after;
    this.result = null;
    this.completer = new Completer<T>();
  }
}
