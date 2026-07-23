import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GenericRouteScreen extends StatelessWidget with AppBarExtender {
  const GenericRouteScreen(
    this.routeFilter, {
    super.key,
    this.getActionsBuilder = _defaultActionsBuilder,
  });

  /// Creates a [GenericRouteScreen] that filters routes based on a path prefix.
  /// The [pathPrefix] is split by '/' and each segment is used to filter the
  /// routes in the registry. The last segment is used to find the final route.
  /// If no routes match, an empty list is returned.
  factory GenericRouteScreen.fromPathPrefix(
    String pathPrefix, {
    List<Widget> Function(BuildContext context) getActionsBuilder =
        _defaultActionsBuilder,
  }) {
    return GenericRouteScreen(
      (routes) {
        final paths = pathPrefix.split('/').where((x) => x.isNotEmpty).toList();

        var pathRoutes = routes;

        for (final path in paths) {
          if (path == paths.last) {
            return pathRoutes
                // Root routes need to start with a '/',
                // whereas child ones don't seem to, so we look for either.
                .where(
                  (element) => element.path == '/$path' || element.path == path,
                )
                .toList();
          }

          pathRoutes = pathRoutes
                  .singleWhereOrNull((element) => element.path == '/$path')
                  ?.routes as List<EORoute>? ??
              [];
        }

        return [];
      },
      getActionsBuilder: getActionsBuilder,
    );
  }

  final List<EORoute> Function(List<EORoute>) routeFilter;

  final List<Widget> Function(BuildContext context) getActionsBuilder;

  @override
  Widget build(BuildContext context) {
    final routeRegistry = Provider.of<RouteRegistry>(context);
    final toplevel = routeFilter(routeRegistry.getRoutes());

    if (toplevel.isEmpty) {
      return const SizedBox();
    }

    final routes = (toplevel.first.routes as List<EORoute>).where(
      (element) =>
          element.isAllowed(context, element) && element.isManuallyNavigable,
    );

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Wrap(
              spacing: Insets.gutter,
              runSpacing: Insets.gutter,
              children: routes
                  .map((e) => e.tileItemBuilder!(context, e, selected: false))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  @override
  List<Widget> getActions(BuildContext context) => getActionsBuilder(context);

  static List<Widget> _defaultActionsBuilder(BuildContext context) => [];
}
