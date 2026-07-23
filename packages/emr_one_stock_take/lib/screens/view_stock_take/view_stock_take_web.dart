import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_stock_take/widgets/column_builder.dart';
import 'package:flutter/material.dart';

class ViewStockTakeWeb extends StatefulWidget {
  const ViewStockTakeWeb({
    required this.controller,
    required this.stockTake,
    super.key,
  });
  final ViewStockTakeController controller;
  final StockTake stockTake;

  @override
  State<ViewStockTakeWeb> createState() => _ViewStockTakeWebState();
}

class _ViewStockTakeWebState extends State<ViewStockTakeWeb> {
  late final EmrQueryLayoutController<StocktakeLocation>
      _emrQueryLayoutController;
  late final EmrGridController<StocktakeLocation> _emrGridController;
  late final ReviewLocationDataSource _dataSource;

  @override
  void initState() {
    super.initState();

    _dataSource = ReviewLocationDataSource(
      allLocations: widget.stockTake.locations,
    );
    _emrQueryLayoutController = EmrQueryLayoutController(
      dataSource: _dataSource,
      filterController: ReviewLocationFilterController(
        reviewLocationDataSource: _dataSource,
      ),
    );
    _emrGridController = EmrGridController(
      data: _emrQueryLayoutController.dataSource.data,
      showLoader: _emrQueryLayoutController.dataSource.loading,
      rowSelectionMode: RowSelectionMode.single,
      onSelectedRowsChanged: (selectedRows) {
        final location = selectedRows.firstOrNull;
        if (location != null) {
          widget.controller.showLocationWeightsScreen(
            context,
            location,
          );
        }
      },
    );
    _emrQueryLayoutController.dataSource.refresh();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter,
            right: Insets.gutter,
            top: Insets.gutter,
          ),
          child: Column(
            children: [
              HeaderDetails(
                productFamily: widget.stockTake.productFamily,
                name: widget.stockTake.name,
                yard: widget.stockTake.yardCode,
                conductedBy: widget.stockTake.conductor ?? '',
                onShowWorkflowHistory: widget.stockTake.isRoutineCheck
                    ? null
                    : () => HelperMethods.showWorkflowHistory(
                          context,
                          widget.controller.service,
                          widget.stockTake,
                        ),
              ),
              const SizedBox(height: Insets.gutter),
              const Divider(height: 1),
            ],
          ),
        ),
        Expanded(
          child: _buildGridView(theme),
        ),
      ],
    );
  }

  Widget _buildGridView(ThemeData theme) {
    return EmrQueryLayout<StocktakeLocation>.grid(
      queryLayoutController: _emrQueryLayoutController,
      gridController: _emrGridController,
      columns: _columns(theme),
    );
  }

  List<EmrGridColumn<StocktakeLocation>> _columns(ThemeData theme) {
    return [
      buildColumn(
        width: 70,
        headerText: context.l10n.location,
        cellBuilder: (item) =>
            getColumnText('${item.code} - ${item.description}', theme),
        context: context,
        theme: theme,
      ),
      buildColumn(
        width: 70,
        headerText: context.l10n.product,
        cellBuilder: (item) =>
            getColumnText('${item.productCode} - ${item.productDesc}', theme),
        context: context,
        theme: theme,
      ),
      buildTextColumn(
        headerText: context.l10n.productClass,
        cellText: (item) => item.productClass,
        width: 70,
        context: context,
        theme: theme,
      ),
      buildTextColumn(
        headerText: context.l10n.productLine,
        cellText: (item) => item.productLine,
        width: 70,
        context: context,
        theme: theme,
      ),
      buildTextColumn(
        headerText: context.l10n.totalWeight,
        cellText: (item) => HelperMethods.toFormattedWeight(
          context,
          HelperMethods.calculateTotalWeight(
            item.takenWeights,
            item.defaultUom,
          ),
          item.defaultUom,
        ),
        width: 70,
        context: context,
        theme: theme,
      ),
    ];
  }
}
