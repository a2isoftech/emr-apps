// ignore_for_file: avoid_print

import 'dart:io';

// https://developer.mozilla.org/en-US/docs/Web/HTTP/Protocol_upgrade_mechanism
// https://stackoverflow.com/a/10206861
// https://blog.jamesslocum.com/post/74731227156/websocket-programming-with-dart-11

class TestSocketServer {
  static Future<HttpServer> create({int port = 4000}) async {
    final server = await HttpServer.bind(InternetAddress.anyIPv4, port);
    final serverInfo = '${server.address.address}:${server.port}';

    print('$serverInfo HttpServer listening...');

    // server.serverHeader = "Test socket server";

    server.listen((HttpRequest request) {
      if (WebSocketTransformer.isUpgradeRequest(request)) {
        print('$serverInfo Handling websocket upgrade');
        WebSocketTransformer.upgrade(request)
            .then((webSocket) => handleWebSocket(webSocket, serverInfo));
      } else {
        print(
          '$serverInfo Regular ${request.method} request for: '
          '${request.uri.path}',
        );
        request.response.statusCode = HttpStatus.forbidden;
        request.response.reasonPhrase = 'WebSocket connections only';
        request.response.close();
      }
    });

    return server;
  }

  static void handleWebSocket(WebSocket webSocket, String serverInfo) {
    print('$serverInfo Client connected!');

    webSocket.listen(
      (data) async {
        print('$serverInfo Client sent: $data');

        if (data == 'serverinfo') {
          webSocket.add(serverInfo);
        } else if (data == 'close') {
          await webSocket.close();
        } else {
          webSocket.add('echo: $data');
        }
      },
      onDone: () {
        print('$serverInfo Client disconnected');
        webSocket.close();
      },
    );
  }
}
