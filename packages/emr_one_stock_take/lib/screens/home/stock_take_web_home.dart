import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/fragments/stocktake/stocktake_search_fields.graphql.dart';
import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/constants.dart';
import 'package:emr_one_stock_take/extensions/stocktake_search_extensions.dart';
import 'package:emr_one_stock_take/screens/home/widgets/stock_take_menu_actions.dart';
import 'package:emr_one_stock_take/screens/home/widgets/widgets.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_stock_take/services/stock_take_shared_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StockTakeWeb extends StatefulWidget {
  const StockTakeWeb({
    required this.controller,
    required this.queryLayoutController,
    super.key,
  });
  final StockTakeHomeController controller;
  final EmrQueryLayoutController<Fragment$StocktakeSearchFields>
      queryLayoutController;
  @override
  State<StockTakeWeb> createState() => _StockTakeWebState();
}

class _StockTakeWebState extends State<StockTakeWeb> {
  late final BasicDetailsController _basicDetailsController;

  late StockTakeSharedService stockTakeSharedService;

  @override
  void initState() {
    super.initState();
    _basicDetailsController = BasicDetailsController(
      userAccessService: widget.controller.userAccessService,
      stocktakeService: widget.controller.stocktakeService,
      settingsController:
          Provider.of<BaseSettingsController>(context, listen: false)
              as SettingsController,
    );
    _basicDetailsController.stockTakeId = null;

    widget.queryLayoutController.actionsBuilder = (context) => Row(
          spacing: Insets.gutter,
          children: [
            if (widget.controller.userInfoService.userInfo
                .hasPermission(StockTakePermissions.createStocktake))
              FilledButton(
                onPressed: () async {
                  _basicDetailsController.reset();
                  await CreateEditStocktakeDetails.show(
                    context,
                    controller: _basicDetailsController,
                  );
                },
                style: EmrButtonStyles.cta(),
                child: Text(context.l10n.addNewStocktake),
              ),
          ],
        );

    stockTakeSharedService =
        Provider.of<StockTakeSharedService>(context, listen: false);
    stockTakeSharedService.loadWorkflowTitles(context.coreApi.referenceData);

    widget.queryLayoutController.dataSource.refresh();
    widget.queryLayoutController.dataSource.selection.value = [];
    widget.queryLayoutController.dataSource.selection
        .addListener(_onSelectionChanged);
  }

  void _onSelectionChanged() {
    final stockTake =
        widget.queryLayoutController.dataSource.selection.value.firstOrNull;
    if (stockTake != null) widget.controller.handleOnTap(context, stockTake);
  }

  @override
  void dispose() {
    widget.queryLayoutController.dataSource.selection
        .removeListener(_onSelectionChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return EmrQueryLayoutHybrid<Fragment$StocktakeSearchFields>(
      controller: widget.queryLayoutController,
      columns: columns(theme),
      rowHeight: (rowIndex) => rowIndex < 0 ? 60 : 50,
      cardWidth: 340,
      buildCardTitle: (stockTake) {
        return stockTake.name;
      },
      buildCardSubtitle: (stockTake) {
        return stockTake.yardCode;
      },
      buildCardTrailing: (stockTake) {
        return Row(
          children: [
            EmrStatusChip(
              statusType: HelperMethods.getStatusType(stockTake.status),
              text: stockTake.status.toStatusString(context),
            ),
            StockTakeMenuActions(
              controller: widget.controller,
              queryLayoutController: widget.queryLayoutController,
              stockTake: stockTake,
            ),
          ],
        );
      },
      buildCardBody: (item, index) {
        return StocktakeCardView(
          stockTake: item,
          theme: theme,
          controller: widget.controller,
        );
      },
    );
  }

  List<EmrGridColumn<Fragment$StocktakeSearchFields>> columns(ThemeData theme) {
    return [
      buildColumn(
        width: 25,
        headerText: '',
        cellBuilder: (rowItem) {
          return StockTakeMenuActions(
            controller: widget.controller,
            queryLayoutController: widget.queryLayoutController,
            stockTake: rowItem,
          );
        },
        context: context,
      ),
      buildTextColumn(
        context: context,
        headerText: context.l10n.yard,
        cellText: (rowItem) => rowItem.yardCode,
        theme: theme,
        dataSource: widget.queryLayoutController.dataSource,
        width: 50,
      ),
      buildColumn(
        headerText: context.l10n.stockTakeDescription,
        cellBuilder: (rowItem) {
          return Tooltip(
            message: rowItem.name,
            child: getColumnText(rowItem.name, theme),
          );
        },
        context: context,
        theme: theme,
        dataSource: widget.queryLayoutController.dataSource,
        width: 130,
      ),
      buildColumn(
        headerText: context.l10n.status,
        cellBuilder: (rowItem) => EmrStatusChip(
          statusType: HelperMethods.getStatusType(rowItem.status),
          text: rowItem.status.toStatusString(context),
        ),
        context: context,
        theme: theme,
        width: 130,
      ),
      buildTextColumn(
        headerText: context.l10n.originator,
        cellText: (rowItem) => rowItem.created.user?.name ?? '',
        context: context,
        theme: theme,
        dataSource: widget.queryLayoutController.dataSource,
      ),
      buildTextColumn(
        width: 140,
        headerText: context.l10n.createdDate,
        cellText: (rowItem) =>
            rowItem.created.at.asyMMdtime(Localizations.localeOf(context)),
        sortBy: 'createdDate',
        dataSource: widget.queryLayoutController.dataSource,
        context: context,
        theme: theme,
      ),
      buildTextColumn(
        width: 140,
        headerText: context.l10n.snapshotDate,
        cellText: (rowItem) =>
            rowItem.stocktakeLocations.firstOrNull?.snapshot?.created.at != null
                ? rowItem.stocktakeLocations.firstOrNull!.snapshot!.created.at
                    .asyMMdtime(Localizations.localeOf(context))
                : '',
        context: context,
        theme: theme,
        dataSource: widget.queryLayoutController.dataSource,
      ),
      buildTextColumn(
        headerText: context.l10n.locations,
        cellText: (rowItem) => rowItem.stocktakeLocations.length.toString(),
        context: context,
        theme: theme,
        dataSource: widget.queryLayoutController.dataSource,
        width: 80,
      ),
      buildTextColumn(
        headerText: context.l10n.conductedBy,
        cellText: (rowItem) => rowItem.conductor != null
            ? '${rowItem.conductor!.firstName} '
                '${rowItem.conductor!.lastName}'
            : '',
        context: context,
        theme: theme,
        dataSource: widget.queryLayoutController.dataSource,
        width: 110,
      ),
      buildColumn(
        headerText: context.l10n.labelWorkflowStatus,
        cellBuilder: (rowItem) {
          final workflowStatus = rowItem.workFlowStatus(
            context,
            stockTakeSharedService.workflowTitles,
          );
          return Tooltip(
            message: workflowStatus,
            child: getColumnText(workflowStatus, theme),
          );
        },
        context: context,
        theme: theme,
        dataSource: widget.queryLayoutController.dataSource,
      ),
    ];
  }
}
