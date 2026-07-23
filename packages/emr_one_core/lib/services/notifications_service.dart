import 'package:flutter/material.dart';

class NotificationsService {
  static const String kPrefix = 'notificationsService';

  final List<EmrNotification> list = [];

  List<EmrNotification> getNotifications() {
    return list;
  }

  void addNotification(EmrNotification notification) {
    list.add(notification);
  }

  void updateNotifications() {}
}

class EmrNotification {
  EmrNotification({
    required this.title,
    required this.body,
    required this.isViewed,
    required this.icon,
    required this.id,
  });
  final String title;
  final String body;
  final bool isViewed;
  final IconData icon;
  final int id;
}
