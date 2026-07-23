import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:emr_core_api/services/reference_data_service.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/graphql/queries/queries.dart';
import 'package:emr_one_core/services/direct_query_service.dart';
import 'package:emr_one_core/src/logging/helpers/log_location_helper.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart';

class Startup {
  Startup({
    required this.appId,
    required this.env,
    required this.instrumentationKey,
    required this.appInsightsConnectionString,
    required this.endpoints,
    required this.firebaseOptions,
    required this.configureRouteRegistry,
    required this.platformStartup,
    this.routeRegistryMode = RouteRegistryMode.staff,
    this.appConfigOverrides = const {},
    this.customLoginController,
    this.customSettingsController,
    this.userInfoServiceBuilder,
    this.userServiceBuilder,
    this.appTitle,
    this.tempDirectory = '',
  });

  final String appId;
  final String env;
  final String instrumentationKey;
  final String appInsightsConnectionString;
  final Map<String, String> endpoints;
  final FirebaseOptions firebaseOptions;
  late BaseLoginController loginController;
  final RouteRegistryMode routeRegistryMode;
  final Future<void> Function(
    RouteRegistry routeRegistry, {
    List<dynamic>? routingJson,
  })
  configureRouteRegistry;
  final void Function() platformStartup;
  final Map<String, dynamic> appConfigOverrides;
  final BaseLoginController? customLoginController;
  final BaseSettingsController? customSettingsController;
  final UserInfoService Function(BaseClient)? userInfoServiceBuilder;
  final UserService Function(BaseClient)? userServiceBuilder;
  final String? appTitle;
  final String tempDirectory;

  Future<void> start() async {
    // Initialise Firebase.
    await Firebase.initializeApp(options: firebaseOptions);

    // Pass all uncaught errors from the framework to Crashlytics.
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    final frc = await RemoteConfigSetup.setupRemoteConfig(
      FirebaseRemoteConfig.instance,
      endpoints: endpoints,
    );

    // Initialise HIVE
    await Hive.initFlutter();

    // Instantiate our app's config
    final appConfig = AppConfig(
      app: appId,
      env: env,
      firebaseRemoteConfig: frc,
      overrides: appConfigOverrides,
      temporaryDirectory: tempDirectory,
    );

    final routeRegistry = RouteRegistry(mode: routeRegistryMode);

    if (routeRegistryMode == RouteRegistryMode.staff) {
      CoreRoutes.register(routeRegistry);
    } else {
      await configureRouteRegistry(routeRegistry);
    }

    final httpClient = CoreApiClient.withPolicy(
      SimplePolicy(appConfig.primaryApiUrl)
        ..getToken = FirebaseLogin.getToken
        ..shouldRetry = (retryContext) {
          return Future.value(false);
        }
        ..timeout = const Duration(seconds: 60),
    );

    final userInfoService =
        userInfoServiceBuilder?.call(httpClient) ??
        StaffUserInfoService.fromClient(httpClient);

    final userService =
        userServiceBuilder?.call(httpClient) ??
        StaffUserService.fromClient(httpClient);

    final directQueryService = DirectQueryService(
      coreApiUri: Uri.parse(appConfig.coreApiUrl),
      httpClient: httpClient,
    );

    final uomService = UomService();
    final referenceDataService = ReferenceDataService(httpClient: httpClient);
    final settingsService = SettingsService(
      userInfoService,
      userService,
      uomService,
      referenceDataService,
    );

    // Once we have a UserService & SettingsService,
    // we can set them on the policy.
    (httpClient.policy as SimplePolicy)
      ..settingsService = settingsService
      ..userService = userService;

    final settingsController =
        customSettingsController ??
        SettingsController(settingsService, uomService);
    await settingsController.loadSettings();

    if (env == 'apple' || env == 'apple-test') {
      loginController = AppleLoginController(
        customAuthUrl: '',
        onUserLoggedIn: (controller, user) async {
          final userInfoService = UserInfoService.instance;
          final userService = UserService.instance;
          // Show the error screen if we're unable to get UserInfoService.
          if (userInfoService == null || userService == null) {
            controller.loginError();
            return;
          }
          final userInfo = await userInfoService.getUserInfo();
          final user = await userService.getUser();
          if (userInfo == null || user == null) {
            controller.loginError();
            return;
          }

          await _configureRouting(user, httpClient, routeRegistry);
          await settingsController.loadUserSettings();

          // Override if a yard has been chosen on the settings screen.
          _overrideUserYardFromSettings(settingsController, userInfo, user);

          return Future.value();
        },
      );
    } else {
      loginController =
          customLoginController ??
          LoginController(
            customAuthUrl: appId.isPortal ? '' : appConfig.customAuthUrl,
            onUserLoggedIn: (loginController, user) async {
              final userInfoService = UserInfoService.instance;
              final userService = UserService.instance;

              // Show the error screen if we're unable to get UserInfoService.
              if (userInfoService == null || userService == null) {
                loginController.loginError();
                return;
              }

              // Show the error screen if we're unable to get UserInfo.
              final userInfo = await userInfoService.getUserInfo();
              final user = await userService.getUser();
              if (userInfo == null || user == null) {
                loginController.loginError();
                return;
              }

              if (routeRegistryMode == RouteRegistryMode.staff) {
                await _configureRouting(user, httpClient, routeRegistry);
              }

              await settingsController.loadUserSettings();

              // Override if a yard has been chosen on the settings screen.
              _overrideUserYardFromSettings(settingsController, userInfo, user);
            },
          );
    }

    final notificationsService = NotificationsService();
    final notificationController = NotificationController(notificationsService);

    // Configure AppLinks and see if we have an initial URL.
    final appLinks = AppLinks();
    final initialUri = await appLinks.getInitialLink();

    // Call anything platform specific before runApp is called, such as hiding
    // a splash screen.
    platformStartup();

    final aiHelper = AIHelper(
      instrumentationKey: instrumentationKey,
      enabled: () => loginController.state == LoginState.loggedIn,
      app: appConfig.app,
      env: appConfig.env,
    );

    appConfig.aiHelper = aiHelper;

    // Initialise the background service (which is a singleton).
    await EmrBackgroundService.instance.initialize(
      getDefaultHeaders: () async {
        return {
          'Authorization': 'Bearer ${await FirebaseLogin.getToken()}',
          if (userService.hasUser)
            'X-Yard-Code': await settingsService.yardCode(),
        };
      },
    );

    final overlayController = EmrOneNotificationController();

    //Initialise loggers and perform cleanup actions.
    await LoggerRegistrationHandler.register(
      appInsightsConnectionString: appInsightsConnectionString,
      userService: userService,
      app: appId,
      environment: env,
      // This will come from firebase
      loggerConfigurations: appConfig.loggerConfigurations,
      client: AppInsightsHttpClient.withPolicy(
        SimplePolicy(appConfig.primaryApiUrl)
          ..getToken = FirebaseLogin.getToken
          ..shouldRetry = (retryContext) {
            return (retryContext.attempts <= 3)
                ? Future.value(true)
                : Future.value(false);
          }
          ..timeout = const Duration(seconds: 10)
          ..retryDelay = const Duration(seconds: 30),
      ),
    );

    if (!appConfig.isWeb) {
      Timer.periodic(Duration(minutes: appConfig.locationTrackingInterval), (
        _,
      ) {
        LogLocationHelper.trackUsage();
      });
    }

    runApp(
      EOCoreApp(
        loginController: loginController,
        userInfoService: userInfoService,
        userService: userService,
        httpClient: httpClient,
        notificationController: notificationController,
        settingsController: settingsController,
        overlayController: overlayController,
        aiHelper: aiHelper,
        routeRegistry: routeRegistry,
        appConfig: appConfig,
        initialLocation: initialUri?.path ?? '/',
        appLinks: appLinks,
        title: appTitle,
        directQueryService: directQueryService,
      ),
    );
  }

  void _overrideUserYardFromSettings(
    BaseSettingsController settingsController,
    UserInfo userInfo,
    User user,
  ) {
    // Override if a yard has been chosen on the settings screen.
    if (settingsController is SettingsController) {
      final settingsYardCode = settingsController.yardCode();

      if (settingsYardCode != null) {
        userInfo.defaultYard = settingsYardCode;
        user.defaultYardCode = settingsYardCode;
      }
    }
  }

  Future<void> _configureRouting(
    User user,
    CoreApiClient httpClient,
    RouteRegistry routeRegistry,
  ) async {
    List<dynamic>? routingJson;

    // If the user has the appropriate permission,
    // we fetch the JSON for the routing.
    if (user.permissions.contains('permissions/menu-version-2/view')) {
      final response = await documentNodeQueryGetReferenceData.execute(
        httpClient,
        (Map<String, dynamic> json) {
          return (json['referenceData'] as Map<String, dynamic>)['Data']
              as List<dynamic>;
        },
        variables: Variables$Query$GetReferenceData(name: 'routing'),
      );

      routingJson = response.data;
    }

    await configureRouteRegistry(routeRegistry, routingJson: routingJson);
  }
}
