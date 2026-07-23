import 'package:emr_one_core/routing/routing.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('CoreRoutes registry has default route', () async {
    final routeRegistry = RouteRegistry();

    CoreRoutes.homePagePath = '/dashboard';

    CoreRoutes.register(routeRegistry);

    final rootRoute =
        routeRegistry.getRoutes().where((route) => route.path == '/');

    expect(rootRoute.length, 1);
  });
}
