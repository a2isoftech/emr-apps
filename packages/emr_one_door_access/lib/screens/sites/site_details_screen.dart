import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:flutter/material.dart';

class SiteDetailsScreen extends StatelessWidget {
  const SiteDetailsScreen({required this.siteId, super.key});

  final String siteId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const spacing = Insets.gutter;

    return LayoutBuilder(
      builder: (context, constraints) {
        Widget buildTile({
          required IconData icon,
          required String label,
          required VoidCallback onTap,
        }) {
          return EOHoverTile(
            onTap: () async => onTap(),
            child: EOHoverTileSimpleContent(icon: icon, label: label),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Insets.gutter),
            Text(siteId, style: theme.textTheme.headlineMedium),
            const Divider(),
            const SizedBox(height: Insets.gutter),
            Wrap(
              spacing: spacing,
              runSpacing: spacing,
              children: [
                buildTile(
                  icon: Icons.access_alarm,
                  label: 'Access Points',
                  onTap: () {
                    context.goNamed(
                      DoorAccessRouteRegistry.routeAccessPoints,
                      params: {'siteId': siteId},
                    );
                  },
                ),
                buildTile(
                  icon: Icons.access_alarm,
                  label: 'Door Controllers',
                  onTap: () {
                    context.goNamed(
                      DoorAccessRouteRegistry.routeDoorControllers,
                      params: {'siteId': siteId},
                    );
                  },
                ),
                buildTile(
                  icon: Icons.map,
                  label: 'Floor Plans',
                  onTap: () {
                    context.goNamed(
                      DoorAccessRouteRegistry.routeFloorPlans,
                      params: {'siteId': siteId},
                    );
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
