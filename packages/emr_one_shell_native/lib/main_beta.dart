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
import 'package:emr_one_shell_native/firebase_options_beta.dart';
import 'package:emr_one_shell_native/module_startup.dart';
import 'package:emr_one_stock_take/emr_one_stock_take.dart';
import 'package:emr_one_yard_app/emr_one_yard_app.dart';
import 'package:emr_one_yard_logistics/emr_one_yard_logistics.dart';
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
      'tradeRUrl': 'https://emr-trader-beta.azurewebsites.net',
      'finlay': 'https://emr-allocations-uat.azurewebsites.net/api',
      'psnopGraphQL': '', //TODO:to be added when api available
      'yardManagement': 'https://emr-allocations-uat.azurewebsites.net',
      'fireRegister':
          'https://emr-siteregister-api-dev.azurewebsites.net/graphql/',
      'informBaseUrl': 'https://emr-forms-api-staging.azurewebsites.net',
      'eamBaseUrl': 'https://emr-assetmanagement-api-staging.azurewebsites.net',
      'piPrint':
          'https://apim-vpn-test.azure-api.net/PiPrint/print?hostname=uksalwm0028',
      'pdfPiPrint': 'https://emr-pdf-printer-beta.azurewebsites.net',
      'quoteService': 'https://ukelv-quoteservice-staging.emrgroup.com',
      'quoteServiceGraphql': 'https://elv-quoteservice-beta.azurewebsites.net',
      'catService': 'https://ukelv-cat-api-staging.emrgroup.com',
      'geolocationApi': 'https://geolocation-staging.emrgroup.com',
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
              ...SecurityMgmtRouteRegistry.widgetBuilders,
              ...StockTakeRouteRegistry.widgetBuilders,
              ...YardAppRouteRegistry.widgetBuilders,
              ...YardLogisticsRouteRegistry.widgetBuilders,
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

  AccountRegistrationRemoteConfigService.reloadSettingsAndStandingData({});
}
