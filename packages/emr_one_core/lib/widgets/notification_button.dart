import 'package:emr_one_core/controllers/notifications_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificationButton extends StatefulWidget {
  const NotificationButton({required this.canNavigate, super.key});
  final bool canNavigate;

  @override
  State<NotificationButton> createState() => _NotificationButtonState();
}

class _NotificationButtonState extends State<NotificationButton> {
  @override
  Widget build(BuildContext context) {
    final notificationsController =
        Provider.of<NotificationController>(context);
    final notifications = notificationsController.notificationsList;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned.fill(
                child: IconButton(
                  icon: Icon(
                    size: 24,
                    notifications.isEmpty
                        ? Icons.notifications_none
                        : Icons.notifications,
                  ),
                  onPressed: () =>
                      _notificationPopUp(context, notificationsController),
                ),
              ),
              if (notifications.isNotEmpty)
                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: const SizedBox(),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  void _notificationPopUp(
    BuildContext context,
    NotificationController notificationController,
  ) {
    const kMaxPopUpHeight = 420;
    const kListTileHeight = 60;
    const kMaxTilesOnScreen = 7;
    showDialog<void>(
      context: context,
      builder: (context) {
        final notifications = notificationController.notificationsList;
        return Stack(
          children: <Widget>[
            Positioned(
              right: 20,
              top: 20,
              width: kIsWeb ? 350 : 250,
              child: Material(
                elevation: EmrOneConstants.kUserInfoDesktopElevation,
                child: Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              notifications.clear();
                              notificationController.loadNotifications();
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text(context.l10n.markAllAsRead),
                        ),
                      ),
                      SizedBox(
                        height: (notifications.length <= kMaxTilesOnScreen
                                ? notifications.length * kListTileHeight
                                : kMaxPopUpHeight)
                            .toDouble(),
                        child: CustomScrollView(
                          slivers: [
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                childCount: notifications.length,
                                (BuildContext context, int index) {
                                  final notif = notifications[index];
                                  return Dismissible(
                                    key: Key(notif.id.toString()),
                                    onDismissed: (direction) {
                                      setState(() {
                                        notifications.removeAt(index);
                                        notificationController
                                            .loadNotifications();
                                        if (notifications.isEmpty) {
                                          Navigator.of(context).pop();
                                        }
                                      });
                                    },
                                    child: ListTile(
                                      leading: Icon(notif.icon),
                                      title: Text(notif.title),
                                      subtitle: Text(notif.body),
                                      trailing: kIsWeb
                                          ? IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  notifications.removeAt(index);
                                                  notificationController
                                                      .loadNotifications();
                                                  if (notifications.isEmpty) {
                                                    Navigator.of(context).pop();
                                                  }
                                                });
                                              },
                                              icon: const Icon(Icons.remove),
                                            )
                                          : const SizedBox(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (widget.canNavigate)
                        ElevatedButton(
                          onPressed: () {
                            ModalRoute.of(context)!.settings.name ==
                                    'notifications'
                                ? Navigator.of(context).pop()
                                : context.goNamed(NamedRoutes.notifications);
                          },
                          child: Text(context.l10n.viewAll),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
