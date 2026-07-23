import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';

class ModuleStartup {
  static Future<void> configure(
    RouteRegistry registry, {
    List<dynamic>? routingJson,
  }) async {
    registry.initRegistrationFunctions([DoorAccessRouteRegistry.register]);

    registry.build();
  }
}
