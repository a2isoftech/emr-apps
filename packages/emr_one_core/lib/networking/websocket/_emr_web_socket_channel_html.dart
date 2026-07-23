// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:async';
import 'dart:js_interop';

import 'package:web/web.dart';

class EmrWebSocketChannel {
  EmrWebSocketChannel({
    this.onData,
    this.onDone,
  });

  WebSocket? _webSocket;

  final void Function(dynamic)? onData;

  final void Function()? onDone;

  Future<bool> connect(Uri uri, [List<String>? protocols]) {
    // We need to wait until the WebSocket is open, before we can return a bool
    // from this method indicating a successful connection.
    final completer = Completer<bool>();

    final webSocket = WebSocket(
      uri.toString(),
      (protocols ?? []).map((protocol) => protocol.toJS).toList().toJS as JSAny,
    );
    _webSocket = webSocket;

    // If the web socket is already open we can complete straight away,
    // otherwise we have to wait for an event to fire.
    if (webSocket.readyState == WebSocket.OPEN) {
      if (!completer.isCompleted) {
        completer.complete(true);
      }
    } else {
      webSocket.onOpen.first.then((_) {
        if (!completer.isCompleted) {
          completer.complete(true);
        }
      });
    }

    webSocket.onError.first.then((error) {
      if (!completer.isCompleted) {
        completer.complete(false);
      }
    });

    // Once we've completed successfully, we can send any data to the callback.
    webSocket.onMessage.listen((event) {
      if (!completer.isCompleted) {
        completer.complete(true);
      } else {
        onData?.call(event.data);
      }
    });

    // If the value of `await completer.future` at this point is `true`, then
    // we know that the connection was opened successfully. If it's `false`,
    // we wouldn't call onDone because we know `connect` returned `false`.
    webSocket.onClose.first.then((event) async {
      if (!completer.isCompleted) {
        completer.complete(false);
      } else if (await completer.future) {
        onDone?.call();
      }
    });

    return completer.future;
  }

  void send(String message) {
    // 1 = Open
    if (_webSocket == null || _webSocket!.readyState != 1) {
      throw Exception('The web socket is not open');
    }

    _webSocket!.send(message.toJS);
  }

  Future<dynamic>? close([int code = 0, String reason = '']) {
    _webSocket?.close(code, reason);

    return Future.value();
  }
}
