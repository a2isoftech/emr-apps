import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/constants.dart';
import 'package:emr_one_stock_take/extensions/stocktake_search_extensions.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/widgets/basic_details/header_details.dart';
import 'package:emr_one_stock_take/screens/home/widgets/widgets.dart';
import 'package:emr_one_stock_take/screens/review_stocktake/review_location_card.dart';
import 'package:emr_one_stock_take/screens/review_stocktake/review_location_data_source.dart';
import 'package:emr_one_stock_take/screens/review_stocktake/review_location_filter_controller.dart';
import 'package:emr_one_stock_take/screens/review_stocktake/review_stocktake_buttons.dart';
import 'package:emr_one_stock_take/screens/review_stocktake/review_stocktake_controller.dart';
import 'package:emr_one_stock_take/widgets/column_builder.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ReviewStocktakeWeb extends StatefulWidget {
  const ReviewStocktakeWeb({
    required this.controller,
    required this.stockTake,
    required this.onVoteSubmit,
    super.key,
  });
  final ReviewStocktakeController controller;
  final StockTake stockTake;
  final void Function() onVoteSubmit;

  @override
  State<ReviewStocktakeWeb> createState() => _ReviewStocktakeWebState();
}

class _ReviewStocktakeWebState extends State<ReviewStocktakeWeb> {
  late final EmrQueryLayoutController<StocktakeLocation>
      _emrQueryLayoutController;
  late final ReviewLocationDataSource _dataSource;
  List<Uom> uoms = List.empty();

  @override
  void initState() {
    super.initState();
    final settingsController =
        Provider.of<BaseSettingsController>(context, listen: false)
            as SettingsController;

    final uomService = Provider.of<UomService>(context, listen: false);
    uoms = uomService.getUoms(
      settingsController.territory,
    );
    uoms.remove(Enum$Uom.EA.toUomModel());

    _dataSource = ReviewLocationDataSource(
      allLocations: widget.stockTake.locations,
    );
    _emrQueryLayoutController = EmrQueryLayoutController(
      dataSource: _dataSource,
      filterController: ReviewLocationFilterController(
        reviewLocationDataSource: _dataSource,
      ),
    );

    _emrQueryLayoutController.dataSource.refresh();
    _emrQueryLayoutController.dataSource.selection.addListener(() {
      final location =
          _emrQueryLayoutController.dataSource.selection.value.firstOrNull;
      if (location != null) {
        HelperMethods.showLocationFullDetailsScreen(
          context,
          location,
          widget.controller,
        );
        _emrQueryLayoutController.dataSource.selection.value = [];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: HeaderDetails(
                  productFamily: widget.stockTake.productFamily,
                  name: widget.stockTake.name,
                  yard: widget.stockTake.yardCode,
                  conductedByLabel: widget.stockTake.isRoutineCheck
                      ? context.l10n.completedBy
                      : context.l10n.submittedBy,
                  conductedBy: widget.stockTake.submitter ?? '',
                  onShowWorkflowHistory: widget.stockTake.isRoutineCheck
                      ? null
                      : () => HelperMethods.showWorkflowHistory(
                            context,
                            widget.controller.service,
                            widget.stockTake,
                          ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: Insets.gutter),
                child: SizedBox(
                  width: 180,
                  child: EmrPickerFormField<Uom>(
                    labelText: context.l10n.uom,
                    mode: EmrPickerMode.dropdown,
                    items: (_) => Future.value(uoms),
                    itemTitleText: (uom) => uom.name.toUpperCase(),
                    binding: widget.controller.selectedUom,
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 1),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: widget.controller.selectedUom,
              builder: (_, __, ___) {
                return EmrQueryLayoutHybrid(
                  controller: _emrQueryLayoutController,
                  columns: _columns(theme),
                  cardWidth: 400,
                  rowHeight: (rowIndex) => rowIndex < 0 ? 55 : 40,
                  buildCardTrailing: (item) => IconButton(
                    icon: const Icon(Icons.comment_outlined),
                    padding: EdgeInsets.zero,
                    onPressed: () => HelperMethods.openCommentsDialog(
                      context,
                      widget.stockTake.id!,
                      item,
                      widget.controller.service,
                    ),
                  ),
                  buildCardTitle: (location) {
                    return '${location.code} - ${location.description}';
                  },
                  buildCardSubtitle: (location) => '${location.productCode} - '
                      '${location.productDesc ?? '-'}',
                  buildCardBody: (item, index) {
                    return ReviewLocationCard(
                      location: item,
                      controller: widget.controller,
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(height: Insets.gutter),
          Visibility(
            visible: widget.stockTake.canApprove(
              context,
              widget.controller.userInfoService.userInfo.emailAddress,
            ),
            child: ReviewStocktakeButtons(
              controller: widget.controller,
              stockTake: widget.stockTake,
              onVoteSubmit: widget.onVoteSubmit,
            ),
          ),
        ],
      ),
    );
  }

  List<EmrGridColumn<StocktakeLocation>> _columns(ThemeData theme) {
    final brandColors = Theme.of(context).extension<EOBrandTheme>()!;

    return [
      buildColumn(
        width: 70,
        headerText: context.l10n.location,
        cellBuilder: (item) => Tooltip(
          message: '${item.code} - ${item.description}',
          child: getColumnText(item.code, theme),
        ),
        context: context,
        theme: theme,
      ),
      buildColumn(
        width: 70,
        headerText: context.l10n.product,
        cellBuilder: (item) => Tooltip(
          message: '${item.productCode} - '
              '${item.productDesc ?? ''}',
          child: getColumnText(item.productCode, theme),
        ),
        context: context,
        theme: theme,
      ),
      buildTextColumn(
        headerText: context.l10n.snapshotDateTime,
        cellText: (item) =>
            item.snapshot?.snapshotDate?.asyMMdtime(
              Localizations.localeOf(context),
            ) ??
            '-',
        context: context,
        theme: theme,
      ),
      buildTextColumn(
        headerText: context.l10n.snapshotWeight,
        cellText: (item) {
          final uom = widget.controller.selectedUom.value ?? item.defaultUom;
          final snapshotWeight = widget.controller
              .convertWeight(
                item.snapshot?.totalWeight ?? UomValue.weight(0, uom),
              )
              .value;
          final formattedWeight =
              HelperMethods.toFormattedWeight(context, snapshotWeight, uom);
          return formattedWeight;
        },
        context: context,
        theme: theme,
      ),
      buildTextColumn(
        headerText: context.l10n.snapshotRate,
        cellText: (item) =>
            NumberFormat.simpleCurrency(
              name: widget.controller.currencyCode,
            ).currencySymbol +
            widget.controller
                .convertRate(
                  item.snapshot?.snapshotRate ?? UomValue.rate(0, Uom.mt),
                )
                .toRateString(),
        context: context,
        theme: theme,
      ),
      buildTextColumn(
        headerText: context.l10n.snapshotValue,
        cellText: (item) {
          final uom = widget.controller.selectedUom.value ?? item.defaultUom;
          final snapshotValue = widget.controller.calculateWeightRate(
            item.snapshot?.totalWeight,
            item.snapshot?.snapshotRate,
            uom,
          );
          return HelperMethods.toCurrency(
            context,
            snapshotValue,
            currencyCode: widget.controller.currencyCode,
          );
        },
        context: context,
        theme: theme,
      ),
      buildTextColumn(
        headerText: context.l10n.weighedDateTime,
        cellText: (item) => item.takenWeights.isNotEmpty
            ? item.takenWeights.last.weighedDateTime!.asyMMdtime(
                Localizations.localeOf(context),
              )
            : '-',
        context: context,
        theme: theme,
      ),
      buildTextColumn(
        headerText: context.l10n.weighedBy,
        cellText: (item) => item.takenWeights.isNotEmpty
            ? item.takenWeights.last.weighedByName ?? '-'
            : '-',
        context: context,
        theme: theme,
      ),
      buildTextColumn(
        headerText: context.l10n.stockTakeWeight,
        cellText: (item) {
          final uom = widget.controller.selectedUom.value ?? item.defaultUom;
          final netWeight = widget.controller
              .convertWeight(
                item.netWeightMT ?? UomValue.weight(0, uom),
              )
              .value;
          final formattedWeight =
              HelperMethods.toFormattedWeight(context, netWeight, uom);
          return formattedWeight;
        },
        context: context,
        theme: theme,
      ),
      buildTextColumn(
        headerText: context.l10n.stockTakeValue,
        cellText: (item) {
          final uom = widget.controller.selectedUom.value ?? item.defaultUom;
          final stockTakeValue = widget.controller.calculateWeightRate(
            item.netWeightMT,
            item.snapshot?.snapshotRate,
            uom,
          );
          return HelperMethods.toCurrency(
            context,
            stockTakeValue,
            currencyCode: widget.controller.currencyCode,
          );
        },
        context: context,
        theme: theme,
      ),
      buildColumn(
        headerText: context.l10n.adjustedWeight,
        cellBuilder: (item) {
          final uom = widget.controller.selectedUom.value ?? item.defaultUom;
          return Text(
            HelperMethods.toFormattedWeight(
              context,
              widget.controller.convertWeight(item.weightVariance!).value,
              uom,
              showPlusSign: true,
            ),
            style: theme.textTheme.bodyMedium?.copyWith(
              color: item.weightVariance?.value != 0
                  ? OppraBrandColors.warningColor
                  : brandColors.ctaColour,
            ),
          );
        },
        context: context,
        theme: theme,
      ),
      buildColumn(
        headerText: context.l10n.adjustedValue,
        cellBuilder: (item) {
          return Text(
            HelperMethods.toCurrency(
              context,
              item.valueVariance ?? 0,
              currencyCode: widget.controller.currencyCode,
              showPlusSign: true,
            ),
            style: theme.textTheme.bodyMedium?.copyWith(
              color: (item.valueVariance ?? 0) != 0
                  ? OppraBrandColors.warningColor
                  : brandColors.ctaColour,
            ),
          );
        },
        context: context,
        theme: theme,
      ),
      buildColumn(
        headerText: '',
        width: 30,
        cellBuilder: (item) {
          return IconButton(
            icon: const Icon(Icons.comment_outlined),
            padding: EdgeInsets.zero,
            onPressed: () => HelperMethods.openCommentsDialog(
              context,
              widget.stockTake.id!,
              item,
              widget.controller.service,
            ),
          );
        },
        context: context,
      ),
    ];
  }
}
