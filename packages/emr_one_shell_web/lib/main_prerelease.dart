import 'dart:convert';

import 'package:emr_account_registration/services/account_registration_remote_config_service.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
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
import 'package:emr_one_shell_web/firebase_options_prerelease.dart';
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
    env: 'prerelease',
    //Deprecated
    instrumentationKey: 'dc39f0f6-f4b1-4f29-b4d7-8c8f71923bd4',
    appInsightsConnectionString:
        'InstrumentationKey=dc39f0f6-f4b1-4f29-b4d7-8c8f71923bd4;IngestionEndpoint=https://westeurope-5.in.applicationinsights.azure.com/;LiveEndpoint=https://westeurope.livediagnostics.monitor.azure.com/;ApplicationId=ae624d77-1c22-489d-81aa-6e89f0bd707d',
    endpoints: {
      'customAuth':
          'https://emrappsauthsvc.azurewebsites.net/api/GetFirebaseToken?code=-jyZEDORZ1n_oSKibiMGkRXZZO5qIwPJ9F60iX5Jmt5PAzFu4qDBKA==',
      'primaryGateway': 'https://emr-coreapi-live-prerelease.azurewebsites.net',
      'tradeRUrl': 'https://emr-trader-live.azurewebsites.net',
      'finlay': 'https://emr-allocations.azurewebsites.net/api',
      'psnopGraphQL': '', //TODO:to be added when api available
      'yardManagement': 'https://allocations.emrgroup.com',
      'fireRegister':
          'https://emr-siteregister-api-dev.azurewebsites.net/graphql/',
      'haulage_price_matrix_url':
          'https://haulage-pricing-api.azurewebsites.net',
      'informBaseUrl': 'https://emr-forms-api.azurewebsites.net',
      'eamBaseUrl': 'https://emr-assetmanagement-api.azurewebsites.net',
      'piPrint':
          'https://emr-apim-uk-live.azure-api.net/piprint/print?hostname={hostname}',
      'pdfPiPrint': 'https://emr-pdf-printer.azurewebsites.net',
      'quoteService': 'https://ukelv-quoteservice.emrgroup.com',
      'quoteServiceGraphql': 'https://elv-quoteservice.azurewebsites.net',
      'catService': 'https://ukelv-cat-api.emrgroup.com',
      'geolocationApi': 'https://geolocation.emrgroup.com',
      'camRavenUrl':
          'https://emr-accountmanagement-api.azurewebsites.net/graphql',
      'transportBaseUrl': 'https://transport-api.azurewebsites.net',
      'transportHomePageUrl': 'https://transport.emrgroup.com',
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
