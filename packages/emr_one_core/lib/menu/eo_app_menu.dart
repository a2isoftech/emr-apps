import 'package:collection/collection.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/menu/eo_menu_item.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

enum EoAppMenuMode {
  /// Only the icons are shown.
  icon,

  /// Icons and labels are shown.
  iconAndLabel,

  /// Icon above label.
  iconAndLabelVertical,
}

class EoAppMenu extends StatefulWidget {
  const EoAppMenu({
    super.key,
    this.mode = EoAppMenuMode.iconAndLabel,
  });

  final EoAppMenuMode mode;
  static double scrollPos = -1;

  @override
  State<EoAppMenu> createState() => _EoAppMenuState();
}

class _EoAppMenuState extends State<EoAppMenu> {
  late ScrollController _controller;
  final List<GlobalKey> _keys = [];
  final List<String> _routes = [];
  final GlobalKey _scrollContainerKey = GlobalKey();
  bool runOnce = false;

  @override
  void initState() {
    super.initState();

    /// This widget has been made Stateful in order to attempt to resolve the
    /// previous scroll position whenever the whole scaffold is torn down and
    /// rebuilt.
    ///
    /// This logic now passes a scroll controller to the scrolling widget part
    /// of the menu so we can control the scroll position.
    ///
    /// During initState we initialise this controller with the last known
    /// scroll position, or zero. The last known position is simply stored as
    /// a static variable on the class. It is set later on when the user
    /// clicks on a menu item.
    _controller = ScrollController(
      initialScrollOffset: EoAppMenu.scrollPos == -1 ? 0 : EoAppMenu.scrollPos,
    );

    /// In addition to the above the below code attempts to scroll to the
    /// appropriate scroll position following a deep-link style build.
    /// This is where the menu is built for the first time but the user
    /// navigated to a specific route. It attempts to find the postion of the
    /// item for the route and scroll to it.
    ///
    /// Right now this method is flawed, although it does work there is some
    /// flickering as the menu appears to render in different scroll positions.
    if (EoAppMenu.scrollPos == -1) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final currentLocation = GoRouterState.of(context).name;
        final selectedRoute = _routes.lastWhere(
          (e) => e == currentLocation,
          orElse: () => '',
        );

        if (selectedRoute.isNotEmpty) {
          final selectedKey = _keys[_routes.indexOf(selectedRoute)];

          final renderObject = selectedKey.currentContext!.findRenderObject();
          final containerObject =
              _scrollContainerKey.currentContext!.findRenderObject();

          if (renderObject != null &&
              containerObject != null &&
              renderObject is RenderBox &&
              containerObject is RenderBox &&
              renderObject.hasSize &&
              containerObject.hasSize) {
            final offset = renderObject.localToGlobal(Offset.zero);

            if (offset.dy > containerObject.paintBounds.bottom ||
                offset.dy < containerObject.paintBounds.top) {
              Scrollable.ensureVisible(
                selectedKey.currentContext!,
              );
            }
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Some menu items check permissions, so we need to know UserInfo is
    // available before we try to show the menu.
    final userService = Provider.of<UserService>(context);
    if (!userService.hasUser) {
      return const SizedBox();
    }

    final menuTheme = Theme.of(context).extension<EOMenuTheme>()!;

    final appConfig = Provider.of<AppConfig>(context);
    final routeRegistry = Provider.of<RouteRegistry>(context);

    final routes = routeRegistry
        .getRoutes()
        .where(
          (element) =>
              !appConfig.disabledRoutes.contains(element.path) &&
              element.isAllowed(context, element),
        )
        .where(
          (element) =>
              element.isManuallyNavigable || element.path == '/settings',
        )
        .toList();

    // Make sure the home item is at the top.
    final homeRoute = routes.firstWhere((element) => element.path == '/');
    routes
      ..remove(homeRoute)
      ..insert(0, homeRoute);

    final routerState = GoRouterState.of(context);

    final selectedRoute =
        routes.where((route) => route != homeRoute).firstWhereOrNull(
                  (e) => routerState.fullPath?.startsWith(e.path) ?? false,
                ) ??
            homeRoute;

    final settingsRoute = routes.firstWhereOrNull((e) => e.path == '/settings');

    return DecoratedBox(
      decoration: BoxDecoration(
        color: menuTheme.backgroundColour,
        // Only web needs a border because on native we have a shadow.
        border: appConfig.isWeb
            ? Border(
                right: BorderSide(
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(26),
                ),
              )
            : null,
      ),
      child: SizedBox(
        width: widget.mode == EoAppMenuMode.iconAndLabel
            ? menuTheme.wideWidth
            : menuTheme.narrowWidth,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                key: _scrollContainerKey,
                controller: _controller,
                child: Padding(
                  padding: EdgeInsets.all(menuTheme.padding),
                  child: Column(
                    children: [
                      for (final route in routes) ...[
                        if (route != settingsRoute)
                          _menuRow(
                            context,
                            route,
                            selectedRoute == route,
                            menuTheme,
                            appConfig: appConfig,
                          ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
            // Only show the settings button if we have a /settings route.
            if (settingsRoute != null)
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color:
                          Theme.of(context).colorScheme.onSurface.withAlpha(26),
                    ),
                  ),
                ),
                child: SafeArea(
                  top: false,
                  child: Padding(
                    padding: EdgeInsets.all(menuTheme.padding),
                    child: EoMenuItem(
                      selected: selectedRoute == settingsRoute,
                      icon: settingsRoute.icon,
                      label: settingsRoute.displayName(context),
                      mode: widget.mode,
                      onTap: () => _go(context, settingsRoute),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _go(BuildContext context, EORoute route) {
    // Save the scroll position so we can restore it when the menu is rebuit
    EoAppMenu.scrollPos = _controller.position.pixels;
    GoRouter.of(context).goNamed(route.name!);

    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  Widget _menuRow(
    BuildContext context,
    EORoute route,
    bool selected,
    EOMenuTheme menuTheme, {
    bool isSubMenu = false,
    AppConfig? appConfig,
  }) {
    final key = GlobalKey();
    _keys.add(key);
    _routes.add(route.name!);
    final label = route.displayName(context).replaceAll('\n', ' ');

    return Padding(
      key: key,
      padding: EdgeInsets.only(
        left: isSubMenu ? menuTheme.padding : 0,
        bottom: menuTheme.padding,
      ),
      child: EoMenuItem(
        selected: selected,
        icon: route.icon,
        label: label,
        mode: widget.mode,
        onTap: () => _go(context, route),
        isSubMenu: isSubMenu,
        colour: (appConfig?.app.isPortal ?? false)
            ? null
            : Theme.of(context).colorScheme.primary,
        subMenuAccentColour: isSubMenu
            ? Theme.of(context).colorScheme.primary.lighten(25)
            : Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
