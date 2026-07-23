import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/routing/routing.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/table/cell_widget.dart';
import 'package:psnop/components/table/table_constraints.dart';
import 'package:psnop/components/table/table_utils.dart';
import 'package:psnop/enums/info_text_type.dart';
import 'package:psnop/enums/movement_type.dart';
import 'package:psnop/models/depot_position_table/depot_position_model.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/headers/sub_header_model.dart';
import 'package:psnop/networking/uri_utils.dart';
import 'package:psnop/providers/depot_position_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class ExpandableGradeRowComponent extends StatefulWidget {
  const ExpandableGradeRowComponent({
    required this.grade,
    required this.headers,
    required this.subHeaders,
    super.key,
  });

  final DepotPositionModel grade;
  final Iterable<MainHeaderModel> headers;
  final Iterable<SubHeaderModel> subHeaders;

  @override
  State<ExpandableGradeRowComponent> createState() =>
      _ExpandableGradeRowComponentState();
}

class _ExpandableGradeRowComponentState
    extends State<ExpandableGradeRowComponent> {
  @override
  Widget build(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context);
    final depotPositionController = Provider.of<DepotPositionController>(
      context,
    );
    final expanded = ValueNotifier<bool>(widget.grade.expanded);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return _getExpandableGradeRow(
          appConfig,
          constraints,
          widget.grade,
          controller: depotPositionController,
          notifier: expanded,
        );
      },
    );
  }

  Column _getExpandableGradeRow(
    AppConfig appConfig,
    BoxConstraints constraints,
    DepotPositionModel grade, {
    required DepotPositionController controller,
    required ValueNotifier<bool> notifier,
  }) {
    return Column(
      children: [
        _getGradeRow(
          appConfig: appConfig,
          constraints: constraints,
          total: grade,
          depotPositionController: controller,
          notifier: notifier,
        ),
        ValueListenableBuilder(
          builder: (
            BuildContext context,
            bool value,
            Widget? child,
          ) {
            return Visibility(
              visible: value,
              child: _getHeapRows(
                appConfig: appConfig,
                constraints: constraints,
                heaps: grade.depotPositions!,
                depotPositionController: controller,
              ),
            );
          },
          valueListenable: notifier,
        ),
      ],
    );
  }

  Container _getGradeRow({
    required AppConfig appConfig,
    required BoxConstraints constraints,
    required DepotPositionModel total,
    required DepotPositionController depotPositionController,
    required ValueNotifier<bool> notifier,
  }) {
    final width = constraints.maxWidth / widget.subHeaders.length;

    return Container(
      height: TableConstraints.rowHeight,
      decoration: Theme.of(context)
          .extension<EOBrandTheme>()!
          .psnopGradeBoxContainerDecoration,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.grade.expanded = !widget.grade.expanded;
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
                        infoTextType: InfoTextType.gradeTotal,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          color: Theme.of(context)
                              .extension<EOBrandTheme>()!
                              .psnopExpandableSymbolAltColour,
                          size: 14,
                          value ? Icons.remove_outlined : Icons.add_outlined,
                        ),
                        CellWidget(
                          column: 1,
                          context: context,
                          headers: widget.headers,
                          message: total.grade,
                          onTap: () {
                            if (total.grade.isEmpty) {
                              return;
                            }
                            context.goNamed(
                              NamedRoutes.psnopTicketSummary,
                              queryParams: {
                                'depotNos': [total.depotNo],
                                'grades': [total.grade],
                              },
                            );
                          },
                          style: Theme.of(context)
                              .extension<EOBrandTheme>()!
                              .psnopGradeTextStyle,
                          width: width,
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
            column: 1,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.heapShortName,
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeTextStyle,
            width: width,
          ),
          CellWidget(
            column: 2,
            context: context,
            headers: widget.headers,
            message: total.currentHeapWeight.toStringAsFixed(2),
            showToolTip: total.currentHeapWeight < 0,
            style: total.currentHeapWeight < 0
                ? Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopWarningTextStyle
                : Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGradeTextStyle,
            tooltipMessage: total.currentHeapWeight < 0
                ? context.l10n.psnopNegativeHeapCalculatedAsZero
                : null,
            width: width,
          ),
          CellWidget(
            column: 2,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.currentHeapWeightRate.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeTextStyle,
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
                .psnopGradeTextStyle,
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
                .psnopGradeTextStyle,
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
                .psnopGradeTextStyle,
            width: width,
          ),
          CellWidget(
            column: 3,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.confirmedInterDepotInward.toStringAsFixed(2),
            onTap: () {
              if (total.confirmedInterDepotInward <= 0) {
                return;
              }
              final now = DateTime.now();
              launchUrl(
                UriUtils.yardManagementIncomingLink(
                  appConfig,
                  endDate: TableUtils.endDate(
                    addYear: false,
                    date: now,
                    weeks: depotPositionController.weeks,
                  ),
                  grade: total.grade,
                  startDate: now,
                  yardCode: total.yardCode,
                ),
                webOnlyWindowName: '_blank',
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeTextStyle,
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
                .psnopGradeTextStyle,
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
                .psnopGradeTextStyle,
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
                .psnopGradeTextStyle,
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
                  grade: total.grade,
                ),
                webOnlyWindowName: '_blank',
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.standardFlowBalance.toStringAsFixed(2),
            showToolTip: total.standardFlowRoute?.isNotEmpty ?? false,
            onTap: () {
              if (total.standardFlowBalance <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
            tooltipMessage: total.standardFlowRoute,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
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
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: widget.headers,
            message: total.movementsToBookWeight.toStringAsFixed(2),
            onTap: () {
              if (total.movementsTotalWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [total.depotNo],
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeTextStyle,
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
                  'grades': [total.grade],
                  'gradeGroups': [total.gradeGroup],
                  'ignoreZeroHeaps': [
                    depotPositionController.ignoreZeroHeaps.toString(),
                  ],
                  'weeks': [depotPositionController.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeTextStyle,
            width: width,
          ),
          CellWidget(
            column: 10,
            context: context,
            headers: widget.headers,
            message: total.netPosition2Weight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeTextStyle,
            width: width,
          ),
        ],
      ),
    );
  }

  Column _getHeapRows({
    required AppConfig appConfig,
    required BoxConstraints constraints,
    required List<DepotPositionModel> heaps,
    required DepotPositionController depotPositionController,
  }) {
    final width = constraints.maxWidth / widget.subHeaders.length;
    final widgets = <Widget>[];

    for (var i = 0; i < heaps.length; i++) {
      final heap = heaps[i];

      widgets.add(
        Container(
          height: TableConstraints.rowHeight,
          decoration: Theme.of(context)
              .extension<EOBrandTheme>()!
              .psnopHeapBoxContainerDecoration,
          child: Row(
            children: [
              CellWidget(
                column: 1,
                containerIfZero: true,
                context: context,
                headers: widget.headers,
                message: heap.grade,
                onTap: () {
                  if (heap.grade.isEmpty) {
                    return;
                  }
                  context.goNamed(
                    NamedRoutes.psnopTicketSummary,
                    queryParams: {
                      'depotNos': [heap.depotNo],
                      'grades': [heap.grade],
                    },
                  );
                },
                infoText: true,
                infoTextType: InfoTextType.heapTotal,
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGradeTextStyle,
                width: width,
              ),
              CellWidget(
                column: 1,
                containerIfZero: true,
                context: context,
                headers: widget.headers,
                message: heap.heapShortName,
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGradeTextStyle,
                width: width,
              ),
              CellWidget(
                column: 2,
                context: context,
                headers: widget.headers,
                message: heap.currentHeapWeight.toStringAsFixed(2),
                showToolTip: heap.currentHeapWeight < 0,
                style: heap.currentHeapWeight < 0
                    ? Theme.of(context)
                        .extension<EOBrandTheme>()!
                        .psnopWarningTextStyle
                    : Theme.of(context)
                        .extension<EOBrandTheme>()!
                        .psnopGradeTextStyle,
                tooltipMessage: heap.currentHeapWeight < 0
                    ? context.l10n.psnopNegativeHeapCalculatedAsZero
                    : null,
                width: width,
              ),
              CellWidget(
                column: 2,
                containerIfZero: true,
                context: context,
                headers: widget.headers,
                message: heap.currentHeapWeightRate.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGradeTextStyle,
                width: width,
              ),
              CellWidget(
                column: 2,
                containerIfZero: true,
                context: context,
                headers: widget.headers,
                message: heap.inwardUnpricedWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGradeTextStyle,
                width: width,
              ),
              CellWidget(
                column: 2,
                containerIfZero: true,
                context: context,
                headers: widget.headers,
                message: heap.outwardUnpricedWeight.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGradeTextStyle,
                width: width,
              ),
              CellWidget(
                column: 2,
                containerIfZero: true,
                context: context,
                headers: widget.headers,
                message: heap.currentStockTotal.toStringAsFixed(2),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopGradeTextStyle,
                width: width,
              ),
              Visibility(
                visible: CellWidgetHelper().shouldBeVisible(
                  3,
                  widget.headers,
                ),
                child: Expanded(
                  child: SizedBox(
                    width: width,
                    child: Container(
                      decoration: Theme.of(context)
                          .extension<EOBrandTheme>()!
                          .heapEmptyBoxContainerDecoration,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: CellWidgetHelper().shouldBeVisible(
                  4,
                  widget.headers,
                ),
                child: Expanded(
                  flex: 3,
                  child: SizedBox(
                    width: width * 3,
                    child: Container(
                      decoration: Theme.of(context)
                          .extension<EOBrandTheme>()!
                          .heapEmptyBoxContainerDecoration,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: CellWidgetHelper().shouldBeVisible(
                  5,
                  widget.headers,
                ),
                child: Expanded(
                  child: SizedBox(
                    width: width,
                    child: Container(
                      decoration: Theme.of(context)
                          .extension<EOBrandTheme>()!
                          .heapEmptyBoxContainerDecoration,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: CellWidgetHelper().shouldBeVisible(
                  6,
                  widget.headers,
                ),
                child: Expanded(
                  flex: 5,
                  child: SizedBox(
                    width: width * 5,
                    child: Container(
                      decoration: Theme.of(context)
                          .extension<EOBrandTheme>()!
                          .heapEmptyBoxContainerDecoration,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: CellWidgetHelper().shouldBeVisible(
                  7,
                  widget.headers,
                ),
                child: Expanded(
                  flex: 5,
                  child: SizedBox(
                    width: width * 5,
                    child: Container(
                      decoration: Theme.of(context)
                          .extension<EOBrandTheme>()!
                          .heapEmptyBoxContainerDecoration,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: CellWidgetHelper().shouldBeVisible(
                  8,
                  widget.headers,
                ),
                child: Expanded(
                  flex: 4,
                  child: SizedBox(
                    width: width * 4,
                    child: Container(
                      decoration: Theme.of(context)
                          .extension<EOBrandTheme>()!
                          .heapEmptyBoxContainerDecoration,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: CellWidgetHelper().shouldBeVisible(
                  9,
                  widget.headers,
                ),
                child: Expanded(
                  flex: 5,
                  child: SizedBox(
                    width: width * 5,
                    child: Container(
                      decoration: Theme.of(context)
                          .extension<EOBrandTheme>()!
                          .heapEmptyBoxContainerDecoration,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: CellWidgetHelper().shouldBeVisible(
                  10,
                  widget.headers,
                ),
                child: Expanded(
                  child: SizedBox(
                    width: width,
                    child: Container(
                      decoration: Theme.of(context)
                          .extension<EOBrandTheme>()!
                          .heapEmptyBoxContainerDecoration,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: widgets,
    );
  }
}
