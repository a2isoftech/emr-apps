import 'package:emr_core_api/extensions/extensions.dart';
import 'package:emr_core_api/graphql/fragments/stocktake/stocktake_search_fields.graphql.dart';
import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/constants/permission.dart';
import 'package:emr_one_stock_take/extensions/stocktake_search_extensions.dart';
import 'package:emr_one_stock_take/screens/home/widgets/stock_take_menu_actions.dart';
import 'package:emr_one_stock_take/screens/home/widgets/stocktake_card_view.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_stock_take/services/stock_take_shared_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StockTakeMobile extends StatefulWidget {
  const StockTakeMobile({
    required this.queryLayoutController,
    required this.controller,
    super.key,
  });
  final EmrQueryLayoutController<Fragment$StocktakeSearchFields>
      queryLayoutController;
  final StockTakeHomeController controller;

  @override
  State<StockTakeMobile> createState() => _StockTakeMobileState();
}

class _StockTakeMobileState extends State<StockTakeMobile> {
  late UserInfoService userInfoService;
  late final BasicDetailsController _basicDetailsController;

  @override
  void initState() {
    super.initState();
    userInfoService = context.read<UserInfoService>();

    _basicDetailsController = BasicDetailsController(
      userAccessService: widget.controller.userAccessService,
      stocktakeService: widget.controller.stocktakeService,
      settingsController:
          Provider.of<BaseSettingsController>(context, listen: false)
              as SettingsController,
    );
    _basicDetailsController.stockTakeId = null;

    final stockTakeSharedService =
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

    return Column(
      children: [
        Expanded(
          child: EmrQueryLayoutHybrid(
            controller: widget.queryLayoutController,
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
                onDelete: (stockTake) {
                  widget.queryLayoutController.dataSource.refresh();
                },
              );
            },
          ),
        ),
        if (widget.controller.userInfoService.userInfo
            .hasPermission(StockTakePermissions.createStocktake))
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Insets.gutter / 2),
                  child: FilledButton(
                    onPressed: () async {
                      _basicDetailsController.reset();
                      await CreateEditStocktakeDetails.show(
                        context,
                        controller: _basicDetailsController,
                      );
                    },
                    style: EmrButtonStyles.cta(),
                    child: Text(
                      context.l10n.addNewStocktake,
                    ),
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
