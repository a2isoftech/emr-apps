import 'package:emr_one_accounts/routing/accounts_route_registry.dart';
import 'package:emr_one_cashiersearch/routing/cashiersearch_route_registry.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/routing/crm_route_registry.dart';
import 'package:emr_one_eam/routing/eam_route_registry.dart';
import 'package:emr_one_elv_dismantling/routing/elv_dismantling_route_registry.dart';
import 'package:emr_one_elv_inspection/routing/elv_inspection_route_registry.dart';
import 'package:emr_one_elv_quotes/routing/elv_quotes_route_registry.dart';
import 'package:emr_one_elv_t2/routing/elv_t2_route_registry.dart';
import 'package:emr_one_fire_register/routing/fire_register_route_registry.dart';
import 'package:emr_one_inform/routing/inform_route_registry.dart';
import 'package:emr_one_prefs/routing/prefs_route_registry.dart';
import 'package:emr_one_securitymgmt/routing/securitymgmt_route_registry.dart';
import 'package:emr_one_stock_take/routing/stock_take_route_registry.dart';
import 'package:emr_one_yard_app/routing/yard_app_route_registry.dart';
import 'package:emr_one_yard_logistics/routing/yard_logistics_route_registry.dart';

class ModuleStartup {
  static Future<void> configure(
    RouteRegistry registry, {
    List<dynamic>? routingJson,
  }) async {
    registry.initRegistrationFunctions([
      AccountRouteRegistry.register,
      CashiersearchRouteRegistry.register,
      CrmRouteRegistry.register,
      EAMRouteRegistry.register,
      ElvDismantlingRouteRegistry.register,
      ElvInspectionRouteRegistry.register,
      ElvQuotesRouteRegistry.register,
      ElvT2RouteRegistry.register,
      FireRegisterRouteRegistry.register,
      InformRouteRegistry.register,
      PrefsRouteRegistry.register,
      SecurityMgmtRouteRegistry.register,
      StockTakeRouteRegistry.register,
      YardAppRouteRegistry.register,
      YardLogisticsRouteRegistry.register,
    ]);

    registry.build();
  }
}
