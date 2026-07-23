import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:psnop/components/table/cell_widget.dart';
import 'package:psnop/components/table/depot_position/expandable_depot_row_component.dart';
import 'package:psnop/components/table/table_constraints.dart';
import 'package:psnop/enums/info_text_type.dart';
import 'package:psnop/models/depot_position_table/depot_position_summary_model.dart';
import 'package:psnop/models/depot_position_table/region_grouped_total_model.dart';
import 'package:psnop/models/depot_position_table/regional_position_model.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/headers/sub_header_model.dart';

class ExpandableRegionRowComponent extends StatefulWidget {
  const ExpandableRegionRowComponent({
    required this.headers,
    required this.renderTotalRow,
    required this.row,
    required this.subHeaders,
    super.key,
  });

  final Iterable<MainHeaderModel> headers;
  final bool renderTotalRow;
  final RegionPositionModel row;
  final Iterable<SubHeaderModel> subHeaders;

  @override
  State<ExpandableRegionRowComponent> createState() =>
      _ExpandableRegionRowComponentState();
}

class _ExpandableRegionRowComponentState
    extends State<ExpandableRegionRowComponent> {
  @override
  Widget build(BuildContext context) {
    final expandedNotifier = ValueNotifier<bool>(widget.row.expanded);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          children: [
            if (widget.renderTotalRow)
              _getTotalsRow(
                total: widget.row.regionTotal,
                constraints: constraints,
                notifier: expandedNotifier,
              )
            else
              Container(),
            _getDepotsSection(
              render: widget.renderTotalRow,
              notifier: expandedNotifier,
            ),
          ],
        );
      },
    );
  }

  Container _getTotalsRow({
    required BoxConstraints constraints,
    required RegionGroupedTotalModel total,
    required ValueNotifier<bool> notifier,
  }) {
    final width = constraints.maxWidth / widget.subHeaders.length;

    return Container(
      height: TableConstraints.rowHeight,
      decoration: Theme.of(context)
          .extension<EOBrandTheme>()!
          .psnopRegionTotalBoxDecoration,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.row.expanded = !widget.row.expanded;
                });
              },
              child: ValueListenableBuilder(
                builder: (
                  BuildContext context,
                  dynamic value,
                  Widget? child,
                ) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: CellWidgetHelper().getPadding(
                        infoTextType: InfoTextType.regionTotal,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          color: Theme.of(context)
                              .extension<EOBrandTheme>()!
                              .psnopExpandableSymbolColour,
                          size: 14,
                          value as bool
                              ? Icons.remove_outlined
                              : Icons.add_outlined,
                        ),
                        CellWidget(
                          column: 1,
                          context: context,
                          headers: widget.headers,
                          message: total.regionName != ''
                              ? total.regionName
                              : context.l10n.psnopIndividualDepots,
                          style: Theme.of(context)
                              .extension<EOBrandTheme>()!
                              .psnopRegionTotalTextStyle,
                          width: width * 2,
                          infoText: true,
                        ),
                      ],
                    ),
                  );
                },
                valueListenable: notifier,
              ),
            ),
          ),
          CellWidget(
            column: 2,
            context: context,
            headers: widget.headers,
            message: total.currentHeapWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 2,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: '',
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 2,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.inwardUnpricedWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 2,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.outwardUnpricedWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 2,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.currentStockTotal.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 3,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.confirmedInterDepotInward.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 4,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.purchaseForecastWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 4,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.interDepotReceiptWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 4,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.fixedPurchaseContractsWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 5,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.requestsWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.directSalesTotalWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.directSalesApprovedWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.directSalesToBookWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message:
                total.directSalesAwaitingTransportWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.directSalesTotalConfirmedWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.instructionsToMoveTotalWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            //TODO: when we get the info working uncomment these sections
            column: 7,
            //containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: '-',
            //total.instructionsToMoveApprovedWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.instructionsToMoveToBookWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.instructionsToMoveAwaitingTransportWeight
                .toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.instructionsToMoveConfirmedWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.standardFlowBalance.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.standardFlowToBookWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message:
                total.standardFlowAwaitingTransportWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.standardFlowConfirmedWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.movementsTotalWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.movementsApprovedWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.movementsToBookWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.movementsAwaitingTransportWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.movementsTotalConfirmedWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 10,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.netPosition2Weight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopRegionTotalTextStyle,
            width: width,
          ),
        ],
      ),
    );
  }

  Widget _getDepotsSection({
    required bool render,
    required ValueNotifier<bool> notifier,
  }) {
    if (render) {
      return ValueListenableBuilder(
        valueListenable: notifier,
        builder: (
          BuildContext context,
          dynamic value,
          Widget? child,
        ) {
          return Visibility(
            visible: notifier.value,
            child: _getDepots(
              headers: widget.headers,
              subHeaders: widget.subHeaders,
              summary: widget.row.depotPositionSummary,
            ),
          );
        },
      );
    } else {
      return _getDepots(
        expanded: widget.row.depotPositionSummary.length == 1,
        headers: widget.headers,
        subHeaders: widget.subHeaders,
        summary: widget.row.depotPositionSummary,
      );
    }
  }

  Column _getDepots({
    required Iterable<DepotPositionSummaryModel> summary,
    required Iterable<SubHeaderModel> subHeaders,
    required Iterable<MainHeaderModel> headers,
    bool expanded = false,
  }) {
    final widgets = <Widget>[];

    for (final item in summary) {
      widgets.add(
        ExpandableDepotRowComponent(
          depotSummary: item,
          expandDepot: expanded,
          headers: widget.headers,
          subHeaders: widget.subHeaders,
        ),
      );
    }

    return Column(
      children: widgets,
    );
  }
}
