import 'dart:convert';

import 'package:emr_account_registration/services/account_registration_remote_config_service.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:emr_one_eam/eam.dart';
import 'package:emr_one_elv_dismantling/elv_dismantling.dart';
import 'package:emr_one_elv_inspection/elv_inspection.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:emr_one_elv_t2/elv_t2.dart';
import 'package:emr_one_fire_register/fire_register.dart';
import 'package:emr_one_inform/inform.dart';
import 'package:emr_one_inventory/emr_one_inventory.dart';
import 'package:emr_one_prefs/prefs.dart';
import 'package:emr_one_securitymgmt/securitymgmt.dart';
import 'package:emr_one_shell_web/firebase_options_apple_test.dart';
import 'package:emr_one_shell_web/module_startup.dart';
import 'package:emr_one_stock_take/emr_one_stock_take.dart';
import 'package:emr_one_tickets/tickets.dart';
import 'package:emr_one_transport/emr_one_transport.dart';
import 'package:emr_one_yard_logistics/emr_one_yard_logistics.dart';
import 'package:emr_one_yard_management/yard_management.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:psnop/psnop.dart';

void main() async {
  usePathUrlStrategy();

  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  CoreRoutes.homePagePath = '/dashboard';

  final overrides =
      jsonDecode(
            await rootBundle.loadString('assets/environment_variables.json'),
          )
          as Map<String, dynamic>;

  await Startup(
    appId: AppIds.kEOWeb,
    env: 'apple-test',
    instrumentationKey: '',
    appInsightsConnectionString:
        'InstrumentationKey=b498e932-594c-42d3-952c-02de4dee3db5;IngestionEndpoint=https://uksouth-1.in.applicationinsights.azure.com/;LiveEndpoint=https://uksouth.livediagnostics.monitor.azure.com/;ApplicationId=fd6435f9-8096-40b7-ab71-3cc36578e03f',
    endpoints: {
      'customAuth':
          'https://emrappsbetaauthsvc.azurewebsites.net/api/GetFirebaseToken?code=QRz_k8QLeid8Az8FVJ7RgMAFm_hL5jF95Zd1w8yzkINpAzFujk74tQ==',
      'primaryGateway':
          'https://emr-coreapi-alpha-dbaeb4fnbccfhta4.uksouth-01.azurewebsites.net',
      'finlay': 'http://localhost:8080',
      'psnopGraphQL': 'http://localhost:8080',
      'yardManagement': 'http://localhost:8080',
      'fireRegister': 'http://localhost:8080',
      'informBaseUrl': 'http://localhost:8080',
      'eamBaseUrl': 'http://localhost:8080',
      'piPrint':
          'https://apim-vpn-test.azure-api.net/PiPrint/print?hostname=uksalwm0028',
      'pdfPiPrint': 'https://emr-pdf-printer-beta.azurewebsites.net',
      'quoteService': 'http://localhost:8080',
      'quoteServiceGraphql': 'https://elv-quoteservice-beta.azurewebsites.net',
      'catService': 'https://ukelv-cat-api-staging.emrgroup.com',
      'geolocationApi': 'https://geolocation-staging.emrgroup.com',
      'camRavenUrl': 'http://localhost:8080',
      'transportBaseUrl':
          'http://localhost:8080', //TODO:to be added when api available
      'coreApi':
          'https://emr-coreapi-alpha-dbaeb4fnbccfhta4.uksouth-01.azurewebsites.net/graphql',
      'transportHomePageUrl': 'http://localhost:8080',
    },
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
    configureRouteRegistry:
        (routeRegistry, {List<dynamic>? routingJson}) async {
          if (routingJson != null) {
            await RouteBuilder.configure(
              routeRegistry,
              EORouteConverter(
                widgetBuilders: {
                  ...AccountRouteRegistry.widgetBuilders,
                  ...CoreRoutes.widgetBuilders,
                  ...CashiersearchRouteRegistry.widgetBuilders,
                  ...CrmRouteRegistry.widgetBuilders,
                  ...DataManagementRouteRegistry.widgetBuilders,
                  ...DoorAccessRouteRegistry.widgetBuilders,
                  ...EAMRouteRegistry.widgetBuilders,
                  ...ElvDismantlingRouteRegistry.widgetBuilders,
                  ...ElvInspectionRouteRegistry.widgetBuilders,
                  ...ElvQuotesRouteRegistry.widgetBuilders,
                  ...ElvT2RouteRegistry.widgetBuilders,
                  ...FireRegisterRouteRegistry.widgetBuilders,
                  ...InformRouteRegistry.widgetBuilders,
                  ...InventoryRouteRegistry.widgetBuilders,
                  ...PrefsRouteRegistry.widgetBuilders,
                  ...PsnopRouteRegistry.widgetBuilders,
                  ...SecurityMgmtRouteRegistry.widgetBuilders,
                  ...StockTakeRouteRegistry.widgetBuilders,
                  ...TicketsRouteRegistry.widgetBuilders,
                  ...TransportRouteRegistry.widgetBuilders,
                  ...YardLogisticsRouteRegistry.widgetBuilders,
                  ...YardManagementRouteRegistry.widgetBuilders,
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

  AccountRegistrationRemoteConfigService.reloadSettingsAndStandingData(
    overrides,
  );
}
