import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:emr_one_shell_native/firebase_options_beta.dart';
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
    env: 'beta',
    tempDirectory: tempDir.path,
    //Deprecated
    instrumentationKey: 'b498e932-594c-42d3-952c-02de4dee3db5',
    appInsightsConnectionString:
        'InstrumentationKey=b498e932-594c-42d3-952c-02de4dee3db5;IngestionEndpoint=https://uksouth-1.in.applicationinsights.azure.com/;LiveEndpoint=https://uksouth.livediagnostics.monitor.azure.com/;ApplicationId=fd6435f9-8096-40b7-ab71-3cc36578e03f',
    endpoints: {
      'customAuth':
          'https://emrappsbetaauthsvc.azurewebsites.net/api/GetFirebaseToken?code=QRz_k8QLeid8Az8FVJ7RgMAFm_hL5jF95Zd1w8yzkINpAzFujk74tQ==',
      'primaryGateway': 'https://emr-coreapi-beta.azurewebsites.net',
      // TODO: set the door access API URL for this environment.
      'doorAccessUrl': '',
    },
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
    configureRouteRegistry: (
      routeRegistry, {
      List<dynamic>? routingJson,
    }) async {
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
