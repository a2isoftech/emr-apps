import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:emr_one_shell_native/firebase_options_prerelease.dart';
import 'package:emr_one_shell_native/module_startup.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  CoreRoutes.homePagePath = '/dashboard';

  // Get the temporary directory to add to AppConfig so that
  // it can be used without having to call await
  final tempDir = await getTemporaryDirectory();

  await Startup(
    appId: AppIds.kEONative,
    env: 'live',
    tempDirectory: tempDir.path,
    //Deprecated
    instrumentationKey: 'dc39f0f6-f4b1-4f29-b4d7-8c8f71923bd4',
    appInsightsConnectionString:
        'InstrumentationKey=dc39f0f6-f4b1-4f29-b4d7-8c8f71923bd4;IngestionEndpoint=https://westeurope-5.in.applicationinsights.azure.com/;LiveEndpoint=https://westeurope.livediagnostics.monitor.azure.com/;ApplicationId=ae624d77-1c22-489d-81aa-6e89f0bd707d',
    endpoints: {
      'customAuth':
          'https://emrappsauthsvc.azurewebsites.net/api/GetFirebaseToken?code=-jyZEDORZ1n_oSKibiMGkRXZZO5qIwPJ9F60iX5Jmt5PAzFu4qDBKA==',
      'primaryGateway': 'https://emr-coreapi-live-prerelease.azurewebsites.net',
      // TODO: set the door access API URL for this environment.
      'doorAccessUrl': '',
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
  ).start();
}
