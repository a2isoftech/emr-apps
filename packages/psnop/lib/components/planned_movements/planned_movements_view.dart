import 'package:emr_one_core/config/app_config.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/planned_movements/filter/planned_movements_filter_controller.dart';
import 'package:psnop/components/planned_movements/planned_movements_action_buttons.dart';
import 'package:psnop/components/planned_movements/planned_movements_grid.dart';
import 'package:psnop/components/planned_movements/planned_movements_grid_controller.dart';
import 'package:psnop/networking/psnop_api_helper.dart';

class PlannedMovementsView extends StatelessWidget {
  const PlannedMovementsView({
    required this.apiHelper,
    super.key,
  });

  final PsnopApiHelper apiHelper;

  @override
  Widget build(BuildContext context) {
    final client = Provider.of<BaseClient>(context);
    final config = Provider.of<AppConfig>(context, listen: false);
    final filterController = PlannedMovementsFilterController(apiHelper);
    final controller = PlannedMovementsGridController(
      client: client,
      appConfig: config,
      filterController: filterController,
    );
    return Column(
      children: [
        PlannedMovementsActionButtons(
          controller: controller,
          apiHelper: apiHelper,
        ),
        PlannedMovementsGrid(
          config: config,
          controller: controller,
          filterController: filterController,
        ),
      ],
    );
  }
}
