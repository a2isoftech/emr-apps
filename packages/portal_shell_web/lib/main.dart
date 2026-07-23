import 'dart:convert';

import 'package:emr_account_registration/services/account_registration_remote_config_service.dart';
import 'package:emr_account_registration/services/customer_user_info_service.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:portal_shell_web/firebase_options.dart';
import 'package:portal_shell_web/module_startup.dart';

void main() async {
  // Parse arguments, environment variables
  const envEmailLoginCallbackUrl =
      String.fromEnvironment('EMAIL_LOGIN_CALLBACK_URL');

  const appTitle = String.fromEnvironment('APP_TITLE');

  usePathUrlStrategy();

  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final firebaseOptions = DefaultFirebaseOptions.currentPlatform;

  await Firebase.initializeApp(
    options: firebaseOptions,
  );

  final customerUserInfoService = CustomerUserInfoService();

  final overrides = jsonDecode(
    await rootBundle.loadString('assets/environment_variables.json'),
  ) as Map<String, dynamic>;

  CoreRoutes.homePagePath = '/welcome';
  final BaseSettingsController settingsController = PortalSettingsController(
    PortalSettingsService(),
  );

  await Startup(
    appId: AppIds.kPortalWeb,
    env: 'live',
    //Deprecated
    instrumentationKey: '9da448b5-fc6f-4869-9b9e-7161c2401815',
    appInsightsConnectionString:
        'InstrumentationKey=9da448b5-fc6f-4869-9b9e-7161c2401815;IngestionEndpoint=https://westeurope-4.in.applicationinsights.azure.com/;LiveEndpoint=https://westeurope.livediagnostics.monitor.azure.com/;ApplicationId=31e2bb37-72dc-4667-9c65-70aba8a8d3d9',
    endpoints: {
      'primaryGateway':
          'https://emr-apim-uk-live.azure-api.net/accountmanagement',
      'customerPortalApi': 'https://emr-portalapi.azurewebsites.net',
      'afrApiUrl':
          'https://emr-apim-uk-live.azure-api.net/accountmanagement/afr',
      'emailVerificationCallbackUrl': loginCallBackUrl(
        envEmailLoginCallbackUrl,
      ),
    },
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
    routeRegistryMode: RouteRegistryMode.customer,
    configureRouteRegistry: ModuleStartup.configure,
    platformStartup: FlutterNativeSplash.remove,
    userInfoServiceBuilder: (httpClient) => customerUserInfoService,
    userServiceBuilder: (httpClient) => PortalUserService.singleton(
      customerUserInfoService,
    ),
    customSettingsController: settingsController,
    appTitle: _getEnvironmentValue(
      appTitle,
      PortalSettings.title,
    ),
  ).start();

  PortalRemoteConfigService.reloadSettingsAndStandingData();
  AccountRegistrationRemoteConfigService.reloadSettingsAndStandingData(
    overrides,
  );
}

String _getEnvironmentValue(
  String valueFromEnv,
  String defaultValue,
) {
  if (valueFromEnv.isNotEmpty) {
    return valueFromEnv.trim();
  }
  return defaultValue;
}

String loginCallBackUrl(String envEmailLoginCallbackUrl) {
  // use deployment endpoint by default
  const defaultCallBackUrl = 'https://portal.emrgroup.com';
  final emailLoginCallbackUrl = envEmailLoginCallbackUrl.trim();
  if (emailLoginCallbackUrl.isEmpty) {
    // environment did not set email endpoint
    return '$defaultCallBackUrl/emaillink';
  }
  return '$emailLoginCallbackUrl/emaillink';
}
