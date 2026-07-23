import 'dart:async';
import 'dart:io';

class EmrWebSocketChannel {
  EmrWebSocketChannel({
    this.onData,
    this.onDone,
  });

  WebSocket? _webSocket;

  final void Function(dynamic)? onData;

  final void Function()? onDone;

  Future<bool> connect(Uri uri, [Iterable<String>? protocols]) {
    // We need to wait until the WebSocket is open, before we can return a bool
    // from this method indicating a successful connection.
    final completer = Completer<bool>();

    WebSocket.connect(
      uri.toString(),
      protocols: protocols,
    ).then((webSocket) {
      _webSocket = webSocket;

      if (!completer.isCompleted) {
        completer.complete(true);
      }

      webSocket.listen(
        (event) {
          onData?.call(event);
        },
        onDone: () {
          onDone?.call();
        },
      );
    }).catchError((Object error) {
      if (!completer.isCompleted) {
        completer.complete(false);
      }
    });

    return completer.future;
  }

  void send(String message) {
    // 1 = Open
    if (_webSocket == null || _webSocket!.readyState != 1) {
      throw Exception('The web socket is not open');
    }
    _webSocket!.add(message);
  }

  Future<dynamic>? close([int? code, String? reason]) {
    return _webSocket?.close(code, reason);
  }
}
