import 'dart:convert';

import 'package:emr_one_core/models/config_models/inventory_config.dart';
import 'package:emr_one_core/src/logging/logger_configuration.dart';
import 'package:emr_one_core/widgets/ai/ai.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

class AppConfig with ChangeNotifier {
  AppConfig({
    required this.app,
    required this.env,
    required this.firebaseRemoteConfig,
    required this.temporaryDirectory,
    this.overrides = const <String, dynamic>{},
    this.refreshConfigInterval = const Duration(minutes: 10),
    this.isWeb = kIsWeb,
  }) {
    /// TEMPORARY REMOVAL OF POLLING FOR REMOTE CONFIG
    /// This is a temporary removal of polling for remote config. This is to
    /// prevent GoRouter asserting when the poll is triggered and changes
    /// are detected.
    ///
    /// The assertion is:
    /// package:go_router/src/builder.dart';
    /// Failed assertion: line 142 pos 14:
    /// '_routeMatchLookUp.isEmpty': is not true.
    ///
    // Poll Remote Config to check for updated values.
    // _timer = Timer.periodic(refreshConfigInterval, (timer) async {
    //   try {
    //     final changed = await firebaseRemoteConfig.fetchAndActivate();

    //     unawaited(
    //       aiHelper?.trackEvent(
    //         'appConfig',
    //         type: 'fetchAndActivate',
    //         params: {
    //           'changed': changed.toString(),
    //         },
    //       ),
    //     );

    //     if (changed) {
    //       await aiHelper?.trackEvent('appConfig', type: 'notifyListeners');

    //       notifyListeners();
    //     }
    //   } catch (ex) {
    //     unawaited(
    //       aiHelper?.submitErrorAsTelemetry(
    //         isFatal: false,
    //         error: ex,
    //         trace: StackTrace.current,
    //       ),
    //     );
    //   }
    // });
  }

  final String app;
  final String env;
  final FirebaseRemoteConfig firebaseRemoteConfig;
  final Duration refreshConfigInterval;
  final bool isWeb;
  final String temporaryDirectory;

  /// Overrides take priority over hardcoded defaults or those in Remote Config.
  final Map<String, dynamic> overrides;

  // late Timer _timer;

  // AIHelper won't be available until EOCoreApp is built.
  AIHelper? aiHelper;

  @override
  void dispose() {
    // _timer.cancel();

    super.dispose();
  }

  Map<String, List<String>> get headOfficeAddresses =>
      (jsonDecode(_getString('head_office_addresses')) as Map<String, dynamic>)
          .map(
            (key, value) => MapEntry(
              key,
              (value as List<dynamic>).whereType<String>().toList(),
            ),
          );

  LoggerConfigurations get loggerConfigurations =>
      LoggerConfigurations.fromJson(
        jsonDecode(_getString('logger_configurations')) as Map<String, dynamic>,
      );

  List<String> get disabledRoutes =>
      (jsonDecode(_getString('disabledRoutes')) as List<dynamic>)
          .whereType<String>()
          .toList();

  String endpoint(String key) => _getEndpoint(key);

  String get afrApiUrl => _getEndpoint('afrApiUrl');

  String get emailVerificationCallbackUrl =>
      _getEndpoint('emailVerificationCallbackUrl');

  String get primaryApiUrl => _getEndpoint('primaryGateway');

  String get tradeRUrl => _getEndpoint('tradeRUrl');

  String get bannerMessage => _getString('banner_message');

  bool get enableNotifications => _getBool('enableNotifications');

  bool get useCAM => _getBool('useCAM');

  String get finlayBaseUrl => _getEndpoint('finlay');

  String get yardManagementGraphqlUrl => _getEndpoint('psnopGraphQL');

  String get yardManagementDeepLinkBaseUrl => _getEndpoint('yardManagement');

  String get customAuthUrl => _getEndpoint('customAuth');

  String get fireRegisterUrl => _getEndpoint('fireRegister');

  String get customerPortalApiUrl => _getEndpoint('customerPortalApi');

  String get haulagePriceMatrixBaseUrl =>
      _getEndpoint('haulage_price_matrix_url');

  String get informBaseUrl => _getEndpoint('informBaseUrl');

  String get transportBaseUrl => _getEndpoint('transportBaseUrl');

  String get eamBaseUrl => _getEndpoint('eamBaseUrl');

  String get piPrintUrl => _getEndpoint('piPrint');

  String get pdfPiPrintUrl => _getEndpoint('pdfPiPrint');

  String get quoteServiceApiUrl => _getEndpoint('quoteService');

  String get quoteServiceGraphqlApiUrl => _getEndpoint('quoteServiceGraphql');

  String get catApiUrl => _getEndpoint('catService');

  String get geolocationApiUrl => _getEndpoint('geolocationApi');

  String get pricingApiUrl => _getEndpoint('pricing');

  String get t2baseUrl => _getString('t2ExternalBaseUrl');

  String get vpnApimBaseUrl => _getEndpoint('vpnApimBaseUrl');

  String get yardLogisticsApiUrl => _getEndpoint('yardLogisticsApiUrl');

  String get ticketsApiUrl => _getEndpoint('ticketApi');

  String get coreApiUrl => _getEndpoint('coreApi');

  String get transportHomePageUrl => _getEndpoint('transportHomePageUrl');

  int get yrdAppImgCompressQuality => _getInt('yrdAppImgCompressQuality');

  String get emrAppsBase => _getEndpoint('emrAppsBase');

  String get emrAppsCloudBase => _getEndpoint('emrAppsCloudBase');

  int get visibleNotificationLimit => isWeb
      ? _getInt('webVisibleNotificationLimit')
      : _getInt('nativeVisibleNotificationLimit');

  int get notificationVisibilityDuration => _getInt('notificationDuration');

  int get notificationAnimationDuration =>
      _getInt('notificationAnimationDuration');

  int get notificationWidthWeb => _getInt('notificationWidthWeb');

  int get locationTrackingInterval => _getInt('locationTrackingInterval');

  // Whether compatible apps should run at edge. Implementation of this
  // switch should be done at the package level when/if they become
  // compatible with running at edge.
  bool get runAtEdge => _getBool('runAtEdge');
  bool get includeEdgePaymentMethods => _getBool('includeEdgePaymentMethods');
  String get edgeCoreApiUrl => _getEndpoint('edgeCoreApi');
  String get edgeMediaApiUrl => _getEndpoint('edgeMediaApi');

  Duration get partyResultsTtl {
    final defaultTtl = _getString('party_results_ttl_seconds');
    final parsed = int.tryParse(defaultTtl);

    if (parsed != null) {
      return Duration(seconds: parsed);
    }

    return Duration.zero;
  }

  List<String> get ffExperiments =>
      (jsonDecode(_getString('ffExperiments')) as List<dynamic>)
          .whereType<String>()
          .toList();

  List<String> get elvConfigs {
    final configs = _getString('elvConfigs');
    if (configs.isEmpty) return [];

    final decoded = jsonDecode(configs);
    if (decoded is List) {
      return decoded.whereType<String>().toList();
    }

    return [];
  }

  Map<String, List<String>> get weighbridgeIds =>
      (jsonDecode(_getString('weighbridgeIds')) as Map<String, dynamic>).map(
        (key, value) => MapEntry(
          key,
          (value as List<dynamic>).whereType<String>().toList(),
        ),
      );

  Map<String, List<String>> get northernCatPrinters =>
      (jsonDecode(_getString('northernCatPrinters')) as Map<String, dynamic>)
          .map(
            (key, value) => MapEntry(
              key,
              (value as List<dynamic>).whereType<String>().toList(),
            ),
          );

  InventoryConfig? inventoryConfig(String yardCode) {
    try {
      final yardConfigs =
          (jsonDecode(_getString('yardInventoryConfigs'))
                  as Map<String, dynamic>)
              .map(
                (key, value) => MapEntry(
                  key,
                  InventoryConfig.fromJson(value as Map<String, dynamic>),
                ),
              );
      return yardConfigs[yardCode];
    } catch (ex) {
      return null;
    }
  }

  String? techemetConfig(int sid) {
    try {
      final techemetConfig = _getEndpoint('techemetApi');
      return techemetConfig.replaceAll('{sid}', sid.toString());
    } catch (ex) {
      return null;
    }
  }

  int get formsEngineUploadTimer {
    try {
      final uploadTimer = firebaseRemoteConfig
          .getValue('formsEngineUploadTimer')
          .asInt();
      return uploadTimer > 0 ? uploadTimer : 30;
    } on Exception {
      return 30;
    }
  }

  String _getEndpoint(String key) {
    final override = overrides['eo_endpoints__$key'] as String?;

    if (override != null) {
      return override;
    }

    final endpointsJson = firebaseRemoteConfig.getValue('endpoints').asString();

    final endpoints = jsonDecode(endpointsJson) as Map<String, dynamic>;

    if (endpoints.containsKey(key)) {
      return endpoints[key].toString();
    }

    throw Exception("'endpoints' does not contain a key for '$key'.");
  }

  String get mediaApi => _getEndpoint('mediaApi');

  String get partyAccountsPartition =>
      firebaseRemoteConfig.getValue('partyAccountsPartition').asString();

  /// Get a string value from an override or Remote Config.
  String _getString(String key) =>
      overrides['eo_$key'] as String? ?? firebaseRemoteConfig.getString(key);

  /// Get a bool value from an override or Remote Config.
  bool _getBool(String key) {
    final override = overrides['eo_$key'] as String?;

    if (override != null) {
      return override == 'true';
    }

    return firebaseRemoteConfig.getBool(key);
  }

  /// Get a int value from an override or Remote Config.
  int _getInt(String key) {
    final value = overrides['eo_$key'];
    if (value is int) {
      return value;
    }
    return firebaseRemoteConfig.getInt(key);
  }
}
