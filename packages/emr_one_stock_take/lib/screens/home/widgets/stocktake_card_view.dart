import 'package:emr_core_api/graphql/fragments/stocktake/stocktake_search_fields.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/extensions/stocktake_search_extensions.dart';
import 'package:emr_one_stock_take/screens/home/controller/stock_take_home_controller.dart';
import 'package:emr_one_stock_take/screens/home/widgets/label_value_display.dart';
import 'package:emr_one_stock_take/services/stock_take_shared_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StocktakeCardView extends StatelessWidget {
  const StocktakeCardView({
    required this.stockTake,
    required this.theme,
    required this.controller,
    this.onDelete,
    super.key,
  });
  final Fragment$StocktakeSearchFields stockTake;
  final StockTakeHomeController controller;
  final ThemeData theme;
  final void Function(Fragment$StocktakeSearchFields)? onDelete;

  @override
  Widget build(BuildContext context) {
    final sharedService = Provider.of<StockTakeSharedService>(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LabelValueDisplayWidget(
          label: context.l10n.productFamily,
          value: stockTake.productFamily,
        ),
        LabelValueDisplayWidget(
          label: context.l10n.originator,
          value: stockTake.created.user?.name ?? '-',
        ),
        LabelValueDisplayWidget(
          label: context.l10n.conductedBy,
          value: stockTake.conductor != null
              ? '${stockTake.conductor!.firstName} '
                  '${stockTake.conductor!.lastName}'
              : '-',
        ),
        LabelValueDisplayWidget(
          label: context.l10n.createdDate,
          value:
              stockTake.created.at.asyMMdtime(Localizations.localeOf(context)),
        ),
        LabelValueDisplayWidget(
          label: context.l10n.snapshotDate,
          value: stockTake.stocktakeLocations.firstOrNull?.snapshot?.created.at
                  .asyMMdtime(Localizations.localeOf(context)) ??
              '',
        ),
        LabelValueDisplayWidget(
          label: context.l10n.locations,
          value: stockTake.stocktakeLocations.length.toString(),
        ),
        LabelValueDisplayWidget(
          label: context.l10n.labelWorkflowStatus,
          value: stockTake.workFlowStatus(
            context,
            sharedService.workflowTitles,
          ),
          displayTooltip: true,
        ),
      ],
    );
  }
}
