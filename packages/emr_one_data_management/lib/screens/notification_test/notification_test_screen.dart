import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_data_management/screens/notification_test/progress_notification_test_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Hidden route - to enable deep link to `data-management/notification-test'
// and disable `isAllowed` in `eo_route_converter.dart`
class NotificationTestScreen extends StatefulWidget {
  const NotificationTestScreen({super.key});

  @override
  State<NotificationTestScreen> createState() => _NotificationTestScreenState();
}

class _NotificationTestScreenState extends State<NotificationTestScreen> {
  int _counter = 0;
  String notificationID = 'popAndHide';

  @override
  Widget build(BuildContext context) {
    final controller = context.read<EmrOneNotificationController>();

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Wrap(
        spacing: Insets.gutter,
        runSpacing: Insets.gutter,
        children: [
          FilledButton(
            onPressed: () {
              controller.showNotification(
                EmrOneNotification(
                  title: 'Test Notification $_counter',
                  description: 'This is a test notification description.',
                  id: notificationID,
                ),
              );

              _counter++;
            },
            child: const Text('Counter Notification'),
          ),
          FilledButton(
            onPressed: () {
              controller.hideNotification(notificationID);
            },
            child: const Text('Hide Counter Notification'),
          ),
          const ProgressNotificationTest(),
          FilledButton(
            child: const Text('Error- Notification Test'),
            onPressed: () {
              controller.showNotification(
                EmrOneErrorNotification(
                  title: 'Error\nNotification Test',
                  description:
                      'The server you are trying to reach, '
                      'does not exist.',
                ),
              );
            },
          ),
          FilledButton(
            child: const Text('Success - Notification Test'),
            onPressed: () {
              controller.showNotification(
                EmrOneSuccessNotification(
                  title: 'Success',
                  description: 'Task complete',
                ),
              );
            },
          ),
          FilledButton(
            child: const Text('Warning - Notification Test'),
            onPressed: () {
              controller.showNotification(
                EmrOneWarningNotification(
                  title: 'Warning!',
                  description: 'Something isnt right!',
                  onTap: () {
                    controller.showNotification(
                      EmrOneWarningNotification(
                        title: 'You Tapped!',
                        description: 'Another one has opened!',
                      ),
                    );
                  },
                ),
              );
            },
          ),
          FilledButton(
            child: const Text('Notification Test - Long Text'),
            onPressed: () {
              controller.showNotification(
                EmrOneNotification(
                  title: 'Notification',
                  description:
                      'This is an example of a really long notification string '
                      'being passed in. Most would consider this string too '
                      'long. Strings for notifications should be to the point '
                      'and very readable for the end user in a short period. '
                      'So please consider the message length carefully.',
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
