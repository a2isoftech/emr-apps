import 'package:emr_one_core/networking/networking.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'policies/test_local_cloud_policy.dart';
import 'resilient_web_socket_channel_test.mocks.dart';
import 'servers/test_socket_server.dart';

// Run:
// `flutter packages pub run build_runner build --delete-conflicting-outputs`
// to generate Mock classes.
@GenerateMocks([SimplePolicy])
void main() {
  const delay = 100;

  var portNumber = 4001;

  test('Single URI - getToken should be called', () async {
    final localTestServer = await TestSocketServer.create(port: portNumber++);

    var getTokenCount = 0;

    final policy = SimplePolicy(
      'ws://${localTestServer.address.address}:${localTestServer.port}',
    )..getToken = () {
        getTokenCount++;

        return Future.value();
      };

    final channel = ResilientWebSocketChannel.withPolicy(policy);
    await channel.start();

    expect(getTokenCount, 1);

    // Tidy up.
    await localTestServer.close(force: true);
  });

  test('test socket call switching from local to cloud', () async {
    final localTestServer = await TestSocketServer.create(port: portNumber++);
    final cloudTestServer = await TestSocketServer.create(port: portNumber++);

    final localTestServerInfo =
        '${localTestServer.address.address}:${localTestServer.port}';
    final cloudTestServerInfo =
        '${cloudTestServer.address.address}:${cloudTestServer.port}';

    final policy = TestLocalCloudPolicy(
      'ws://${localTestServer.address.address}:${localTestServer.port}',
      'ws://${cloudTestServer.address.address}:${cloudTestServer.port}',
    )
      ..connectionMessage = 'serverinfo'
      ..retryDelay = Duration.zero;

    final channel = ResilientWebSocketChannel.withPolicy(policy);
    await channel.start();

    final responses = <String>[];

    channel.stream.listen(responses.add);

    // Wait for messages to be sent/received.
    await Future.delayed(const Duration(milliseconds: delay), () {});

    // Simulate disconnection from WiFi.
    policy.onWiFi = false;
    channel.send('close'); // Cause the test server to close the connection.

    // Wait for messages to be sent/received.
    await Future.delayed(const Duration(milliseconds: delay), () {});

    // Check response messages.
    expect(
      responses.length,
      2,
      reason: 'Expected the stream listener to be called twice',
    );
    expect(
      responses[0],
      localTestServerInfo,
      reason: 'Expected the first response to be the local server info',
    );
    expect(
      responses[1],
      cloudTestServerInfo,
      reason: 'Expected the second response to be the cloud server info',
    );

    // Tidy up.
    await localTestServer.close(force: true);
    await cloudTestServer.close(force: true);
  });

  test('should not auto reconnect after stopping', () async {
    final localTestServer = await TestSocketServer.create(port: portNumber++);

    final policy = MockSimplePolicy();

    when(policy.getToken).thenAnswer((_) => Future.value);

    when(policy.shouldRetry).thenAnswer(
      (_) => (RetryContext _) {
        return Future.value(true);
      },
    );

    when(policy.connectionMessage).thenReturn(null);

    when(policy.getUri()).thenReturn(
      Uri.parse(
        'ws://${localTestServer.address.address}:${localTestServer.port}',
      ),
    );

    final channel = ResilientWebSocketChannel.withPolicy(policy);
    await channel.start();

    // Wait for messages to be sent/received.
    await Future.delayed(const Duration(milliseconds: delay), () {});

    await channel.stop();

    // Wait for messages to be sent/received.
    await Future.delayed(const Duration(milliseconds: delay), () {});

    expect(
      verify(policy.connectionMessage).callCount,
      1,
      reason: 'Only expected one connection',
    );

    // Tidy up.
    await localTestServer.close(force: true);
  });

  test('should auto reconnect once after no data received', () async {
    final localTestServer = await TestSocketServer.create(port: portNumber++);

    final policy = MockSimplePolicy();

    when(policy.getToken).thenAnswer((_) => Future.value);

    when(policy.timeout).thenReturn(const Duration(milliseconds: 50));

    when(policy.retryDelay).thenReturn(Duration.zero);

    var shouldRetryCount = 0;
    when(policy.shouldRetry).thenAnswer(
      (_) => (_) {
        shouldRetryCount++;

        return Future.value(shouldRetryCount <= 1);
      },
    );

    when(policy.connectionMessage).thenReturn(null);

    when(policy.getUri()).thenReturn(
      Uri.parse(
        'ws://${localTestServer.address.address}:${localTestServer.port}',
      ),
    );

    final channel = ResilientWebSocketChannel.withPolicy(policy);
    await channel.start();

    // Wait for messages to be sent/received.
    await Future.delayed(const Duration(milliseconds: 2000), () {});

    verify(policy.getUri()).called(2);

    // Tidy up.
    await localTestServer.close(force: true);
  });
}
