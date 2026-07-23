import 'package:emr_one_core/networking/networking.dart';
import 'package:emr_one_core/networking/websocket/_emr_web_socket_channel.dart'
    if (dart.library.io) 'websocket/_emr_web_socket_channel_io.dart'
    if (dart.library.html) 'websocket/_emr_web_socket_channel_html.dart' as emr;
import 'package:http/http.dart';

class RetryContext {
  RetryContext(
    this.policy,
  );

  BaseResponse? httpResponse;

  dynamic error;

  emr.EmrWebSocketChannel? webSocketChannel;

  int attempts = 0;

  final Policy policy;

  bool containsFailure() {
    if (error != null) return true;

    if ((httpResponse?.statusCode ?? 0) >= 300) return true;

    // Whatever the reason for the web socket closing, we treat it as an error.
    if (webSocketChannel != null) return true;

    return false;
  }
}
