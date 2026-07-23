import 'dart:async';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/models/notification/emr_one_notification.dart';
import 'package:emr_one_core/src/notification/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedNotificationItem extends StatefulWidget {
  const AnimatedNotificationItem({
    required this.notification,
    required this.onDismissed,
    required this.topOffsetCallback,
    required this.measureHeight,
    required this.onPause,
    required this.onResume,
    super.key,
  });

  final EmrOneNotificationBase notification;
  final VoidCallback onDismissed;
  final double Function() topOffsetCallback;
  final void Function(double height) measureHeight;
  final VoidCallback onPause;
  final VoidCallback onResume;
  @override
  State<AnimatedNotificationItem> createState() =>
      _AnimatedNotificationItemState();
}

class _AnimatedNotificationItemState extends State<AnimatedNotificationItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fade;

  final _containerKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    final appConfig = Provider.of<AppConfig>(context, listen: false);

    _controller = AnimationController(
      duration: Duration(milliseconds: appConfig.notificationAnimationDuration),
      vsync: this,
    );

    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeOut);

    _controller.forward();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = _containerKey.currentContext;
      if (context != null) {
        final box = context.findRenderObject() as RenderBox?;
        if (box != null) {
          widget.measureHeight(box.size.height);
        }
      }
    });
  }

  Future<void> _dismiss() async {
    await _controller.reverse();
    widget.onDismissed();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final top = widget.topOffsetCallback();
    final appConfig = Provider.of<AppConfig>(context);

    return AnimatedPositioned(
      duration: Duration(milliseconds: appConfig.notificationAnimationDuration),
      curve: Curves.easeOutCubic,
      top: appConfig.isWeb ? top : top + 32, 
      right: Insets.gutter,
      child: SlideTransition(
        position: Tween<Offset>(begin: const Offset(1, 0), end: .zero).animate(
          CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
        ),
        child: FadeTransition(
          opacity: _fade,
          child: Dismissible(
            key: ValueKey(widget.notification.id),
            direction: .startToEnd,
            dismissThresholds: const {.startToEnd: 0.35},
            onDismissed: (_) => _dismiss(),
            child: GestureDetector(
              behavior: .opaque,
              onTapDown: (_) => widget.onPause(),
              onTapUp: (_) => widget.onResume(),
              onTapCancel: widget.onResume,
              onTap: () {
                widget.notification.onTap?.call();
              },
              child: Container(
                key: _containerKey,
                child: NotificationCard(
                  notification: widget.notification,
                  dismiss: _dismiss,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
