import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:emr_one_shell_web/firebase_options_dev.dart';
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
    env: 'dev',
    //Deprecated
    instrumentationKey: '77e00752-0501-4ac5-801a-3d74962b8c19',
    appInsightsConnectionString:
        'InstrumentationKey=77e00752-0501-4ac5-801a-3d74962b8c19;IngestionEndpoint=https://uksouth-1.in.applicationinsights.azure.com/;LiveEndpoint=https://uksouth.livediagnostics.monitor.azure.com/;ApplicationId=16bd0ce9-2f35-4cd1-939f-0fda42e09a08',
    endpoints: {
      'customAuth':
          'https://emrappsdevauthsvc.azurewebsites.net/api/GetFirebaseToken?code=VuoA27apKcS1b5LU_MFZ6RICmBcUbXYwNAWrcnt-D7nVAzFu-sMWuw==',
      'primaryGateway': 'https://emr-coreapi-dev.azurewebsites.net',
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
