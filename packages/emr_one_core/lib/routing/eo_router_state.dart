import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

class EoRouterState {
  const EoRouterState({
    required this.location,
    required this.matchedLocation,
    required this.name,
    required this.pageKey,
    this.path,
    this.fullpath,
    this.params = const <String, String>{},
    this.queryParams = const <String, String>{},
    this.queryParametersAll = const <String, List<String>>{},
    this.extra,
    this.error,
  });

  factory EoRouterState.fromGoRouterState(GoRouterState state) {
    return EoRouterState(
      location: state.uri.toString(),
      matchedLocation: state.matchedLocation,
      name: state.name,
      pageKey: state.pageKey,
      path: state.path,
      fullpath: state.fullPath,
      params: state.pathParameters,
      queryParams: state.uri.queryParameters,
      queryParametersAll: state.uri.queryParametersAll,
      extra: state.extra,
      error: state.error,
    );
  }

  /// The full location of the route, e.g. /family/f2/person/p1
  final String location;

  /// The location of this sub-route, e.g. /family/f2
  final String matchedLocation;

  /// The optional name of the route.
  final String? name;

  /// The path to this sub-route, e.g. family/:fid
  final String? path;

  /// The full path to this sub-route, e.g. /family/:fid
  final String? fullpath;

  /// The parameters for this sub-route, e.g. {'fid': 'f2'}
  final Map<String, String> params;

  /// The query parameters for the location, e.g. {'from': '/family/f2'}
  final Map<String, String> queryParams;

  /// The query parameters for the location,
  /// e.g. `{'q1': ['v1'], 'q2': ['v2', 'v3']}`
  final Map<String, List<String>> queryParametersAll;

  /// An extra object to pass along with the navigation.
  final Object? extra;

  /// The error associated with this sub-route.
  final Exception? error;

  /// A unique string key for this sub-route.
  /// E.g.
  /// ```dart
  /// ValueKey('/family/:fid')
  /// ```
  final ValueKey<String> pageKey;
}
