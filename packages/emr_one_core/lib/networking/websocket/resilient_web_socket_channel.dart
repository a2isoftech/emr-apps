// ignore_for_file: prefer_function_declarations_over_variables

import 'dart:async';

import 'package:emr_one_core/networking/networking.dart';
import 'package:emr_one_core/networking/websocket/_emr_web_socket_channel.dart'
    if (dart.library.io) '_emr_web_socket_channel_io.dart'
    if (dart.library.html) '_emr_web_socket_channel_html.dart' as emr;

class ResilientWebSocketChannel with ResilientClient {
  factory ResilientWebSocketChannel.withPolicy(Policy policy) {
    return ResilientWebSocketChannel._(
      ({Uri? uri}) => policy.getUri(uri: uri),
      tokenCallback: policy.getToken,
      shouldRetryCallback: policy.shouldRetry,
    )..policy = policy;
  }

  ResilientWebSocketChannel._(
    GetUri uriCallback, {
    GetNullableFutureString? tokenCallback,
    GetShouldRetryFutureBool? shouldRetryCallback,
  }) {
    getUri = uriCallback;

    if (tokenCallback != null) {
      getToken = tokenCallback;
    }

    if (shouldRetryCallback != null) {
      shouldRetry = shouldRetryCallback;
    }
  }

  emr.EmrWebSocketChannel? _channel;

  final _streamController = StreamController<String>();

  DateTime _lastDataReceived = DateTime.now();

  Timer? _timer;

  static const normalClosure = 1000;

  Stream<String> get stream => _streamController.stream;

  final StreamController<ConnectionStatus> _connectionStatusController =
      StreamController.broadcast();

  Stream<ConnectionStatus> get connectionStatusChanged =>
      _connectionStatusController.stream;

  bool _started = false;

  bool get started => _started;

  Future<void> start() async {
    if (_started) {
      return;
    }

    _started = true;

    await _connect();
  }

  Future<void> stop() async {
    if (!_started) {
      return;
    }

    _started = false;

    _timer?.cancel();

    await _channel?.close(normalClosure);
  }

  Future<void> _connect() async {
    if (!_started) {
      return;
    }

    _connectionStatusController.add(ConnectionStatus.connecting);

    final token = await getToken();

    // On iOS a loss of network connection, doesn't cause the WebSocket to be
    // terminated, so we're using a timer to check that we've received some
    // data within a known time.
    _lastDataReceived = DateTime.now();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      final difference =
          DateTime.now().difference(_lastDataReceived).inMilliseconds;

      if (difference >= policy.timeout.inMilliseconds) {
        timer.cancel();

        await _channel?.close(normalClosure);
      }
    });

    final uri = getUri();

    if (token?.isNotEmpty ?? false) {
      uri.queryParameters.putIfAbsent('token', () => token!);
    }

    final channel = emr.EmrWebSocketChannel(
      onData: _onData,
      onDone: _onDone,
    );

    _channel = channel;

    final connected = await channel.connect(uri, ['graphql-ws']);

    if (connected) {
      _connectionStatusController.add(ConnectionStatus.connected);

      if (policy.connectionMessage != null) {
        channel.send(policy.connectionMessage!);
      }
    } else {
      await _onDone();
    }
  }

  void send(String message) {
    if (_channel == null) {
      throw Exception('The web socket is not open');
    }

    _channel!.send(message);
  }

  void _onData(dynamic data) {
    _lastDataReceived = DateTime.now();

    // Pass the data on to anything that's listening outside this class.
    _streamController.add(data.toString());
  }

  Future<void> _onDone() async {
    _timer?.cancel();

    _connectionStatusController.add(ConnectionStatus.disconnected);

    final retryContext = RetryContext(
      policy,
    )..webSocketChannel = _channel;

    if (_started && await shouldRetry(retryContext)) {
      policy.willRetry(retryContext);

      // Reduce the effect of repeatedly failing connections.
      await Future.delayed(policy.retryDelay, () {});

      await _connect();
    }
  }
}
