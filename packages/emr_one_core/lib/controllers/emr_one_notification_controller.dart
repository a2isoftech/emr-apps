import 'dart:async';

import 'package:emr_one_core/models/notification/emr_one_notification.dart';
import 'package:emr_one_core/src/controllers/emr_one_notification_controller_internal.dart';

export 'package:emr_one_core/models/notification/emr_one_notification.dart';

class EmrOneNotificationController {
  final _internal = EmrOneInternalNotificationController();

  void showNotification(EmrOneNotificationBase notification) {
    _internal.showNotification(notification);
  }

  void hideNotification(String id) {
    _internal.hideNotification(id);
  }

  StreamSubscription<NotificationEvent> listen(
    void Function(NotificationEvent event) listener,
  ) {
    return _internal.stream.listen(listener);
  }
}

sealed class NotificationEvent {}

class ShowNotification extends NotificationEvent {
  ShowNotification(this.notification);
  final EmrOneNotificationBase notification;
}

class HideNotification extends NotificationEvent {
  HideNotification(this.id);
  final String id;
}
