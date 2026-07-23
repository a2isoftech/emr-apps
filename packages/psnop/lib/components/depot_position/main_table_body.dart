import 'package:collection/collection.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/table/cell_widget.dart';
import 'package:psnop/components/table/depot_position/expandable_region_row_component.dart';
import 'package:psnop/components/table/table_constraints.dart';
import 'package:psnop/enums/depot_position_state.dart';
import 'package:psnop/enums/info_text_type.dart';
import 'package:psnop/models/depot_position_table/grand_total_model.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/headers/sub_header_model.dart';
import 'package:psnop/providers/depot_position_controller.dart';
import 'package:sliver_tools/sliver_tools.dart';

class MainTableBody extends StatelessWidget {
  const MainTableBody({
    required this.headers,
    required this.subHeaders,
    super.key,
  });

  final Iterable<MainHeaderModel> headers;
  final Iterable<SubHeaderModel> subHeaders;

  @override
  Widget build(BuildContext context) {
    final depotPositionController = Provider.of<DepotPositionController>(
      context,
    );

    switch (depotPositionController.state) {
      case DepotPositionState.init:
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(),
            ],
          ),
        );
      case DepotPositionState.loading:
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              LayoutBuilder(
                builder: (
                  BuildContext context,
                  BoxConstraints constraints,
                ) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(
                        Insets.gutter,
                      ),
                      child: SizedBox(
                        height: constraints.maxWidth / 16,
                        width: constraints.maxWidth / 16,
                        child: const CircularProgressIndicator(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      case DepotPositionState.success:
        try {
          if (depotPositionController.model.regionPositionModels.isNotEmpty) {
            final widgets = <Widget>[];

            widgets.add(
              _getTotal(
                depotPositionController.model.grandTotal,
              ),
            );

            final noRegion = depotPositionController.model.regionPositionModels
                .firstWhereOrNull(
              (element) => element.regionTotal.regionName == '',
            );

            var renderTotalRow = false;

            if ((noRegion == null) ||
                (depotPositionController.model.regionPositionModels.length >
                    1)) {
              renderTotalRow = true;
            } else {
              renderTotalRow = false;
            }

            for (final row
                in depotPositionController.model.regionPositionModels) {
              widgets.add(
                ExpandableRegionRowComponent(
                  renderTotalRow: renderTotalRow,
                  row: row,
                  subHeaders: subHeaders,
                  headers: headers,
                ),
              );
            }

            return MultiSliver(
              children: widgets,
            );
          } else {
            // ignore: only_throw_errors
            throw context.l10n.psnopDepotPositionNotFound;
          }
        } catch (e) {
          return SliverList(
            delegate: SliverChildListDelegate(
              [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: Center(
                      child: Text(
                        e.toString(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      case DepotPositionState.error:
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Center(
                    child: Text(
                      context.l10n.psnopFailedToGetDepotPositions,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
    }
  }

  Widget _getTotal(GrandTotalModel model) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = constraints.maxWidth / subHeaders.length;
        return Container(
          height: TableConstraints.rowHeight,
          decoration: Theme.of(context)
              .extension<EOBrandTheme>()!
              .psnopGrandTotalBoxDecoration,
          width: constraints.maxWidth,
          child: Row(
            children: [
              CellWidget(
                column: 1,
                containerIfZero: true,
                context: context,
                flex: 2,
                headers: headers,
                message: 'Page Totals',
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width * 2,
                infoText: true,
                infoTextType: InfoTextType.grandTotal,
              ),
              CellWidget(
                column: 2,
                context: context,
                headers: headers,
                message: model.currentHeapWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 2,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: '',
                width: width,
              ),
              CellWidget(
                column: 2,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.inwardUnpricedWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 2,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.outwardUnpricedWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 2,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.currentStockTotal.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 3,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.confirmedInterDepotInward.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 4,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.purchaseForecastWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 4,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.interDepotReceiptWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 4,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.fixedPurchaseContractsWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 5,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.requestsWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 6,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.directSalesTotalWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 6,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.directSalesApprovedWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 6,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.directSalesToBookWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 6,
                containerIfZero: true,
                context: context,
                headers: headers,
                message:
                    model.directSalesAwaitingTransportWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 6,
                containerIfZero: true,
                context: context,
                headers: headers,
                message:
                    model.directSalesTotalConfirmedWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 7,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.instructionsToMoveTotalWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 7,
                containerIfZero: true,
                context: context,
                headers: headers,
                message:
                    model.instructionsToMoveApprovedWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 7,
                containerIfZero: true,
                context: context,
                headers: headers,
                message:
                    model.instructionsToMoveToBookWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 7,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.instructionsToMoveAwaitingTransportWeight
                    .toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 7,
                containerIfZero: true,
                context: context,
                headers: headers,
                message:
                    model.instructionsToMoveConfirmedWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 8,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.standardFlowBalance.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 8,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.standardFlowToBookWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 8,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.standardFlowAwaitingTransportWeight
                    .toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 8,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.standardFlowConfirmedWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 9,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.movementsTotalWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 9,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.movementsApprovedWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 9,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.movementsToBookWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 9,
                containerIfZero: true,
                context: context,
                headers: headers,
                message:
                    model.movementsAwaitingTransportWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 9,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.movementsTotalConfirmedWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
              CellWidget(
                column: 10,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: model.netPosition2Weight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGrandTotalTextStyle,
                width: width,
              ),
            ],
          ),
        );
      },
    );
  }
}
