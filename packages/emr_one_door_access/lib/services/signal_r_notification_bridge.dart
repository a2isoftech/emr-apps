import 'dart:async';

import 'package:emr_one_core/controllers/emr_one_notification_controller.dart'
    as cn;
import 'package:emr_one_door_access/emr_one_door_access.dart';

typedef ActionHandler = void Function(NotificationEvent evt);

class SignalRNotificationBridge {
  SignalRNotificationBridge({
    required this.signalRStream,
    required this.notificationController,
  });

  final Stream<NotificationEvent> signalRStream;
  final cn.EmrOneNotificationController notificationController;

  StreamSubscription<NotificationEvent>? _subscription;
  final Map<String, ActionHandler> actions = {};

  void start() {
    _subscription ??= signalRStream.listen(_onNotificationReceived);
  }

  void stop() {
    _subscription?.cancel();
    _subscription = null;
  }

  void _onNotificationReceived(NotificationEvent event) {
    if (event.messageType != 'AccessPointSnapshot') {
      if (event.isSuccess) {
        notificationController.showNotification(
          cn.EmrOneSuccessNotification(
            title: event.title,
            description: event.message,
          ),
        );
      } else if (event.isError) {
        notificationController.showNotification(
          cn.EmrOneErrorNotification(
            title: event.title,
            description: event.message,
          ),
        );
      } else if (event.isWarning) {
        notificationController.showNotification(
          cn.EmrOneWarningNotification(
            title: event.title,
            description: event.message,
          ),
        );
      } else if (event.isInformation) {
        notificationController.showNotification(
          cn.EmrOneProgressNotification(
            title: event.title,
            description: event.message,
          ),
        );
      }
    }

    for (final handler in actions.values.toList()) {
      handler(event);
    }
  }
}
