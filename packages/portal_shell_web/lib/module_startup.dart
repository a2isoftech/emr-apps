import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/routing/portal_route_registry.dart';
import 'package:emr_one_portal/signup/signup_route_registry.dart';

class ModuleStartup {
  static Future<void> configure(
    RouteRegistry registry, {
    List<dynamic>? routingJson,
  }) async {
    registry.initRegistrationFunctions([
      PortalRouteRegistry.register,
      SignupRoutes.register,
    ]);

    registry.build();
  }
}
