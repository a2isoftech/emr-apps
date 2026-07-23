import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_yard_management/components/yard_view/yard_view_filter_controller.dart';
import 'package:emr_one_yard_management/components/yard_view/yard_view_grid.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class YardView extends StatelessWidget {
  const YardView({super.key});

  @override
  Widget build(BuildContext context) {
    final client = Provider.of<BaseClient>(context);
    final config = Provider.of<AppConfig>(context);
    final filterController =
        YardViewFilterController(httpClient: client, config: config);
    return Column(
      children: [YardViewGrid(filterController: filterController)],
    );
  }
}
