// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:emr_core_api/services/reference_data_service.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/services/direct_query_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:patrol/patrol.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/test_data.dart';
import 'eo_test_helper.mocks.dart';

/// The default screen sizes that the app supports.
enum Screen {
  iPhoneSE(375, 667),
  desktop(1280, 1024);

  const Screen(this.width, this.height);

  final double width;

  final double height;

  Size get size => Size(width, height);
}

/// This helper method sets up an [EOCoreApp] and allows a [patrolTest] to be
/// called without having to set up a lot of boilerplate code for every test.
@GenerateMocks([LoginController, NotificationsService, FirebaseRemoteConfig])
@isTest
void eoPatrolTest(
  String description, {
  required Future<void> Function(
    PatrolIntegrationTester $,
    Map<String, List<Map<String, Object>>> httpResponses,
  )
  test,
  LoginState loginState = LoginState.loggedIn,
  RouteRegistry Function(RouteRegistry registry)? registerRoutes,
  String initialLocation = '/dashboard',
  Map<String, Object> userInfo = kUserInfoA11User,
  Map<String, Object> sharedPreferencesValues = const {},
  Screen screen = Screen.iPhoneSE,
}) {
  SharedPreferences.setMockInitialValues(sharedPreferencesValues);
  final httpResponses = <String, List<Map<String, Object>>>{
    'GetUserInfo': [userInfo],
  };

  return patrolTest(description, (PatrolIntegrationTester $) async {
    // Set the screen size / pixel ratio.
    // We also reduce the textScaleFactor as suggested at https://stackoverflow.com/questions/62447898/flutter-widget-test-cannot-emulate-different-screen-size-properly/62460566#comment111494711_62460566
    $.tester.view.physicalSize = screen.size;
    $.tester.view.devicePixelRatio = 1;
    $.tester.binding.platformDispatcher.textScaleFactorTestValue = 0.8;

    // Resets the values after the test ends.
    addTearDown(() {
      $.tester.view.resetPhysicalSize();
      $.tester.view.resetDevicePixelRatio();
      $.tester.binding.platformDispatcher.clearTextScaleFactorTestValue();
    });

    final loginController = MockLoginController();

    when(loginController.state).thenReturn(loginState);

    final httpClient = MockCoreApiClient((request) async {
      final requestBody = jsonDecode(request.body) as Map<String, dynamic>;
      final operationName = requestBody['operationName'] as String?;

      Map<String, Object>? body;

      if (httpResponses.containsKey(operationName)) {
        final bodies = httpResponses[operationName]!.toList();

        if (bodies.isEmpty) {
          throw Exception(
            'The list of bodies is empty for test request with operation '
            "name '$operationName'",
          );
        }

        body = bodies.first;

        // Remove the body now that it's been used, unless there's
        // only 1 left.
        if (bodies.length > 1) {
          final newValues = [...bodies..removeAt(0)];

          httpResponses[operationName!] = newValues;
        }
      } else {
        throw Exception(
          'Unable to get body for test request with operation name '
          "'$operationName'",
        );
      }

      return Response(
        json.encode(body),
        200,
        headers: {'content-type': 'application/json'},
      );
    });

    final userInfoService = StaffUserInfoService.fromClient(httpClient);
    final userService = StaffUserService.fromClient(httpClient);
    await userInfoService.getUserInfo();
    await userService.getUser();

    final directQueryService = DirectQueryService(
      coreApiUri: Uri.parse(''),
      httpClient: httpClient,
    );

    final notificationsService = MockNotificationsService();

    when(notificationsService.list).thenReturn([]);

    final notificationController = NotificationController(notificationsService);
    final uomService = UomService();
    final referenceDataService = ReferenceDataService(httpClient: httpClient);

    final settingsService = SettingsService(
      userInfoService,
      userService,
      uomService,
      referenceDataService,
    );

    final settingsController = SettingsController(settingsService, uomService);
    await settingsController.loadSettings();
    await settingsController.loadUserSettings();

    CoreRoutes.homePagePath = '/dashboard';

    final routeRegistry = RouteRegistry();
    CoreRoutes.register(routeRegistry);
    if (registerRoutes != null) {
      registerRoutes(routeRegistry);
    }

    // EOAppNavRail needs at least 2 destinations, so we need to add a dummy
    // one if we haven't passed any in that are navigable.
    if (routeRegistry
            .getRoutes()
            .where((element) => element.isManuallyNavigable)
            .length <
        2) {
      routeRegistry.addRoute(
        EORoute(
          FontAwesomeIcons.robot.data,
          (context) => 'Test Route',
          path: '/test-route',
          name: 'test-route',
          widgetBuilder: (context, state) => const Text('Test route'),
        ),
      );
    }

    final mockRemoteConfig = MockFirebaseRemoteConfig();

    final fetchAndActivateFuture = Future.value(false);
    when(
      mockRemoteConfig.fetchAndActivate(),
    ).thenAnswer((_) => fetchAndActivateFuture);

    when(
      mockRemoteConfig.getString('banner_message'),
    ).thenReturn('Test message');

    when(mockRemoteConfig.getBool('enableNotifications')).thenReturn(true);

    when(mockRemoteConfig.getString('disabledRoutes')).thenReturn('[]');

    when(
      mockRemoteConfig.getString('party_results_ttl_seconds'),
    ).thenReturn('60');

    when(mockRemoteConfig.getString('ffExperiments')).thenReturn('[]');

    when(mockRemoteConfig.getBool('useCAM')).thenReturn(true);

    final appConfig = AppConfig(
      app: 'eotest',
      env: 'test',
      firebaseRemoteConfig: mockRemoteConfig,
      isWeb: screen == Screen.desktop,
      temporaryDirectory: '',
    );

    final aiHelper = AIHelper(
      instrumentationKey: '',
      enabled: () => loginController.state == LoginState.loggedIn,
      app: appConfig.app,
      env: appConfig.env,
    );

    final overlayController = EmrOneNotificationController();

    appConfig.aiHelper = aiHelper;

    await $.pumpWidget(
      EOCoreApp(
        loginController: loginController,
        userInfoService: userInfoService,
        userService: userService,
        httpClient: httpClient,
        notificationController: notificationController,
        settingsController: settingsController,
        overlayController: overlayController,
        routeRegistry: routeRegistry,
        appConfig: appConfig,
        initialLocation: initialLocation,
        aiHelper: aiHelper,
        directQueryService: directQueryService,
      ),
    );

    await test($, httpResponses);

    // Flush the AI BufferedProcessor so the timer is cancelled.
    await appConfig.aiHelper?.processor.flush();

    // Dispose the config so the internal timer is cancelled.
    appConfig.dispose();
  });
}
