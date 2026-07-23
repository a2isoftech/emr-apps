import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/table/cell_widget.dart';
import 'package:psnop/components/table/depot_position/grade_group_row_component.dart';
import 'package:psnop/components/table/table_constraints.dart';
import 'package:psnop/enums/info_text_type.dart';
import 'package:psnop/enums/movement_type.dart';
import 'package:psnop/models/depot_position_table/depot_grouped_total_model.dart';
import 'package:psnop/models/depot_position_table/depot_position_grade_grouped_model.dart';
import 'package:psnop/models/depot_position_table/depot_position_summary_model.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/headers/sub_header_model.dart';
import 'package:psnop/networking/uri_utils.dart';
import 'package:psnop/providers/depot_position_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class ExpandableDepotRowComponent extends StatefulWidget {
  const ExpandableDepotRowComponent({
    required this.depotSummary,
    required this.expandDepot,
    required this.headers,
    required this.subHeaders,
    super.key,
  });

  final bool expandDepot;
  final DepotPositionSummaryModel depotSummary;
  final Iterable<MainHeaderModel> headers;
  final Iterable<SubHeaderModel> subHeaders;

  @override
  State<ExpandableDepotRowComponent> createState() =>
      _ExpandableDepotRowComponentState();
}

class _ExpandableDepotRowComponentState
    extends State<ExpandableDepotRowComponent> {
  @override
  Widget build(BuildContext context) {
    final expanded = ValueNotifier<bool>(widget.depotSummary.expanded);
    final appConfig = Provider.of<AppConfig>(context);
    final depotPositionController = Provider.of<DepotPositionController>(
      context,
    );

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          children: [
            _getDepotTotal(
              appConfig: appConfig,
              constraints: constraints,
              expandDepot: widget.expandDepot,
              notifier: expanded,
              total: widget.depotSummary.depotTotal,
              depotPositionController: depotPositionController,
            ),
            _getGradeGroupSection(
              gradeGroups: widget.depotSummary.depotPositionGradeGroupedModels,
              notifier: expanded,
            ),
          ],
        );
      },
    );
  }

  Container _getDepotTotal({
    required AppConfig appConfig,
    required BoxConstraints constraints,
    required bool expandDepot,
    required ValueNotifier<bool> notifier,
    required DepotGroupedTotalModel total,
    required DepotPositionController depotPositionController,
  }) {
    final width = constraints.maxWidth / widget.subHeaders.length;
    if (expandDepot) notifier.value = true;

    return Container(
      height: TableConstraints.rowHeight,
      decoration: Theme.of(context)
          .extension<EOBrandTheme>()!
          .psnopDepotTotalBoxContainerDecoration,
      child: Row(
        children: [
          if (expandDepot)
            CellWidget(
              column: 1,
              context: context,
              flex: 2,
              headers: widget.headers,
              message: total.depotNo,
              onTap: () {
                if (total.depotNo.isEmpty) {
                  return;
                }
                context.goNamed(
                  NamedRoutes.psnopTicketSummary,
                  queryParams: {
                    'depotNos': [total.depotNo],
                  },
                );
              },
              style: Theme.of(context)
                  .extension<EOBrandTheme>()!
                  .psnopDepotTotalTextStyle,
              width: width * 2,
              infoText: true,
              infoTextType: InfoTextType.depotTotal,
            )
          else
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.depotSummary.expanded =
                        !widget.depotSummary.expanded;
                  });
                },
                child: ValueListenableBuilder(
                  builder: (
                    BuildContext context,
                    bool value,
                    Widget? child,
                  ) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: CellWidgetHelper().getPadding(
                          infoTextType: InfoTextType.depotTotal,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            color: Theme.of(context)
                                .extension<EOBrandTheme>()!
                                .psnopExpandableSymbolColour,
                            size: 14,
                            value ? Icons.remove_outlined : Icons.add_outlined,
                          ),
                          CellWidget(
                            column: 1,
                            context: context,
                            headers: widget.headers,
                            message: total.depotNo,
                            onTap: () {
                              if (total.depotNo.isEmpty) {
                                return;
                              }
                              context.goNamed(
                                NamedRoutes.psnopTicketSummary,
                                queryParams: {
                                  'depotNos': [total.depotNo],
                                },
                              );
                            },
                            style: Theme.of(context)
                                .extension<EOBrandTheme>()!
                                .psnopDepotTotalTextStyle,
                            width: (width * 2) - 14,
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
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 2,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            width: width,
            message: '',
          ),
          CellWidget(
            column: 2,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.inwardUnpricedWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
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
                .psnopDepotTotalTextStyle,
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
                .psnopDepotTotalTextStyle,
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
                .psnopDepotTotalTextStyle,
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
                .psnopDepotTotalTextStyle,
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
                .psnopDepotTotalTextStyle,
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
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 5,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.requestsWeight.toStringAsFixed(2),
            onTap: () {
              if (total.requestsWeight <= 0) {
                return;
              }
              launchUrl(
                UriUtils.yardManagementRequestLink(
                  appConfig,
                  depot: total.depotNo,
                ),
                webOnlyWindowName: '_blank',
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.directSalesTotalWeight.toStringAsFixed(2),
            onTap: () {
              if (total.directSalesTotalWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.directSales.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.directSalesApprovedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.directSalesApprovedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.directSales.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.directSalesToBookWeight.toStringAsFixed(2),
            onTap: () {
              if (total.directSalesToBookWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.directSales.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message:
                total.directSalesAwaitingTransportWeight.toStringAsFixed(2),
            onTap: () {
              if (total.directSalesAwaitingTransportWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.directSales.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.directSalesTotalConfirmedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.directSalesTotalConfirmedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.directSales.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.instructionsToMoveTotalWeight.toStringAsFixed(2),
            onTap: () {
              if (total.instructionsToMoveTotalWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.instructionsToMove.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            //TODO: when we get the info working uncomment these sections
            column: 7,
            //containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: '-',
            //model.instructionsToMoveApprovedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.instructionsToMoveApprovedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.instructionsToMove.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.instructionsToMoveToBookWeight.toStringAsFixed(2),
            onTap: () {
              if (total.instructionsToMoveToBookWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.instructionsToMove.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.instructionsToMoveAwaitingTransportWeight
                .toStringAsFixed(2),
            onTap: () {
              if (total.instructionsToMoveAwaitingTransportWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.instructionsToMove.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.instructionsToMoveConfirmedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.instructionsToMoveConfirmedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.instructionsToMove.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.standardFlowBalance.toStringAsFixed(2),
            onTap: () {
              if (total.standardFlowBalance <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.route.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.standardFlowToBookWeight.toStringAsFixed(2),
            onTap: () {
              if (total.standardFlowToBookWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.route.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message:
                total.standardFlowAwaitingTransportWeight.toStringAsFixed(2),
            onTap: () {
              if (total.standardFlowAwaitingTransportWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.route.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.standardFlowConfirmedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.standardFlowConfirmedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'movementType': [MovementType.route.name],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.movementsTotalWeight.toStringAsFixed(2),
            onTap: () {
              if (total.movementsTotalWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.movementsApprovedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.movementsApprovedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.movementsToBookWeight.toStringAsFixed(2),
            onTap: () {
              if (total.movementsToBookWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.movementsAwaitingTransportWeight.toStringAsFixed(2),
            onTap: () {
              if (total.movementsAwaitingTransportWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.movementsTotalConfirmedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.movementsTotalConfirmedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopDepotTotalTextStyle,
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
                .psnopDepotTotalTextStyle,
            width: width,
          ),
        ],
      ),
    );
  }

  Visibility _getGradeGroupSection({
    required ValueNotifier<bool> notifier,
    required List<DepotPositionGradeGroupedModel> gradeGroups,
  }) {
    final widgets = <Widget>[];

    for (final item in gradeGroups) {
      widgets.add(
        GradeGroupRowComponent(
          depotNo: widget.depotSummary.depotTotal.depotNo,
          gradeGroupSummary: item,
          headers: widget.headers,
          subHeaders: widget.subHeaders,
        ),
      );
    }

    return Visibility(
      visible: notifier.value,
      child: Column(
        children: widgets,
      ),
    );
  }
}
