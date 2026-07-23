import 'dart:convert';
import 'dart:typed_data';

import 'package:emr_one_core/networking/networking.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
// ignore: unnecessary_import
import 'package:http_parser/http_parser.dart';

import 'servers/test_http_server.dart';

void main() {
  var portNumber = 4200;

  test('test get', () async {
    final testServer = await TestHttpServer.create(port: portNumber++);

    final policy =
        SimplePolicy('http://${testServer.address.address}:${testServer.port}');

    final client = ResilientHttpClient.withPolicy(policy);

    final response = await client.get(Uri.parse('/hello'));

    expect(response.statusCode, 200);
    expect(response.body, 'World');

    await testServer.close(force: true);
  });

  test('test get with timeout', () async {
    final testServer = await TestHttpServer.create(port: portNumber++);

    final policy =
        SimplePolicy('http://${testServer.address.address}:${testServer.port}')
          ..timeout = const Duration(seconds: 1)
          ..shouldRetry = (retryContext) => Future.value(false);

    final client = ResilientHttpClient.withPolicy(policy);

    final response = await client.get(Uri.parse('/delay2'));

    expect(response.statusCode, 444); // No Response.

    await testServer.close(force: true);
  });

  test('Absolute URL should be used rather than policy URL(s)', () async {
    final testServer1 = await TestHttpServer.create(port: portNumber++);
    final testServer2 = await TestHttpServer.create(port: portNumber++);

    final policy = SimplePolicy(
      'http://${testServer1.address.address}:${testServer1.port}',
    )..shouldRetry = (retryContext) => Future.value(false);

    final client = ResilientHttpClient.withPolicy(policy);

    final response = await client.get(
      Uri.parse(
        'http://${testServer2.address.address}:${testServer2.port}/serverinfo',
      ),
    );

    expect(response.statusCode, 200);
    expect(response.body, '${testServer2.address.address}:${testServer2.port}');

    await testServer1.close(force: true);
    await testServer2.close(force: true);
  });

  test('Merge headers', () async {
    final testServer1 = await TestHttpServer.create(
      port: portNumber++,
      onRequest: (request) {
        // This header was added by the client.
        expect(
          request.headers['Authorization'].toString(),
          '[Bearer GET-TOKEN]',
        );

        // This header was added by the client.
        expect(request.headers['Idempotency-Key'].toString().length, 38);

        // This header should contain the default policy value.
        expect(
          request.headers['Content-Type'].toString(),
          '[application/json]',
        );

        // This header has been overridden in the request.
        expect(request.headers['Accept'].toString(), '[text/text]');
      },
    );

    final policy = SimplePolicy(
      'http://${testServer1.address.address}:${testServer1.port}',
    )
      ..shouldRetry = ((retryContext) => Future.value(false))
      ..getToken = (() => Future.value('GET-TOKEN'));

    final client = ResilientHttpClient.withPolicy(policy);

    final response = await client.get(
      Uri.parse('/hello'),
      headers: {
        'Accept': 'text/text',
      },
    );

    expect(response.statusCode, 200);
    expect(response.body, 'World');

    await testServer1.close(force: true);
  });

  test('test multipart POST', () async {
    final testServer = await TestHttpServer.create(port: portNumber++);

    final policy =
        SimplePolicy('http://${testServer.address.address}:${testServer.port}');

    final client = ResilientHttpClient.withPolicy(policy);
    final request = MultipartRequest('POST', Uri.parse('graphql'));

    request.fields['operations'] = '{}';

    request.files.add(
      MultipartFile.fromBytes(
        '0',
        Uint8List.fromList(utf8.encode('TEST1')),
        filename: 'test1.txt',
        contentType: MediaType.parse('text/plain'),
      ),
    );

    final streamedResponse = await client.send(request);
    final response = await Response.fromStream(streamedResponse);

    expect(response.statusCode, 200);
    expect(response.body, 'Multipart');

    await testServer.close(force: true);
  });

  test('MockCoreApiClient get', () async {
    final httpClientTest = MockCoreApiClient(
      (request) async {
        return Response(
          'YAY!',
          200,
          headers: {'content-type': 'text/text'},
        );
      },
    );

    final testResult = await httpClientTest.get(Uri.parse('test'));
    expect(testResult, isA<Response>());
    expect(testResult.body, 'YAY!');
  });
}
