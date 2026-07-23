import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_localisations/emr_one_localisations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

class EORouteConverter implements JsonConverter<EORoute, Map<String, dynamic>> {
  EORouteConverter({required this.widgetBuilders});

  final Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders;

  static const _iconDataConverter = IconDataConverter();

  final List<String> _namedRoutes = [];

  @override
  EORoute fromJson(Map<String, dynamic> json) {
    var name = json['name'] as String? ?? const Uuid().v4();
    var isManuallyNavigable = json['isManuallyNavigable'] as bool? ?? true;

    // Make sure there isn't already a route with this name - otherwise that
    // silently breaks GoRouter for any routes that follow.
    // If the name is a duplicate, replace the name with a GUID and hide it.
    if (_namedRoutes.contains(name)) {
      EmrLogger.critical(
        'ROUTING: Duplicate route name found ($name). '
        'All routes must have unique names.',
      );

      name = const Uuid().v4();
      isManuallyNavigable = false;
    }

    final route = EORoute(
      _iconDataConverter.fromJson(
        json['iconData'] as String? ?? '0xe1c7,MaterialIcons',
      ),
      (context) =>
          context.l10n.byKey(json['displayNameKey'] as String? ?? '---'),
      path: json['path'] as String,
      name: name,
      widgetBuilder: (context, state) => (_isAllowed(context, json)
          ? _getWidgetBuilder(
              json['widgetBuilderKey'] as String? ?? json['name'] as String,
            )
          : _getWidgetBuilder('access-denied'))(context, state),
      isAllowed: (context, route) => _isAllowed(context, json),
      isManuallyNavigable: isManuallyNavigable,
      children: (json['children'] as List<dynamic>?)
              ?.map((child) => fromJson(child as Map<String, dynamic>))
              .toList() ??
          [],
    );

    _namedRoutes.add(route.name!);

    return route;
  }

  bool _isAllowed(
    BuildContext context,
    Map<String, dynamic> json,
  ) {
    final permissions = json['permissions'] as List<String>;
    final platform = (json['platform'] as String? ?? 'any').toLowerCase();

    // Check the route is allowed based on the platform.
    if (platform == 'web' && !kIsWeb) {
      return false;
    } else if (platform == 'native' && kIsWeb) {
      return false;
    }

    // If no permissions are specified, allow access.
    if (permissions.isEmpty) {
      return true;
    }

    // Check if the user has all of the required permissions.
    return permissions
        .every((permission) => context.userHasPermission(permission));
  }

  @override
  Map<String, dynamic> toJson(EORoute value) =>
      throw UnimplementedError('EORouteConverter toJson not implemented.');

  Widget Function(BuildContext, EoRouterState) _getWidgetBuilder(String key) =>
      widgetBuilders[key] ?? (_, __) => const Placeholder();
}
