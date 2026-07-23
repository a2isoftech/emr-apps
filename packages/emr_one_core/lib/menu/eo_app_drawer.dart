import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/menu/eo_app_menu.dart';
import 'package:emr_one_core/menu/eo_app_menu_userdisplay.dart';
import 'package:emr_one_core/widgets/user/user_details_inline.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EOAppDrawer extends StatelessWidget {
  const EOAppDrawer({
    super.key,
    this.elevation,
    this.displayAppPlate = true,
    this.hideHome = false,
  });

  final double? elevation;
  final bool displayAppPlate;
  final bool hideHome;

  @override
  Widget build(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context);
    final routeRegistry = Provider.of<RouteRegistry>(context);

    final routes = routeRegistry
        .getRoutes()
        .where((element) => !appConfig.disabledRoutes.contains(element.path))
        .where((element) => element.isManuallyNavigable)
        .toList();

    return _build(context, routes);
  }

  Widget _build(BuildContext context, List<EORoute> routes) {
    return Drawer(
      elevation: elevation,
      child: Column(
        children: [
          if (displayAppPlate) _userInfo(context),
          const Expanded(
            child: EoAppMenu(),
          ),
        ],
      ),
    );
  }

  Widget _userInfo(BuildContext context) {
    final theme = Theme.of(context);

    return ColoredBox(
      color: theme.colorScheme.secondary,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () => showModalBottomSheet<void>(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) => _buildSheet(),
              ),
              child: EODrawUserDisplay(
                textColour: theme.colorScheme.onSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSheet() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.all(Insets.gutter),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              UserDetailsInline(),
            ],
          ),
        );
      },
    );
  }
}
