import 'package:app_links/app_links.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/emr_one_core_theme.dart';
import 'package:emr_one_core/emr_one_core_theme_fallback.dart';
import 'package:emr_one_core/services/direct_query_service.dart';
import 'package:emr_one_core/src/notification/emr_one_notification_manager.dart';
import 'package:emr_one_core/src/widgets/permissions_prompt/permissions_prompt_screen.dart';
import 'package:emr_one_localisations/emr_one_localisations.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

/// {@category Basics}
class EOCoreApp extends StatelessWidget {
  const EOCoreApp({
    required this.routeRegistry,
    required this.appConfig,
    required this.settingsController,
    required this.loginController,
    required this.userInfoService,
    required this.userService,
    required this.httpClient,
    required this.notificationController,
    required this.aiHelper,
    required this.overlayController,
    required this.directQueryService,
    super.key,
    this.initialLocation = '/',
    this.appLinks,
    this.title,
  });

  final RouteRegistry routeRegistry;
  final BaseLoginController loginController;
  final String initialLocation;
  final AppConfig appConfig;
  final BaseSettingsController settingsController;
  final NotificationController notificationController;
  final EmrOneNotificationController overlayController;
  final AppLinks? appLinks;
  final CoreApiClient httpClient;
  final UserInfoService userInfoService;
  final DirectQueryService directQueryService;
  final UserService userService;
  final String? title;
  final AIHelper aiHelper;

  @override
  Widget build(BuildContext context) {
    final router = _createRouter();

    return InheritedAIHelper(
      aiHelper: aiHelper,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<AppConfig>.value(value: appConfig),
          ChangeNotifierProvider<BaseSettingsController>.value(
            value: settingsController,
          ),
          Provider<UserInfoService>.value(value: userInfoService),
          Provider<DirectQueryService>.value(value: directQueryService),
          Provider<UserService>.value(value: userService),
          Provider<BaseClient>.value(value: httpClient),
          Provider<CoreApiClient>.value(value: httpClient),
          ListenableProvider<NotificationController>.value(
            value: notificationController,
          ),
          Provider<RouteRegistry>.value(value: routeRegistry),
          ProxyProvider<UserService, UomService>(
            update: (context, userService, uomService) => UomService(),
          ),
          Provider<EmrOneNotificationController>.value(
            value: overlayController,
          ),
        ],
        child: ChangeNotifierProvider<BaseLoginController>.value(
          value: loginController,
          builder: (context, widget) => AnimatedBuilder(
            animation: settingsController,
            builder: (context, _) => MaterialApp.router(
              builder: (context, child) {
                return Directionality(
                  textDirection: TextDirection.ltr,
                  child: Overlay.wrap(
                    child: EmrOneNotificationManager(
                      controller: overlayController,
                      appConfig: appConfig,
                      child: PermissionsPromptScreen(
                        child: child ?? const SizedBox(),
                      ),
                    ),
                  ),
                );
              },
              debugShowCheckedModeBanner: false,
              routeInformationProvider: router.routeInformationProvider,
              routeInformationParser: router.routeInformationParser,
              routerDelegate: router.routerDelegate,
              title: title ?? EmrOneConstants.appName,
              theme:
                  appConfig.ffExperiments.contains(
                    EmrOneFFExperiments.kUseOldTheme,
                  )
                  ? EmrOneCoreThemeFallback.lightTheme()
                  : EmrOneCoreTheme.lightTheme(),
              darkTheme:
                  appConfig.ffExperiments.contains(
                    EmrOneFFExperiments.kUseOldTheme,
                  )
                  ? EmrOneCoreThemeFallback.darkTheme()
                  : EmrOneCoreTheme.darkTheme(),
              themeMode: settingsController.themeMode,
              localizationsDelegates: const [
                EmrAppsLocalisations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                // 'en' is the language code. We could optionally provide
                // a country code as the second param, e.g.
                // Locale('en', 'US'). If we do that, we may want to
                // provide an additional app_en_US.arb file for
                // region-specific translations.
                Locale('en', ''),
                Locale('en', 'GB'),
                Locale('en', 'US'),
                Locale('de', ''),
                Locale('es', ''),
                Locale('es', 'US'),
                Locale('nl', ''),
                Locale('zu', ''), // This locale is to help with development.
              ],
              localeResolutionCallback:
                  (Locale? locale, Iterable<Locale> supportedLocales) {
                    final matchedLocale = _matchLocale(
                      locale,
                      supportedLocales,
                    );

                    Validators.setLocale(matchedLocale);

                    return matchedLocale;
                  },
            ),
          ),
        ),
      ),
    );
  }

  Locale _matchLocale(Locale? locale, Iterable<Locale> supportedLocales) {
    // To test localisation placeholders on a native device, add
    // the following line back to see text for the ZU locale.
    // return supportedLocales.last;

    // Return the first supported locale if we don't have one
    // to compare with.
    if (locale == null) {
      return supportedLocales.first;
    }

    // Try to find a country specific supported locale.
    final countryLocale = supportedLocales
        .where(
          (sl) =>
              sl.languageCode == locale.languageCode &&
              sl.countryCode == locale.countryCode,
        )
        .toList();

    if (countryLocale.isNotEmpty) {
      return countryLocale.first;
    }

    // Try to find a language specific supported locale.
    final languageLocale = supportedLocales
        .where((sl) => sl.languageCode == locale.languageCode)
        .toList();

    if (languageLocale.isNotEmpty) {
      return languageLocale.first;
    }

    // Just return the first one if we don't match any supported
    // locales.
    return supportedLocales.first;
  }

  GoRouter _createRouter() {
    final router = GoRouter.routingConfig(
      observers: <NavigatorObserver>[EONavObserver()],
      routingConfig: routeRegistry.routingConfig,
      refreshListenable: loginController,
      initialLocation: initialLocation,
      errorPageBuilder: (context, state) => ErrorPage(
        context,
        errorCode: 404,
        errorMessage: context.l10n.pageNotFound,
      ),
    );

    // appLinks will be available for native apps. Web deep links already work.
    if (appLinks != null) {
      // Subscribe to further link events when app is started.
      appLinks!.uriLinkStream.listen((uri) => router.go(uri.path));
    }

    return router;
  }
}

class EONavObserver extends NavigatorObserver {
  EONavObserver();

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    EmrLogger.event(
      EmrOneCoreTelemetry.kNavigate,
      params: {'location': route.settings.name ?? EmrOneCoreTelemetry.kUnknown},
    );
  }
}
