import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AssetsScreen extends StatefulWidget {
  const AssetsScreen({super.key});

  @override
  State<AssetsScreen> createState() => _AssetsScreenState();
}

class _AssetsScreenState extends State<AssetsScreen> {
  @override
  Widget build(BuildContext context) {
    final menuItems = _getAssetsMenuItems;
    return _buildMenu(menuItems);
  }

  Widget _buildMenu(List<SimpleMenuItem> menuItems) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: menuItems.map(_buildMenuTile).toList(),
      ),
    );
  }

  List<SimpleMenuItem> get _getAssetsMenuItems {
    return <SimpleMenuItem>[
      if (context.userHasPermission(UserPermissions.internalTrucksView))
        _buildMenuItem(
          context.l10n.internalTrucks,
          FontAwesomeIcons.truckMoving.data,
          RoutingPathName.internalTrucks,
        ),
      if (context.userHasPermission(UserPermissions.managedTrucksView))
        _buildMenuItem(
          context.l10n.managedTrucks,
          FontAwesomeIcons.truckFront.data,
          RoutingPathName.managedTrucks,
        ),
      if (context.userHasPermission(UserPermissions.containersView))
        _buildMenuItem(
          context.l10n.containers,
          FontAwesomeIcons.box.data,
          RoutingPathName.containers,
        ),
      if (context.userHasPermission(UserPermissions.assetLocatorView))
        _buildMenuItem(
          context.l10n.assetLocator,
          Icons.map,
          RoutingPathName.assetLocator,
        ),
      if (context.userHasPermission(UserPermissions.trailersView))
        _buildMenuItem(
          context.l10n.trailers,
          FontAwesomeIcons.trailer.data,
          RoutingPathName.trailers,
        ),
    ];
  }

  SimpleMenuItem _buildMenuItem(String name, IconData icon, String path) {
    return SimpleMenuItem(name, icon, () => context.goNamed(path));
  }

  Widget _buildMenuTile(SimpleMenuItem item) {
    return Padding(
      padding: const EdgeInsets.only(right: Insets.gutter),
      child: EOHoverTile(
        onTap: item.function,
        child: EOHoverTileSimpleContent(
          icon: item.icon,
          label: item.name.toUpperCase(),
        ),
      ),
    );
  }
}
