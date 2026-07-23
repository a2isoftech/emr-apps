import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/shared_scaffold_extensions.dart';
import 'package:emr_one_core/routing/routing.dart';
import 'package:emr_one_core/routing/shared_scaffold.dart';
import 'package:emr_one_core/utilities/adaptive_breakpoints.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

typedef WrappedGoRouterWidgetBuilder = Widget Function(
  BuildContext context,
  EoRouterState state,
);

typedef EOPageBuilder = Page<void> Function(
  BuildContext context,
  GoRouterState state,
  WrappedGoRouterWidgetBuilder builder,
  List<SingleChildWidget> providers,
);

typedef EoRouteMenuWidgetBuilder = Widget Function(
  BuildContext context,
  EORoute route,
);

typedef EoRouteTileWidgetBuilder = Widget Function(
  BuildContext context,
  EORoute route, {
  required bool selected,
});

typedef EoRouteNavDestinationItemBuilder = NavigationRailDestination Function(
  BuildContext context,
  EORoute route,
);

typedef EORouteIsAllowed = bool Function(
  BuildContext context,
  EORoute route,
);

class EORoute extends GoRoute {
  EORoute(
    this.icon,
    this.displayName, {
    required super.path,
    required String super.name,
    required this.widgetBuilder,
    this.selectedIcon,
    this.menuItemBuilder = _defaultMenuItemBuilder,
    this.tileItemBuilder = _defaultTileItemBuilder,
    this.navRailItemBuilder = _defaultNavRailItemBuilder,
    this.section = '',
    this.eoPageBuilder = _defaultPageBuilder,
    List<EORoute> children = const [],
    this.isManuallyNavigable = true,
    List<SingleChildWidget> providers = const [],
    this.isAllowed = _defaultIsAllowed,
    this.allowAnonymous = false,
    super.redirect,
    super.caseSensitive = false,
  }) : super(
          routes: children,
          pageBuilder: (c, s) => eoPageBuilder(c, s, widgetBuilder, providers),
        );

  /// A factory for creating routes which will redirect to another.
  factory EORoute.redirectRoute(String fromPath, String toPath) => EORoute(
        FontAwesomeIcons.arrowRight.data,
        (_) => fromPath,
        path: fromPath,
        name: fromPath,
        widgetBuilder: (context, _) {
          context.go(toPath);

          return const SizedBox();
        },
        isManuallyNavigable: false,
      );

  final IconData icon;
  final IconData? selectedIcon;
  final String section;
  final String Function(BuildContext) displayName;
  final EoRouteMenuWidgetBuilder? menuItemBuilder;
  final EoRouteNavDestinationItemBuilder? navRailItemBuilder;
  final EoRouteTileWidgetBuilder? tileItemBuilder;
  final WrappedGoRouterWidgetBuilder widgetBuilder;
  final bool isManuallyNavigable;
  final EOPageBuilder eoPageBuilder;
  final EORouteIsAllowed isAllowed;
  final bool allowAnonymous;

  /// The [_defaultPageBuilder] provides our basic adaptive shell by
  /// detecting the login status and showing either a vanilla [Scaffold]
  /// in the case of logged out, or our [SharedScaffold] if the user is logged
  /// in. The [SharedScaffold] is responsible for the AppBar and Menu.
  /// Each [EORoute] can replace this implementation but if replaced the
  /// implementation will have to manually insert the [SharedScaffold] (if
  /// desired) into the Widget Tree.
  static Page<void> _defaultPageBuilder(
    BuildContext context,
    GoRouterState state,
    WrappedGoRouterWidgetBuilder wb,
    List<SingleChildWidget> providers,
  ) {
    // We can't listen for changes on AppConfig here as it could cause app
    // modules to to rebuild and might lead to data loss.
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    return NoTransitionPage<void>(
      key: state.pageKey,
      name: state.name,
      arguments: state.pathParameters,
      child: SharedScaffold(
        body: wb(
          context,
          EoRouterState.fromGoRouterState(state),
        ),
        bannerMessage: appConfig.bannerMessage,
      ).withMultiProvider(providers),
    );
  }

  /// The [_defaultMenuItemBuilder] is responsible for building each
  /// Drawer menu item per-route. Each item will navigate to its route when
  /// tapped.
  static ListTile _defaultMenuItemBuilder(BuildContext context, EORoute r) {
    final location = GoRouterState.of(context).uri.toString();

    return ListTile(
      leading: Icon(r.icon),
      trailing: const Icon(Icons.chevron_right),
      title: Text(
        r.displayName(context).toUpperCase(),
        style: EmrOneConstants.kSmallestHeadingTextStyle,
      ),
      selected: location.endsWith(r.path),
      onTap: () async {
        context.goNamed(r.name!);
        if (getWindowType(context) < EmrOneConstants.appDefaultSizeBreakpoint) {
          Navigator.pop(context);
        }
      },
    );
  }

  /// The [_defaultNavRailItemBuilder] is responsible for building each
  /// NavigationRail item per-route.
  static NavigationRailDestination _defaultNavRailItemBuilder(
    BuildContext context,
    EORoute r,
  ) {
    return NavigationRailDestination(
      icon: Tooltip(
        message: r.displayName(context).toUpperCase(),
        child: Icon(
          r.icon,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      label: Text(
        r.displayName(context).toUpperCase(),
        softWrap: true,
        textAlign: TextAlign.center,
      ),
      selectedIcon: r.selectedIcon != null
          ? Tooltip(
              message: r.displayName(context).toUpperCase(),
              child: Icon(
                r.selectedIcon,
              ),
            )
          : null,
    );
  }

  /// The [_defaultTileItemBuilder] is responsible for building each
  /// Home Screen tile element for each route of the app.
  /// Each tile will navigate to its route when tapped.
  static Widget _defaultTileItemBuilder(
    BuildContext context,
    EORoute route, {
    required bool selected,
  }) =>
      EOHoverTile(
        onTap: () async {
          if (route.path.toLowerCase().startsWith('http')) {
            await launchUrl(Uri.parse(route.path));
            return;
          }

          context.goNamed(route.name!);
        },
        child: EOHoverTileSimpleContent(
          icon: route.icon,
          label: route.displayName(context),
        ),
      );

  /// The [_defaultIsAllowed] function simply returns true, this can
  /// be overridden in routes to control whether the route is visible based
  /// on permissions for example.
  static bool _defaultIsAllowed(_, __) => true;
}
