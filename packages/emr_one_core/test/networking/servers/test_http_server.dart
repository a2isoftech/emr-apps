// ignore_for_file: avoid_print

import 'dart:io';

class TestHttpServer {
  static Future<HttpServer> create({
    int port = 4000,
    void Function(HttpRequest request)? onRequest,
  }) async {
    final server = await HttpServer.bind(InternetAddress.anyIPv4, port);
    final serverInfo = '${server.address.address}:${server.port}';

    print('$serverInfo HttpServer listening...');

    server.listen((HttpRequest request) async {
      print(
        '$serverInfo Regular ${request.method} request for: '
        '${request.uri.path}',
      );

      request.response.statusCode = HttpStatus.ok;

      onRequest?.call(request);

      if (request.uri.path == '/hello') {
        request.response.write('World');
      } else if (request.uri.path == '/serverinfo') {
        final serverInfo = '${server.address.address}:${server.port}';
        request.response.write(serverInfo);
      } else if (request.uri.path == '/delay2') {
        await Future.delayed(const Duration(seconds: 2), () {});
      } else if (request.headers['content-type']?.first
              .startsWith('multipart/form-data; boundary=') ??
          false) {
        request.response.write('Multipart');
      } else {
        request.response.statusCode = HttpStatus.badRequest;
      }

      await request.response.close();
    });

    return server;
  }
}
