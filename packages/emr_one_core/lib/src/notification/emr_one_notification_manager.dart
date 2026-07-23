import 'dart:async';
import 'dart:math';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/src/notification/animated_notification.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@internal
class EmrOneNotificationManager extends StatefulWidget {
  const EmrOneNotificationManager({
    required this.child,
    required this.controller,
    required this.appConfig,
    super.key,
  });

  final EmrOneNotificationController controller;
  final Widget child;
  final AppConfig appConfig;

  @override
  State<EmrOneNotificationManager> createState() =>
      _EmrOneNotificationManagerState();
}

class _EmrOneNotificationManagerState extends State<EmrOneNotificationManager> {
  StreamSubscription<NotificationEvent>? _subscription;

  final List<EmrOneNotificationBase> _activeNotifications = [];

  final List<EmrOneNotificationBase> _notificationQueue = [];

  final Map<String, OverlayEntry> _notificationEntries = {};

  // Required for tap to pause on notifications
  final Map<String, Duration> _remainingTime = {};

  final Map<String, Timer> _tickers = {};

  final Map<String, bool> _paused = {};

  // Required for notification offset building
  final Map<String, double> _notificationHeights = {};

  late final int _maxNoticationCount;

  late final int _notificationDuration;

  @override
  void initState() {
    super.initState();
    _subscription = widget.controller.listen(_handleEvent);
    _maxNoticationCount = widget.appConfig.visibleNotificationLimit;
    _notificationDuration = widget.appConfig.notificationVisibilityDuration;
  }

  @override
  void didUpdateWidget(covariant EmrOneNotificationManager oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      _subscription?.cancel();
      _subscription = widget.controller.listen(_handleEvent);
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    for (final t in _tickers.values) {
      t.cancel();
    }
    for (final e in _notificationEntries.values) {
      e.remove();
    }
    super.dispose();
  }

  void _handleEvent(NotificationEvent event) => switch (event) {
    ShowNotification() => _addNotification(event.notification),
    HideNotification() => _removeNotification(event.id),
  };

  void _addNotification(EmrOneNotificationBase notification) {
    // This is to handle when the user defines an ID and passes in duplicate
    if (_activeNotifications.any((e) => e.id == notification.id)) {
      _removeNotification(notification.id!);
      _showNotification(notification);
      return;
    } else if (_notificationQueue.any((e) => e.id == notification.id)) {
      _notificationQueue.removeWhere((e) => e.id == notification.id);
      _notificationQueue.add(notification);
      return;
    }

    if (_activeNotifications.length >= _maxNoticationCount) {
      _notificationQueue.add(notification);
    } else {
      _showNotification(notification);
    }
  }

  void _showNotification(EmrOneNotificationBase notification) {
    _activeNotifications.add(notification);

    final entry = OverlayEntry(
      builder: (context) {
        return AnimatedNotificationItem(
          key: ValueKey(notification.id),
          notification: notification,
          topOffsetCallback: () => _computeTopOffset(notification.id!),
          onDismissed: () => _removeNotification(notification.id!),
          measureHeight: (h) {
            _notificationHeights[notification.id!] = h;
            _repositionActiveNotifications();
          },
          onPause: () => pauseNotification(notification.id!),
          onResume: () => resumeNotification(notification.id!),
        );
      },
    );

    _notificationEntries[notification.id!] = entry;
    Overlay.of(context, debugRequiredFor: widget).insert(entry);

    if (notification is EmrOneProgressNotification) {
      _attachProgressListener(notification);
    } else {
      _scheduleDismiss(
        notification.id!,
        Duration(seconds: _notificationDuration),
      );
    }
  }

  void _removeNotification(String id) {
    _tickers.remove(id)?.cancel();
    _remainingTime.remove(id);
    _paused.remove(id);

    final notification = _activeNotifications.firstWhere((o) => o.id == id);

    final entry = _notificationEntries.remove(id);
    entry?.remove();

    _activeNotifications.remove(notification);
    _notificationHeights.remove(id);

    _repositionActiveNotifications();

    if (_notificationQueue.isNotEmpty) {
      final next = _notificationQueue.removeAt(0);
      _showNotification(next);
    }
  }

  double _computeTopOffset(String id) {
    var offset = Insets.gutter;
    for (final notification in _activeNotifications) {
      if (notification.id == id) break;
      offset +=
          (_notificationHeights[notification.id] ?? 100) + (Insets.gutter / 2);
    }
    return offset;
  }

  void _repositionActiveNotifications() {
    for (final notification in _activeNotifications) {
      final entry = _notificationEntries[notification.id];
      entry?.markNeedsBuild();
    }
  }

  void pauseNotification(String id) {
    _paused[id] = true;
  }

  void resumeNotification(String id) {
    _paused[id] = false;
  }

  void _scheduleDismiss(String id, Duration duration) {
    _tickers[id]?.cancel();

    _remainingTime[id] = duration;
    _paused[id] = false;

    _tickers[id] = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (_paused[id] ?? false) return;

      _remainingTime[id] =
          _remainingTime[id]! - const Duration(milliseconds: 100);

      if (_remainingTime[id]! <= Duration.zero) {
        timer.cancel();
        _removeNotification(id);
      }
    });
  }

  void _attachProgressListener(EmrOneNotificationBase notification) {
    // Pulls out these fields into local variables if
    // the notification is a progress notification, otherwise skips.
    if (notification case EmrOneProgressNotification(
      :final progress,
      :final id,
    )) {
      void listener() {
        if (!mounted) return;

        if (progress.value >= 1) {
          progress.removeListener(listener);
          _scheduleDismiss(id!, Duration(seconds: _notificationDuration));
        }
      }

      progress.addListener(listener);
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
