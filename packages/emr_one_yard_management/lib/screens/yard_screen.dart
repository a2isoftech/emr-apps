import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/routing/yard_management_route_registry.dart';
import 'package:flutter/material.dart';

class YardScreen extends StatelessWidget {
  const YardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routes = YardManagementRouteRegistry
        .yardManagementMenuItems.first.routes as List<EORoute>;
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
}
