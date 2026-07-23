import 'dart:async';

import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:flutter/foundation.dart';

/// For internal use only.
@internal
class EmrOneInternalNotificationController {
  final _sc = StreamController<NotificationEvent>.broadcast();

  Stream<NotificationEvent> get stream => _sc.stream;

  void showNotification(EmrOneNotificationBase notification) {
    notification.id ??= _nextId();
    _sc.add(ShowNotification(notification));
  }

  void hideNotification(String id) {
    _sc.add(HideNotification(id));
  }

  String _nextId() => UniqueKey().toString();
}
