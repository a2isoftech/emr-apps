import 'package:emr_one_core/controllers/notifications_controller.dart';
import 'package:emr_one_core/services/notifications_service.dart';
import 'package:emr_one_core/widgets/notification_button.dart';
import 'package:emr_one_localisations/emr_one_localisations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

typedef DismissMethod = Future<void> Function(
  WidgetTester tester,
  Finder finder, {
  required AxisDirection gestureDirection,
});

Future<void> dismissElement(
  WidgetTester tester,
  Finder finder, {
  required AxisDirection gestureDirection,
}) async {
  Offset downLocation;
  Offset upLocation;
  switch (gestureDirection) {
    case AxisDirection.left:
      // getTopRight() returns a point that's just beyond itemWidget's right
      // edge and outside the Dismissible event listener's bounds.
      downLocation = tester.getTopRight(finder) + const Offset(-0.1, 0);
      upLocation = tester.getTopLeft(finder) + const Offset(-0.1, 0);
    case AxisDirection.right:
      // we do the same thing here to keep the test symmetric
      downLocation = tester.getTopLeft(finder) + const Offset(0.1, 0);
      upLocation = tester.getTopRight(finder) + const Offset(0.1, 0);
    case AxisDirection.up:
      // getBottomLeft() returns a point that's just below itemWidget's bottom
      // edge and outside the Dismissible event listener's bounds.
      downLocation = tester.getBottomLeft(finder) + const Offset(0, -0.1);
      upLocation = tester.getTopLeft(finder) + const Offset(0, -0.1);
    case AxisDirection.down:
      // again with doing the same here for symmetry
      downLocation = tester.getTopLeft(finder) + const Offset(0.1, 0);
      upLocation = tester.getBottomLeft(finder) + const Offset(0.1, 0);
  }

  final gesture = await tester.startGesture(downLocation);
  await gesture.moveTo(upLocation);
  await gesture.up();
}

Future<void> dismissItem(
  WidgetTester tester,
  String itemString, {
  required AxisDirection gestureDirection,
  DismissMethod mechanism = dismissElement,
}) async {
  final itemFinder = find.text(itemString);
  expect(itemFinder, findsOneWidget);

  await mechanism(tester, itemFinder, gestureDirection: gestureDirection);
  await tester.pumpAndSettle();
}

Future<void> flingElement(
  WidgetTester tester,
  Finder finder, {
  required AxisDirection gestureDirection,
  double initialOffsetFactor = 0.0,
}) async {
  Offset delta;
  switch (gestureDirection) {
    case AxisDirection.left:
      delta = const Offset(-300, 0);
    case AxisDirection.right:
      delta = const Offset(300, 0);
    case AxisDirection.up:
      delta = const Offset(0, -300);
    case AxisDirection.down:
      delta = const Offset(0, 300);
  }
  await tester.fling(
    finder,
    delta,
    1000,
    initialOffset: delta * initialOffsetFactor,
  );
}

void main() {
  testWidgets('test notification open pop up, mark as read and close dialog',
      (WidgetTester tester) async {
    final notificationService = NotificationsService();
    late final NotificationController notificationController;

    notificationController = NotificationController(notificationService);

    final key = GlobalKey();

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ListenableProvider<NotificationController>.value(
            value: notificationController,
          ),
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            EmrAppsLocalisations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: Scaffold(
            body: Center(
              child: NotificationButton(
                key: key,
                canNavigate: false,
              ),
            ),
          ),
        ),
      ),
    );
    expect(find.byKey(key), findsOneWidget);

    expect(find.byIcon(Icons.notifications_none), findsOneWidget);

    await tester.tap(find.byIcon(Icons.notifications_none));
    await tester.pump();
    expect(find.text('Mark all as read'), findsOneWidget);
    await tester.tap(find.text('Mark all as read'));
    await tester.pump();
    expect(find.text('Mark all as read'), findsNothing);
  });

  testWidgets(
      'test with a single notification, checking all notification parameters, '
      'checking dismissible with a single notification.',
      (WidgetTester tester) async {
    final notificationService = NotificationsService();
    late final NotificationController notificationController;

    notificationController = NotificationController(notificationService);
    notificationController.addNotifications(
      EmrNotification(
        body: '1',
        id: 1,
        icon: Icons.fire_extinguisher,
        isViewed: false,
        title: 'Test Notification',
      ),
    );
    final key = GlobalKey();

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ListenableProvider<NotificationController>.value(
            value: notificationController,
          ),
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            EmrAppsLocalisations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: Scaffold(
            body: Center(
              child: NotificationButton(
                key: key,
                canNavigate: false,
              ),
            ),
          ),
        ),
      ),
    );

    //find and press notification button
    expect(find.byKey(key), findsOneWidget);
    expect(find.byIcon(Icons.notifications), findsOneWidget);
    await tester.tap(find.byIcon(Icons.notifications));
    await tester.pump();

    //find the pop up and the notification information
    expect(find.text('Mark all as read'), findsOneWidget);
    expect(find.byType(ListTile), findsOneWidget);
    expect(find.byIcon(Icons.fire_extinguisher), findsOneWidget);
    expect(find.byKey(const Key('1')), findsOneWidget);

    //dismiss the only notification
    await dismissItem(
      tester,
      'Test Notification',
      gestureDirection: AxisDirection.left,
      mechanism: flingElement,
    );

    //notification pop up closes as shown by notification no longer shown.
    expect(find.byKey(const Key('1')), findsNothing);
    //notification buttons icon has now changed to represent
    //theres no notifications.
    expect(find.byIcon(Icons.notifications_none), findsOneWidget);
  });

  testWidgets(
      'test with a two notification, checking dismissible only pops scope '
      'when no notifications remain', (WidgetTester tester) async {
    final notificationService = NotificationsService();
    late final NotificationController notificationController;

    notificationController = NotificationController(notificationService);

    notificationController.addNotifications(
      EmrNotification(
        body: '1',
        id: 1,
        icon: Icons.fire_extinguisher,
        isViewed: false,
        title: 'Test Notification',
      ),
    );
    notificationController.addNotifications(
      EmrNotification(
        body: '2',
        id: 2,
        icon: Icons.local_hospital_sharp,
        isViewed: false,
        title: 'Second',
      ),
    );
    final key = GlobalKey();

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ListenableProvider<NotificationController>.value(
            value: notificationController,
          ),
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            EmrAppsLocalisations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: Scaffold(
            body: Center(
              child: NotificationButton(
                key: key,
                canNavigate: false,
              ),
            ),
          ),
        ),
      ),
    );

    //find and press notification button
    expect(find.byKey(key), findsOneWidget);
    expect(find.byIcon(Icons.notifications), findsOneWidget);
    await tester.tap(find.byIcon(Icons.notifications));
    await tester.pump();

    //find the pop up and the notification information
    expect(find.text('Mark all as read'), findsOneWidget);
    expect(find.byType(ListTile), findsWidgets);
    expect(find.byIcon(Icons.fire_extinguisher), findsOneWidget);
    expect(find.byIcon(Icons.local_hospital_sharp), findsOneWidget);

    //dismiss the only notification
    await dismissItem(
      tester,
      'Second',
      gestureDirection: AxisDirection.left,
      mechanism: flingElement,
    );
    expect(find.text('Second'), findsNothing);
    await dismissItem(
      tester,
      'Test Notification',
      gestureDirection: AxisDirection.left,
      mechanism: flingElement,
    );
    expect(find.text('Test Notification'), findsNothing);
    //notification buttons icon has now changed to represent theres
    //no notifications.
    expect(find.byIcon(Icons.notifications_none), findsOneWidget);
  });

  testWidgets('Can navigate', (WidgetTester tester) async {
    final notificationService = NotificationsService();
    late final NotificationController notificationController;

    notificationController = NotificationController(notificationService);

    notificationController.addNotifications(
      EmrNotification(
        body: '1',
        id: 1,
        icon: Icons.fire_extinguisher,
        isViewed: false,
        title: 'Test Notification',
      ),
    );
    final key = GlobalKey();

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ListenableProvider<NotificationController>.value(
            value: notificationController,
          ),
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            EmrAppsLocalisations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: Scaffold(
            body: Center(
              child: NotificationButton(
                key: key,
                canNavigate: true,
              ),
            ),
          ),
        ),
      ),
    );

    //find and press notification button
    expect(find.byKey(key), findsOneWidget);
    expect(find.byIcon(Icons.notifications), findsOneWidget);
    await tester.tap(find.byIcon(Icons.notifications));
    await tester.pump();

    //find the pop up and the notification information
    expect(find.text('Mark all as read'), findsOneWidget);
    expect(find.byType(ListTile), findsOneWidget);
    expect(find.text('View all'), findsOneWidget);
  });
}
