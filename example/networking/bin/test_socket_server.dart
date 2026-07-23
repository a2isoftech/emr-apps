// ignore_for_file: avoid_print

import 'dart:io';

Future<void> main(List<String> args) async {
  final port = args.length == 1 ? int.parse(args.first) : 4000;
  final server = await HttpServer.bind(InternetAddress.anyIPv4, port);
  final serverInfo = '${server.address.address}:${server.port}';

  print('Socket server listening on $serverInfo...');

  server.listen((HttpRequest request) {
    if (WebSocketTransformer.isUpgradeRequest(request)) {
      print('$serverInfo Handling websocket upgrade');

      WebSocketTransformer.upgrade(
        request,
        protocolSelector: (protocols) => 'graphql-ws',
      ).then((webSocket) => handleWebSocket(webSocket, serverInfo));
    } else {
      print(
        '$serverInfo Regular ${request.method} request for: '
        '${request.uri.path}',
      );

      request.response.headers.add('Access-Control-Allow-Origin', '*');
      request.response.headers.add('Access-Control-Allow-Headers', '*');
      request.response.headers
          .add('Access-Control-Allow-Methods', 'POST,GET,DELETE,PUT,OPTIONS');

      if (request.method == 'OPTIONS') {
        request.response.statusCode = HttpStatus.noContent;
      } else {
        request.response.statusCode = HttpStatus.ok;
        request.response.write('HTTP ${DateTime.now().toIso8601String()}');
      }

      request.response.close();
    }
  });
}

Future<void> handleWebSocket(WebSocket webSocket, String serverInfo) async {
  print('$serverInfo Client connected!');

  webSocket.listen(
    (data) async {
      print('$serverInfo Client sent: $data');
    },
    onDone: () {
      print('$serverInfo Client disconnected');
      webSocket.close();
    },
  );

  while (true) {
    if (webSocket.readyState == WebSocket.open) {
      final timestamp = DateTime.now().toIso8601String();

      try {
        webSocket.add(timestamp);

        print(timestamp);
      } catch (e) {
        print(e);
      }
    } else {
      print('Socket is not open');
      break;
    }

    await Future.delayed(const Duration(seconds: 1), () {});
  }
}
