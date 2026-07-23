import 'package:emr_one_core/controllers/notifications_controller.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final notificationsController =
        Provider.of<NotificationController>(context);
    final notifications = notificationsController.notificationsList;

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleDot,
              color: Colors.grey[700],
            ),
            title: Text(notifications[index].title),
            subtitle: Text(notifications[index].body),
            trailing: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                setState(() {
                  notifications.removeAt(index);
                  notificationsController.updateList();
                });
              },
            ),
          );
        },
      ),
    );
  }
}
