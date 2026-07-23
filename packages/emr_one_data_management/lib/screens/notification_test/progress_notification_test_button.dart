import 'dart:async';

import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProgressNotificationTest extends StatefulWidget {
  const ProgressNotificationTest({super.key});

  @override
  State<ProgressNotificationTest> createState() =>
      _ProgressNotificationTestState();
}

class _ProgressNotificationTestState extends State<ProgressNotificationTest> {
  void _startProgress(EmrOneNotificationController notificationController) {
    final progress = ValueNotifier<double>(0);

    Timer.periodic(const Duration(seconds: 1), (t) {
      if (progress.value >= 1) {
        progress.value = 1;
        t.cancel();
      } else {
        progress.value += 0.33;
      }
    });

    notificationController.showNotification(
      EmrOneProgressNotification(
        id: UniqueKey().toString(),
        title: 'Uploading',
        description: 'Please wait…',
        progress: progress,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notificationController = context.read<EmrOneNotificationController>();

    return FilledButton(
      onPressed: () => _startProgress(notificationController),
      child: const Text('Start Progress Notification'),
    );
  }
}
