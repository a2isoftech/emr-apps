import 'dart:async';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:signalr_netcore/signalr_client.dart';

class SignalRService {
  SignalRService({required this.doorAccessService, required this.appConfig});

  final DoorAccessService doorAccessService;
  final AppConfig appConfig;
  HubConnection? _hubConnection;
  Timer? _reconnectTimer;
  int _reconnectAttempts = 0;
  bool _suppressAutoReconnect = false;
  bool _disposed = false;

  static const int _maxReconnectAttempts = 3;
  static const Duration _reconnectDelay = Duration(seconds: 3);

  final StreamController<NotificationEvent> _controller =
      StreamController<NotificationEvent>.broadcast();

  Stream<NotificationEvent> get notificationsStream => _controller.stream;

  final ValueNotifier<RealtimeConnectionState> connectionState = ValueNotifier(
    RealtimeConnectionState.disconnected,
  );

  Future<void> connect() async {
    if (_hubConnection != null) {
      return;
    }

    connectionState.value = _reconnectAttempts > 0
        ? RealtimeConnectionState.reconnecting
        : RealtimeConnectionState.connecting;

    final hubConnection = HubConnectionBuilder()
        .withUrl(
          '${appConfig.endpoint('doorAccessUrl').replaceAll('/graphql', '')}/notificationHub',
          options: HttpConnectionOptions(
            accessTokenFactory: () async {
              final token = await doorAccessService.httpClient.getToken();

              return token ?? '';
            },
          ),
        )
        .build();

    _hubConnection = hubConnection;

    // Compares by identity against the current _hubConnection because by the
    // time this fires (possibly after a later connect() has replaced it) it
    // must not stomp on a newer connection's state.
    hubConnection.onclose(({error}) {
      if (!identical(hubConnection, _hubConnection)) return;
      _hubConnection = null;
      if (_suppressAutoReconnect) return;
      _scheduleAutoReconnect();
    });

    hubConnection.on('ReceiveNotification', (args) {
      if (args == null || args.isEmpty || args.first == null) return;
      final first = args.first;
      if (first is! Map) return;
      final data = Map<String, dynamic>.from(first);

      final title = data['title']?.toString() ?? '';
      final messageText = data['message']?.toString() ?? '';
      final notificationType = data['notificationType']?.toString() ?? '';
      final notificationSeverity =
          data['notificationSeverity']?.toString() ?? '';
      final created = DateTime.parse(
        data['created']?.toString() ?? DateTime.now().toString(),
      );

      final message = NotificationEvent(
        title: title,
        message: messageText,
        messageType: notificationType,
        messageSeverity: notificationSeverity,
        created: created,
      );
      _controller.add(message);
    });

    try {
      await hubConnection.start();

      debugPrint('Signal R Connected');
      _reconnectAttempts = 0;
      connectionState.value = RealtimeConnectionState.connected;
    } catch (err) {
      debugPrint('Error while starting _hubConnection : $err');
      _hubConnection = null;
      _scheduleAutoReconnect();
    }
  }

  // Retries silently in the background so the user only ever sees a manual
  // "Reconnect" button once every automatic attempt has failed.
  void _scheduleAutoReconnect() {
    if (_disposed) return;

    _reconnectAttempts++;

    if (_reconnectAttempts > _maxReconnectAttempts) {
      connectionState.value = RealtimeConnectionState.disconnected;
      return;
    }

    connectionState.value = RealtimeConnectionState.reconnecting;

    _reconnectTimer?.cancel();
    _reconnectTimer = Timer(_reconnectDelay, () {
      unawaited(connect());
    });
  }

  Future<void> reconnect() async {
    _reconnectTimer?.cancel();
    _reconnectAttempts = 0;
    _suppressAutoReconnect = true;

    try {
      connectionState.value = RealtimeConnectionState.connecting;

      await _hubConnection?.stop();
      _hubConnection = null;
      _suppressAutoReconnect = false;

      await connect();
    } catch (err) {
      debugPrint('Error while starting _hubConnection : $err');
      _suppressAutoReconnect = false;
      connectionState.value = RealtimeConnectionState.disconnected;
    }
  }

  Future<void> disconnect() async {
    _suppressAutoReconnect = true;
    _reconnectTimer?.cancel();
    await _hubConnection?.stop();
    _hubConnection = null;
  }

  void dispose() {
    _disposed = true;
    _suppressAutoReconnect = true;
    _reconnectTimer?.cancel();
    unawaited(_hubConnection?.stop());
    _hubConnection = null;
    connectionState.dispose();
    _controller.close();
  }
}
