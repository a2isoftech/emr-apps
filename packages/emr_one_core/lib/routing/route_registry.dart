import 'dart:core';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

/// Configuration mode for [RouteRegisty].
enum RouteRegistryMode {
  /// The routes available should be applicable for customers.
  customer,

  /// The routes available should be applicable for staff.
  staff,
}

class RouteRegistry {
  RouteRegistry({
    this.mode = RouteRegistryMode.staff,
  });

  final RouteRegistryMode mode;

  final List<EORoute> _routes = [];

  final List<void Function(RouteRegistry)> _registrations = [];

  late final ValueNotifier<RoutingConfig> routingConfig =
      ValueNotifier<RoutingConfig>(_createRoutingConfig());

  void initRegistrationFunctions(List<void Function(RouteRegistry)> funcs) {
    _registrations.addAll(funcs);
  }

  void build() {
    for (final registerFunction in _registrations) {
      registerFunction(this);
    }
  }

  void addRoute(EORoute route) {
    _routes.add(route);

    routingConfig.value = _createRoutingConfig();
  }

  void addRoutes(List<EORoute> routes) {
    _routes.addAll(routes);

    routingConfig.value = _createRoutingConfig();
  }

  void removePath(String path) {
    _routes.removeWhere((x) => x.path == path);

    routingConfig.value = _createRoutingConfig();
  }

  void clearRoutes() {
    _routes.clear();

    routingConfig.value = _createRoutingConfig();
  }

  List<EORoute> getRoutes() => _routes;

  bool isRouteAnonymous(String path) =>
      _routes.where((route) => route.allowAnonymous).any(
            (route) => route.path.toLowerCase() == path.toLowerCase(),
          );

  RoutingConfig _createRoutingConfig() {
    debugPrint('Creating routing config with ${_routes.length} route(s)');

    return RoutingConfig(
      routes: _routes,
      redirect: (context, state) async {
        // see: https://github.com/csells/go_router/blob/main/go_router/example/lib/query_params.dart
        final loginController = context.read<BaseLoginController>();
        final loggedIn = loginController.state == LoginState.loggedIn;
        final loggingIn = state.matchedLocation == '/login';
        final anonymousRoute = isRouteAnonymous(state.matchedLocation);

        // bundle the location the user is coming from into a query parameter
        final fromp = state.matchedLocation == '/'
            ? ''
            : '?from=${Uri.encodeComponent(state.uri.toString())}';

        if (!loggedIn && !anonymousRoute) {
          return loggingIn ? null : '/login$fromp';
        }

        // if the user is logged in, send them where they were going before (or
        // home if they weren't going anywhere)
        if (loggingIn) {
          return state.uri.queryParameters['from'] ?? '/';
        }

        // no need to redirect at all
        return null;
      },
    );
  }
}
