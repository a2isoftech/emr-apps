import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/mixins/action_bar_extender.dart';
import 'package:flutter/material.dart';
import 'package:psnop/components/planned_movements/planned_movements_view.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/screens/screen_utils.dart';

class PlannedMovementsScreen extends StatelessWidget with AppBarExtender {
  PlannedMovementsScreen({
    required this.apiHelper,
    super.key,
  });

  final PsnopApiHelper apiHelper;

  @override
  Widget build(BuildContext context) {
    return PlannedMovementsView(
      apiHelper: apiHelper,
    );
  }

  @override
  List<Widget> getActions(BuildContext context) {
    return ScreenUtils.psnopMenuActions(
      context: context,
      plannedMovementMenuEntries: [
        ScreenUtils.psnopMenuEntry(
          context: context,
          text: Text(
            context.l10n.psnopPlannedMovements,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
