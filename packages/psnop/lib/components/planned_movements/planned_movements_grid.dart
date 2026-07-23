import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:psnop/components/planned_movements/filter/planned_movements_filter_controller.dart';
import 'package:psnop/components/planned_movements/planned_movements_grid_controller.dart';
import 'package:psnop/enums/movement_type.dart';
import 'package:psnop/enums/transport_status.dart';
import 'package:psnop/models/planned_movements/planned_movements.dart';

class PlannedMovementsGrid extends StatefulWidget {
  PlannedMovementsGrid({
    required this.config,
    required this.controller,
    required this.filterController,
    super.key,
  });
  static const double headerHeight = 40;

  final PlannedMovementsGridController controller;

  final AppConfig config;
  final PlannedMovementsFilterController filterController;

  final ScrollController scrollController = ScrollController();

  @override
  State<PlannedMovementsGrid> createState() => _PlannedMovementsGridState();
}

class _PlannedMovementsGridState extends State<PlannedMovementsGrid> {
  @override
  void dispose() {
    widget.controller.dispose();
    widget.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height -
            (PlannedMovementsGrid.headerHeight + (2 * Insets.gutter)) -
            (100 + 8) /*filter height*/,
      ),
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: EmrFilter(
              controller: widget.controller.filterController,
            ),
          ),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: widget.controller.busy,
              builder: (BuildContext context, value, Widget? child) {
                return ValueListenableBuilder(
                  valueListenable: widget.controller.gridController.data,
                  builder: (BuildContext context2, value2, Widget? child2) {
                    return Stack(
                      children: [
                        if (widget.controller.busy.value)
                          const Center(child: CircularProgressIndicator()),
                        if (widget.controller.noFilters)
                          Center(
                            child: Text(
                              context.l10n.psnopDepotMissingSelectionMessage,
                            ),
                          ),
                        if (!widget.controller.busy.value &&
                            !widget.controller.noFilters &&
                            widget.controller.gridController.data.value.isEmpty)
                          Center(child: Text(context.l10n.noResults)),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: _grid(context2),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _grid(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    final theme = Theme.of(context);
    final shortDateFormatter = DateFormat.yMd(
      Localizations.localeOf(context).toLanguageTag(),
    );

    return Stack(
      children: [
        Positioned(
          child: RefreshIndicator(
            onRefresh: () => widget.controller.searchChanged(),
            child: EmrGrid<PlannedMovements>(
              controller: widget.controller.gridController,
              verticalScrollController: widget.scrollController,
              onRowTapped: (row) {
                context.goNamed(
                  NamedRoutes.psnopDepotPosition,
                  queryParams: {'depotNos': row.depot, 'grades': row.grade},
                );
              },
              columns: [
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    '',
                    style: headerTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  cellBuilder: (rowItem) {
                    if (rowItem.transportStatus != null &&
                            rowItem.transportStatus?.toLowerCase() ==
                                TransportStatus.confirmed.name ||
                        rowItem.transportStatus?.toLowerCase() ==
                            TransportStatus.ongoing.name ||
                        rowItem.transportStatus?.toLowerCase() ==
                            TransportStatus.completed.name) {
                      return const SizedBox.shrink();
                    } else {
                      return Checkbox(
                        value: widget.controller.selectedRows.contains(rowItem),
                        onChanged: (bool? value) => setState(() {
                          if (value ?? false) {
                            widget.controller.selectedRows.add(rowItem);
                          } else if (value == false) {
                            widget.controller.selectedRows.remove(rowItem);
                          }
                          widget.controller.rowSelected.value =
                              widget.controller.selectedRows.isNotEmpty;
                        }),
                      );
                    }
                  },
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderRef,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.type == MovementType.directSales.name
                        ? 'DS ${rowItem.ref}'
                        : rowItem.type == MovementType.instructionsToMove.name
                            ? 'ITM ${rowItem.ref}'
                            : 'RTM ${rowItem.ref}',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderGrade,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.grade,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderHeap,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.heap,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderDestination,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.destination ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderParty,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.party ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderContract,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.contract ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderTransport,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.transport ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderPriority,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.priority != null ? rowItem.priority.toString() : '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderOnHold,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.onHold != null
                        ? (rowItem.onHold!
                            ? context.l10n.psnopYes
                            : context.l10n.psnopNo)
                        : context.l10n.psnopNo,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderLoads,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.loads != null ? rowItem.loads.toString() : '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderTonnes,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.tonnes.toStringAsFixed(2),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderDueFrom,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.dueFrom == null
                        ? ''
                        : shortDateFormatter.format(rowItem.dueFrom!),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderDueBy,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.dueTo == null
                        ? ''
                        : shortDateFormatter.format(rowItem.dueTo!),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderRequestedDate,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => GestureDetector(
                    onTap: rowItem.transportStatus ==
                            context.l10n.psnopTransportStatusConfirmed
                        ? null
                        : () async {
                            final pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(9999),
                              initialEntryMode: DatePickerEntryMode.input,
                            );
                            if (pickedDate != null &&
                                pickedDate != rowItem.requestedDate) {
                              // ignore: use_build_context_synchronously
                              await updateDate(rowItem, pickedDate, context);
                            }
                          },
                    child: Text(
                      rowItem.requestedDate == null
                          ? ''
                          : shortDateFormatter.format(rowItem.requestedDate!),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderTransportStatus,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.transportStatus ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderTransportPlanId,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.transportPlanId != null
                        ? rowItem.transportPlanId.toString()
                        : '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderType,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.type == MovementType.directSales.name
                        ? context.l10n.psnopMovementTypeDirectSales
                        : rowItem.type == MovementType.instructionsToMove.name
                            ? context.l10n.psnopMovementTypeInstructionsToMove
                            : rowItem.type == MovementType.route.name
                                ? context.l10n.psnopMovementTypeRouteToMarket
                                : '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.psnopTableHeaderComments,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (PlannedMovements rowItem) => Text(
                    rowItem.comments ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (widget.config.isWeb)
          Positioned(
            bottom: Insets.gutter,
            right: Insets.gutter,
            child: Tooltip(
              message: context.l10n.reloadResults,
              child: FloatingActionButton(
                backgroundColor: theme.colorScheme.surface,
                onPressed: () => widget.controller.searchChanged(),
                child: const Icon(
                  Icons.refresh,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Future<void> updateDate(
    PlannedMovements rowItem,
    DateTime pickedDate,
    BuildContext context,
  ) async {
    widget.controller.busy.value = true;
    final isSuccessful =
        await widget.controller.updateRequestedDate([rowItem], pickedDate);
    widget.controller.busy.value = false;
    if (context.mounted) {
      widget.controller.showSnackBarResponse(
        context: context,
        message: isSuccessful
            ? context.l10n.psnopPlannedMovementsRequestedDateUpdateSuccess
            : context.l10n.psnopPlannedMovementsRequestedDateUpdateFailure,
        color: isSuccessful ? null : Theme.of(context).colorScheme.error,
      );
    }
    if (isSuccessful) {
      await widget.controller.searchChanged();
    }
  }
}
