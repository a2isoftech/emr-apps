import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserPreferencesScreen extends StatefulWidget {
  const UserPreferencesScreen({super.key});

  @override
  State<UserPreferencesScreen> createState() => _UserPreferencesScreenState();
}

class _UserPreferencesScreenState extends State<UserPreferencesScreen> {
  @override
  Widget build(BuildContext context) {
    final menuItems = <SimpleMenuItem>[
      SimpleMenuItem(
        context.l10n.schedulerPreferences,
        FontAwesomeIcons.groupArrowsRotate.data,
        () => context.goNamed(RoutingPathName.schedulerPreferences),
      ),
      SimpleMenuItem(
        context.l10n.dispatchYard,
        Icons.factory,
        () => context.goNamed(RoutingPathName.dispatchYardSettings),
      ),
      SimpleMenuItem(
        context.l10n.managedThirdPartyHauliers,
        FontAwesomeIcons.truck.data,
        () => context.goNamed(RoutingPathName.managedThirdPartySettings),
      ),
      SimpleMenuItem(
        context.l10n.thirdPartyHauliers,
        FontAwesomeIcons.truckFront.data,
        () => context.goNamed(RoutingPathName.thirdPartySettings),
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: Insets.gutter,
            runSpacing: Insets.gutter,
            children: menuItems.map(_menuItem).toList(),
          ),
        ],
      ),
    );
  }

  Widget _menuItem(SimpleMenuItem item) {
    return EOHoverTile(
      onTap: item.function,
      child: EOHoverTileSimpleContent(
        icon: item.icon,
        label: item.name.toUpperCase(),
      ),
    );
  }
}
