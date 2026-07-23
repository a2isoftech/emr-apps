import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_yard_management/components/route_to_market_view/route_to_market_filter_controller.dart';
import 'package:emr_one_yard_management/components/route_to_market_view/route_to_market_grid.dart';
import 'package:emr_one_yard_management/components/route_to_market_view/route_to_market_grid_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class RouteToMarketView extends StatelessWidget {
  const RouteToMarketView({super.key});

  @override
  Widget build(BuildContext context) {
    final client = Provider.of<BaseClient>(context);
    final config = Provider.of<AppConfig>(context);
    final filterController =
        RouteToMarketFilterController(httpClient: client, config: config);
    final controller = RouteToMarketGridController(
        context: context,
        client: client,
        appConfig: config,
        filterController: filterController,);
    return SingleChildScrollView(
      child: Column(
        children: [
          RouteToMarketGrid(
            filterController: filterController,
            controller: controller,
          ),
        ],
      ),
    );
  }
}
