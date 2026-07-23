import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/routing/routing.dart';
import 'package:emr_one_core/screens/screens.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import '../test_routes.dart';
import 'home_screen_test.mocks.dart';

@GenerateMocks([FirebaseRemoteConfig])
void main() {
  testWidgets('Home screen shows tiles', (WidgetTester tester) async {
    // Initialise a route registry with the core routes and some test ones.
    final routeRegistry = RouteRegistry();

    routeRegistry.addRoutes(
      DummyMenuData.getTestRoutes()
          .map(
            (m) => EORoute(
              m.icon,
              (_) => m.name,
              path: m.path,
              name: m.name,
              section: m.section,
              widgetBuilder: (context, state) => Provider(
                create: (_) => routeRegistry,
                child: const HomeScreen(),
              ),
              // for tests we can't use the default builder as login needed
              eoPageBuilder: (context, state, builder, providers) =>
                  MaterialPage<void>(
                child: Scaffold(
                  body: builder(
                    context,
                    EoRouterState.fromGoRouterState(state),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );

    final router = GoRouter(routes: routeRegistry.getRoutes());

    // Initialise the app with the router.
    // The home screen needs AppConfig in the tree.
    final mockRemoteConfig = MockFirebaseRemoteConfig();
    when(mockRemoteConfig.getString('disabledRoutes')).thenReturn('[]');

    final app = ChangeNotifierProvider(
      create: (BuildContext context) => AppConfig(
        app: 'test',
        env: 'TEST',
        firebaseRemoteConfig: mockRemoteConfig,
        temporaryDirectory: '',
      ),
      child: MaterialApp.router(
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
      ),
    );

    await tester.pumpWidget(app);

    final aText = find.text('A');

    expect(aText, findsOneWidget);
    expect(find.text('B'), findsOneWidget);
    expect(find.text('C'), findsOneWidget);
    expect(find.text('D'), findsOneWidget);
    expect(find.text('E'), findsOneWidget);
    expect(find.text('F'), findsOneWidget);

    // Hover over the first tile to make sure the colours change.
    final gesture = await tester.createGesture(kind: PointerDeviceKind.mouse);
    await gesture.addPointer(location: Offset.zero);
    await tester.pumpAndSettle();

    await gesture.moveTo(tester.getCenter(aText));
    await tester.pumpAndSettle();

    await gesture.moveTo(Offset.zero);
    await tester.pumpAndSettle();

    await gesture.removePointer();
    await tester.pump();

    // Tap the label in the first tile.
    await tester.tap(aText);
    await tester.pumpAndSettle();

    final matches = router.routerDelegate.currentConfiguration.matches;
    expect(matches, hasLength(1));
    expect(matches.first.matchedLocation, '/one/a');
  });
}
