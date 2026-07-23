import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context);
    final routeRegistry = Provider.of<RouteRegistry>(context);

    final routes = routeRegistry
        .getRoutes()
        .where((element) => !appConfig.disabledRoutes.contains(element.path))
        .where((element) => element.isManuallyNavigable)
        .where((element) => element.path != '/')
        .where((element) => element.isAllowed(context, element))
        .toList();

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
