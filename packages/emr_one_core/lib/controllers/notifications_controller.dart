import 'package:emr_one_core/services/notifications_service.dart';
import 'package:flutter/material.dart';

class NotificationController with ChangeNotifier {
  NotificationController(this._notificationsService) {
    loadNotifications();
  }

  final NotificationsService _notificationsService;

  late List<EmrNotification> _notificationsList;

  List<EmrNotification> get notificationsList => _notificationsList;

  void loadNotifications() {
    _notificationsList = _notificationsService.list;
  }

  void addNotifications(EmrNotification? newNotification) {
    if (newNotification == null) return;

    _notificationsService.addNotification(newNotification);

    notifyListeners();
  }

  Future<void> updateList() async {
    notifyListeners();
  }
}
