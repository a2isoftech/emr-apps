import 'package:emr_one_core/emr_one_core.dart';

class RouteBuilder {
  static Future<void> configure(
    RouteRegistry registry,
    EORouteConverter converter,
    List<dynamic> routingJson,
  ) async {
    registry.removePath('/');
    registry.removePath('/dashboard');

    CoreRoutes.homePagePath = '/';

    final withPermissions = _applyDataHierarchy(routingJson);

    final routes = withPermissions.map(converter.fromJson).toList();

    registry.addRoutes(routes);
  }

  static List<Map<String, dynamic>> _applyDataHierarchy(
    List<dynamic> items, {
    List<String> inheritedPermissions = const [],
    String inheritedPlatform = 'any',
  }) {
    return items.map<Map<String, dynamic>>((item) {
      final map = item as Map<String, dynamic>;

      // Apply platform restrictions.
      map['platform'] = inheritedPlatform == 'any'
          ? (map['platform'] as String? ?? 'any').toLowerCase()
          : inheritedPlatform;

      // Apply permissions.
      map['permissions'] = [
        ...inheritedPermissions,
        if (map.containsKey('permission')) map['permission'] as String,
      ];

      // Recurse into children if there are any.
      if (map.containsKey('children')) {
        final children = map['children'] as List<dynamic>;

        map['children'] = _applyDataHierarchy(
          children,
          inheritedPermissions: map['permissions'] as List<String>,
          inheritedPlatform: map['platform'] as String,
        );
      }

      return map;
    }).toList();
  }
}
