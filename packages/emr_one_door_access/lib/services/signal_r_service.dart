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

    connectionState.value = RealtimeConnectionState.connecting;

    _hubConnection = HubConnectionBuilder()
        .withUrl(
          '${appConfig.endpoint('doorAccessUrl').replaceAll('/graphql', '')}/notificationHub',
          options: HttpConnectionOptions(
            accessTokenFactory: () async {
              final token = await doorAccessService.httpClient.getToken();

              return token ?? '';
            },
          ),
        )
        .withAutomaticReconnect()
        .build();

    debugPrint('Signal R Connected');

    _hubConnection!.onclose(({error}) {
      connectionState.value = RealtimeConnectionState.disconnected;
    });

    _hubConnection!.onreconnecting(({error}) {
      connectionState.value = RealtimeConnectionState.reconnecting;
    });

    _hubConnection!.onreconnected(({connectionId}) {
      connectionState.value = RealtimeConnectionState.connected;
    });

    _hubConnection!.on('ReceiveNotification', (args) {
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
      await _hubConnection!.start();

      connectionState.value = RealtimeConnectionState.connected;
    } catch (err) {
      debugPrint('Error while starting _hubConnection : $err');
      connectionState.value = RealtimeConnectionState.disconnected;

      //rethrow;
    }
  }

  Future<void> reconnect() async {
    try {
      connectionState.value = RealtimeConnectionState.connecting;

      await _hubConnection?.stop();

      _hubConnection = null;

      await connect();
    } catch (err) {
      debugPrint('Error while starting _hubConnection : $err');

      connectionState.value = RealtimeConnectionState.disconnected;

      //rethrow;
    }
  }

  Future<void> disconnect() async {
    await _hubConnection?.stop();
    _hubConnection = null;
  }

  void dispose() {
    unawaited(_hubConnection?.stop());
    _hubConnection = null;
    connectionState.dispose();
    _controller.close();
  }
}
