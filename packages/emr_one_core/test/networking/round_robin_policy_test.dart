import 'package:emr_one_core/networking/networking.dart';
import 'package:flutter_test/flutter_test.dart';

import 'servers/test_http_server.dart';
import 'servers/test_socket_server.dart';

void main() {
  const delay = 100;

  var portNumber = 4100;

  test('test round robin URLs', () async {
    final policy = RoundRobinPolicy(
      [
        'https://test1.emrgroup.com',
        'https://test2.emrgroup.com',
        'https://test3.emrgroup.com',
      ],
    );

    final failure = RetryContext(policy)..error = true;

    expect(policy.getUri().toString(), 'https://test1.emrgroup.com');

    policy.willRetry(failure);
    expect(policy.getUri().toString(), 'https://test2.emrgroup.com');

    policy.willRetry(failure);
    expect(policy.getUri().toString(), 'https://test3.emrgroup.com');

    policy.willRetry(failure);
    expect(policy.getUri().toString(), 'https://test1.emrgroup.com');

    policy.willRetry(failure);
    expect(policy.getUri().toString(), 'https://test2.emrgroup.com');

    policy.willRetry(failure);
    expect(policy.getUri().toString(), 'https://test3.emrgroup.com');

    policy.willRetry(failure);
    expect(policy.getUri().toString(), 'https://test1.emrgroup.com');
  });

  test('test round robin against test websocket servers', () async {
    final unavailableTestServer1 = 'ws://127.0.0.1:${portNumber++}';
    final localTestServer1 = await TestSocketServer.create(port: portNumber++);
    final localTestServer2 = await TestSocketServer.create(port: portNumber++);

    final localTestServer1AddressAndPort =
        'ws://${localTestServer1.address.address}:${localTestServer1.port}';
    final localTestServer2AddressAndPort =
        'ws://${localTestServer2.address.address}:${localTestServer2.port}';

    final policy = RoundRobinPolicy([
      unavailableTestServer1,
      localTestServer1AddressAndPort,
      localTestServer2AddressAndPort,
    ])
      ..timeout = const Duration(seconds: 1)
      ..retryDelay = Duration.zero;

    final channel = ResilientWebSocketChannel.withPolicy(policy);
    await channel.start();

    // Wait for messages to be sent/received.
    await Future.delayed(const Duration(milliseconds: delay), () {});

    expect(policy.uri.toString(), localTestServer1AddressAndPort);

    channel.send('close'); // Cause the test server to close the connection.

    // Wait for messages to be sent/received.
    await Future.delayed(const Duration(milliseconds: delay), () {});

    expect(policy.uri.toString(), localTestServer2AddressAndPort);

    // Tidy up.
    await localTestServer1.close(force: true);
    await localTestServer2.close(force: true);
  });

  test('test round robin against test HTTP servers', () async {
    final primaryTestServer = await TestHttpServer.create(port: portNumber++);
    final secondaryTestServer = await TestHttpServer.create(port: portNumber++);

    final policy = RoundRobinPolicy([
      'http://${primaryTestServer.address.address}:${primaryTestServer.port}',
      'http://${secondaryTestServer.address.address}:${secondaryTestServer.port}',
    ])
      ..retryDelay = Duration.zero;

    final client = ResilientHttpClient.withPolicy(policy);

    // Test a successful response from the primary.
    final response1 = await client.get(Uri.parse('/serverinfo'));
    expect(response1.statusCode, 200);
    expect(response1.body, '0.0.0.0:${primaryTestServer.port}');

    // Test a successful response, again from the primary server.
    final response2 = await client.get(Uri.parse('/serverinfo'));
    expect(response2.statusCode, 200);
    expect(response2.body, '0.0.0.0:${primaryTestServer.port}');

    // Close the primary server.
    await primaryTestServer.close(force: true);

    // Test a successful response from the secondary server.
    final response3 = await client.get(Uri.parse('/serverinfo'));
    expect(response3.statusCode, 200);
    expect(response3.body, '0.0.0.0:${secondaryTestServer.port}');

    // Test another successful response from the secondary server.
    final response4 = await client.get(Uri.parse('/serverinfo'));
    expect(response4.statusCode, 200);
    expect(response4.body, '0.0.0.0:${secondaryTestServer.port}');
  });
}
