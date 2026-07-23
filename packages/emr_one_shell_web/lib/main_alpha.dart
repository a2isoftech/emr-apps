import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:emr_one_shell_web/firebase_options_alpha.dart';
import 'package:emr_one_shell_web/module_startup.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() async {
  usePathUrlStrategy();

  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  CoreRoutes.homePagePath = '/dashboard';

  final overrides =
      jsonDecode(
            await rootBundle.loadString('assets/environment_variables.json'),
          )
          as Map<String, dynamic>;

  await Startup(
    appId: AppIds.kEOWeb,
    env: 'alpha',
    //Deprecated
    instrumentationKey: 'b498e932-594c-42d3-952c-02de4dee3db5',
    appInsightsConnectionString:
        'InstrumentationKey=b498e932-594c-42d3-952c-02de4dee3db5;IngestionEndpoint=https://uksouth-1.in.applicationinsights.azure.com/;LiveEndpoint=https://uksouth.livediagnostics.monitor.azure.com/;ApplicationId=fd6435f9-8096-40b7-ab71-3cc36578e03f',
    endpoints: {
      'customAuth':
          'https://emrappsbetaauthsvc.azurewebsites.net/api/GetFirebaseToken?code=QRz_k8QLeid8Az8FVJ7RgMAFm_hL5jF95Zd1w8yzkINpAzFujk74tQ==',
      'primaryGateway':
          'https://emr-coreapi-alpha-dbaeb4fnbccfhta4.uksouth-01.azurewebsites.net',
      'coreApi':
          'https://emr-coreapi-alpha-dbaeb4fnbccfhta4.uksouth-01.azurewebsites.net/graphql',
    },
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
    configureRouteRegistry:
        (routeRegistry, {List<dynamic>? routingJson}) async {
          if (routingJson != null) {
            await RouteBuilder.configure(
              routeRegistry,
              EORouteConverter(
                widgetBuilders: {
                  ...CoreRoutes.widgetBuilders,
                  ...DoorAccessRouteRegistry.widgetBuilders,
                },
              ),
              routingJson,
            );
          } else {
            await ModuleStartup.configure(routeRegistry);
          }
        },
    platformStartup: FlutterNativeSplash.remove,
    appConfigOverrides: overrides,
  ).start();
}
