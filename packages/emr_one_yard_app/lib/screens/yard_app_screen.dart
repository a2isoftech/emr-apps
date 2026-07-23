import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/routing/eo_route.dart';
import 'package:emr_one_yard_app/routing/yard_app_route_registry.dart';
import 'package:flutter/material.dart';

class YardAppScreen extends StatelessWidget {
  const YardAppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final routes =
        YardAppRouteRegistry.yardAppMenuItems.first.routes as List<EORoute>;
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
