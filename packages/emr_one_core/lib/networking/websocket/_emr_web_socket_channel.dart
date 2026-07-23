// This file provides the structure for EmrWebSocketChannel.
// _emr_web_socket_channel_io.dart and _emr_web_socket_channel_html.dart
// provide platform specific implementations.

class EmrWebSocketChannel {
  /// A custom implementation of a web socket channel, which wraps HTML
  /// and native implementations.
  EmrWebSocketChannel({
    this.onData,
    this.onDone,
  });

  final void Function(dynamic)? onData;

  final void Function()? onDone;

  /// Make a connection to a `WebSocket`. Once a connection is opened this
  /// returns `true`. If there's an error it'll return `false`.
  Future<bool> connect(Uri uri, [Iterable<String>? protocols]) {
    throw UnsupportedError('No implementation provided');
  }

  /// Send a message to the `WebSocket`. If there isn't an open socket an
  /// error is thrown.
  void send(String message) {
    throw UnsupportedError('No implementation provided');
  }

  /// Close the `WebSocket` if there is one opened.
  Future<dynamic>? close([int? code, String? reason]) {
    throw UnsupportedError('No implementation provided');
  }
}
