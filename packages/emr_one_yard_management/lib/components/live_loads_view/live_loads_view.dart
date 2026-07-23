import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_yard_management/components/live_loads_view/live_loads_filter_controller.dart';
import 'package:emr_one_yard_management/components/live_loads_view/live_loads_grid.dart';
import 'package:emr_one_yard_management/components/live_loads_view/live_loads_grid_controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class LiveLoadsView extends StatelessWidget {
  const LiveLoadsView({super.key});

  @override
  Widget build(BuildContext context) {
    final client = Provider.of<BaseClient>(context);
    final config = Provider.of<AppConfig>(context);
    final filterController =
        LiveLoadsFilterController(httpClient: client, config: config);
    final controller = LiveLoadsGridController(
      context: context,
      client: client,
      appConfig: config,
      filterController: filterController,
    );

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: LiveLoadsGrid(
              controller: controller,
              filterController: filterController,
            ),
          ),
        ),
      ],
    );
  }
}
