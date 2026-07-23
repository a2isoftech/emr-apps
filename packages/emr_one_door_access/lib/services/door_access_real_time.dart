import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoorAccessRealtime {
  DoorAccessRealtime._();

  static final instance = DoorAccessRealtime._();

  SignalRService? _service;

  SignalRService? get service => _service!;
  SignalRNotificationBridge? bridge;

  Future<void> initialize({
    required BuildContext context,
    required AppConfig appConfig,
    required DoorAccessService doorAccessService,
    bool reconnect = false,
  }) async {
    if (_service != null) {
      if (reconnect) {
        debugPrint('Signal r already connected but reconnecting');
        await _service!.reconnect();
      } else {
        debugPrint('Signal r already connected');
      }
      return;
    }

    final service = SignalRService(
      appConfig: appConfig,
      doorAccessService: doorAccessService,
    );

    debugPrint('going to connect Signal r');
    try {
      await service.connect();
      _service = service;
    } catch (_) {
      _service = null;
      rethrow;
    }
    if (!context.mounted) return;

    bridge ??= SignalRNotificationBridge(
      signalRStream: _service!.notificationsStream,
      notificationController: context.read<EmrOneNotificationController>(),
    );

    bridge!.start();
  }
}
