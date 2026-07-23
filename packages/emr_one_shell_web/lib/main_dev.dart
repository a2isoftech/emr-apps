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
import 'package:emr_one_shell_web/firebase_options_dev.dart';
import 'package:emr_one_shell_web/module_startup.dart';
import 'package:emr_one_stock_take/emr_one_stock_take.dart';
import 'package:emr_one_tickets/tickets.dart';
import 'package:emr_one_transport/emr_one_transport.dart';
import 'package:emr_one_yard_logistics/emr_one_yard_logistics.dart';
import 'package:emr_one_yard_management/yard_management.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:psnop/psnop.dart';

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
      'tradeRUrl': 'https://emr-trader-dev.azurewebsites.net',
      'finlay': 'https://yardmanagement-dev.emrgroup.com/api',
      'psnopGraphQL': 'https://psnop-dev.azurewebsites.net/graphql/',
      'yardManagement': 'https://yardmanagement-dev.emrgroup.com',
      'fireRegister':
          'https://emr-siteregister-api-dev.azurewebsites.net/graphql/',
      'haulage_price_matrix_url':
          'https://haulage-pricing-api-dev.azurewebsites.net',
      'informBaseUrl': 'https://emr-forms-api-dev.azurewebsites.net',
      'eamBaseUrl': 'https://emr-assetmanagement-api-dev.azurewebsites.net',
      'piPrint':
          'https://apim-vpn-test.azure-api.net/PiPrint/print?hostname=uksalwm0028',
      'pdfPiPrint': 'https://emr-pdf-printer-dev.azurewebsites.net',
      'quoteService': 'https://ukelv-quoteservice-dev.emrgroup.com',
      'quoteServiceGraphql': 'https://elv-quoteservice-dev.azurewebsites.net',
      'catService': 'https://ukelv-cat-api-dev.emrgroup.com',
      'geolocationApi': 'https://geolocation-dev.emrgroup.com',
      'vpnApimBaseUrl': 'https://apim-vpn-test.azure-api.net',
      'camRavenUrl':
          'https://emr-accountmanagement-api.azurewebsites.net/graphql',
      'transportBaseUrl': 'https://transport-api-dev.azurewebsites.net',
      'transportHomePageUrl': 'https://transport-dev.emrgroup.com',
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
