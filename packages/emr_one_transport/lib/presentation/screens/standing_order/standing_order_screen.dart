import 'package:collection/collection.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/favourite_filters/favourite_filter_widget.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/standing_order/standing_order_create_edit_controller.dart';
import 'package:emr_one_transport/data/controllers/standing_order/standing_order_filter_controller.dart';
import 'package:emr_one_transport/data/dataSources/standing_order_data.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/standing_order/delete_standing_order_request.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/data/services/standing_order_service.dart';
import 'package:emr_one_transport/presentation/screens/standing_order/edit_standing_order.dart';
import 'package:emr_one_transport/presentation/shared_widgets/app_modal.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/standing_order/confirm_standing_order_deletion_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class StandingOrderScreen extends StatefulWidget with OmniSearch {
  const StandingOrderScreen({super.key});

  @override
  State<StandingOrderScreen> createState() => _StandingOrderScreenState();
}

class _StandingOrderScreenState extends State<StandingOrderScreen> {
  late final EmrGridController<StandingOrder> _gridController;
  late final EmrQueryLayoutController<StandingOrder> _queryLayoutController;
  late StandingOrderFilterController filterController;
  late StandingOrderDataSource gridDataSource;

  @override
  void initState() {
    super.initState();

    _queryLayoutController =
        Provider.of<EmrQueryLayoutController<StandingOrder>>(
          context,
          listen: false,
        );

    _gridController = EmrGridController<StandingOrder>(
      data: _queryLayoutController.dataSource.data,
      rowSelectionMode:
          context.userHasPermission(UserPermissions.standingOrderWrite)
          ? RowSelectionMode.multiple
          : RowSelectionMode.none,
      showLoader: _queryLayoutController.dataSource.loading,
      onSelectedRowsChanged: (selectedRows) {
        _showBottomSheet();
      },
    );

    filterController =
        _queryLayoutController.filterController!
            as StandingOrderFilterController;

    gridDataSource =
        _queryLayoutController.dataSource as StandingOrderDataSource;

    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
      _showBottomSheet();
    };
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final dateFormatter = DateFormat.yMd(
      Localizations.localeOf(context).toLanguageTag(),
    );
    filterController.initialize(dateFormatter);
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _addCreateStandingOrderButton() {
    return FilledButton(
      style: EmrButtonStyles.cta(),
      onPressed: () => context.goNamed(RoutingPathName.createStandingOrder),
      child: Text(context.l10n.createStandingOrder),
    );
  }

  Widget _getFavouritFilterWidget() {
    const moduleName = StringConstants.standingOrderTransportModule;
    return MenuAnchor(
      builder:
          (BuildContext context, MenuController menuController, Widget? child) {
            return IconButton(
              onPressed: () {
                if (menuController.isOpen) {
                  menuController.close();
                } else {
                  menuController.open();
                }
              },
              icon: const Icon(Icons.filter_alt),
              tooltip: context.l10n.favouriteFilters,
            );
          },
      menuChildren: [
        if (_queryLayoutController.filterController != null)
          Column(
            children: [
              FavouriteFilters(
                module: moduleName,
                filterController: _queryLayoutController.filterController!,
                dataSource: _queryLayoutController.dataSource,
              ),
            ],
          ),
      ],
    );
  }

  Widget _addEditButton() {
    final numberOfrowsSelected = _gridController.selectedRows.value.length;
    final selectedRow = numberOfrowsSelected == 1
        ? _gridController.selectedRows.value.first
        : null;
    return Opacity(
      opacity: numberOfrowsSelected == 1 ? 1 : 0.5,
      child: Column(
        children: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: numberOfrowsSelected == 1
                ? () {
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false,
                      builder: (_) => AppModal(
                        height: 800,
                        width: 1500,
                        title:
                            '${context.l10n.editDisplay} '
                            '${context.l10n.standingOrder}  '
                            '#${selectedRow?.standingOrderNumber}',
                        content: EditStandingOrder(
                          standingOrderId: selectedRow?.id ?? '',
                          jobListService: Provider.of<JobListService>(
                            context,
                            listen: false,
                          ),
                          controller:
                              Provider.of<StandingOrderCreateEditController>(
                                context,
                                listen: false,
                              ),
                          gridDataSource,
                        ),
                      ),
                    );
                  }
                : null,
          ),
          Text(
            context.l10n.editDisplay,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _addDeleteButton() {
    final numberOfrowsSelected = _gridController.selectedRows.value.length;
    final selectedRow = numberOfrowsSelected == 1
        ? _gridController.selectedRows.value.first
        : null;
    return Column(
      children: [
        Opacity(
          opacity: numberOfrowsSelected == 1 ? 1 : 0.5,
          child: Column(
            children: [
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed:
                    numberOfrowsSelected == 1 &&
                        selectedRow?.standingOrderNumber != null
                    ? () {
                        final selectedReasonNotifier = ValueNotifier<String?>(
                          null,
                        );

                        final commentNotifier = ValueNotifier<String?>(null);
                        final standingOrder = selectedRow!;
                        final formKey = GlobalKey<FormState>();
                        EmrDialog.modal<void>(
                          context,
                          builder: (buildContext) {
                            return ConfirmStandingOrderDeletionDialog(
                              selectedReasonNotifier: selectedReasonNotifier,
                              commentNotifier: commentNotifier,
                              formkey: formKey,
                              deleteReasons: filterController.deleteReasons
                                  .where((x) => (x.active ?? false) == true)
                                  .map((e) {
                                    return e.description ?? '';
                                  })
                                  .toList(),
                              standingOrder: selectedRow,
                            );
                          },
                          acceptLabel: context.l10n.delete,
                          isDanger: true,
                          onAccept: () async {
                            if (formKey.currentState?.validate() ?? false) {
                              final service = context
                                  .read<StandingOrderService>();

                              //Decide which API to call
                              final hasReason =
                                  selectedReasonNotifier.value
                                      ?.trim()
                                      .isNotEmpty ??
                                  false;

                              final result = hasReason
                                  ? await service.deleteStandingOrderWithJobs(
                                      DeleteStandingOrderRequest(
                                        standingOrder.id!,
                                        selectedReasonNotifier.value!,
                                        commentNotifier.value,
                                      ),
                                    )
                                  : await service.deleteStandingOrder(
                                      standingOrder.id!,
                                    );

                              if (!mounted) return;

                              if (result.isSuccess) {
                                await SuccessAlertWidget.showSuccessMessage(
                                  context,
                                  context.l10n.standingOrderDeletedSuccessfully,
                                );
                                if (!mounted) return;
                                Navigator.of(context).pop();
                                await _queryLayoutController.dataSource
                                    .refresh();
                              } else {
                                await ErrorAlertWidget.showErrorMessage(
                                  context,
                                  result.errorMessage.isNotEmpty
                                      ? result.errorMessage
                                      : context.l10n.errorAndTryAgainMsg,
                                );
                              }
                            }
                          },
                          titleText: context.l10n.confirmDelete,
                        );
                      }
                    : null,
              ),
              Text(
                context.l10n.delete,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void addActions() {
    _queryLayoutController.actionsBuilder = (context) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (context.userHasPermission(UserPermissions.standingOrderWrite))
          _addCreateStandingOrderButton(),
        _getFavouritFilterWidget(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    addActions();
    return Row(children: [Expanded(flex: 6, child: _getGridView())]);
  }

  Widget _getGridView() {
    return EmrQueryLayout<StandingOrder>.grid(
      key: UniqueKey(),
      queryLayoutController: _queryLayoutController,
      gridController: _gridController,
      rowHeight: (rowIndex) => rowIndex >= 0 ? 130 : 40,
      columns: [
        columnBuilder(
          headerText: context.l10n.orderNumber,
          getSortIcon: () =>
              _sortIcon(StringConstants.standingOrderNumber.toLowerCase()),
          onSortTap: () => _queryLayoutController.dataSource.sortBy(
            StringConstants.standingOrderNumber.toLowerCase(),
          ),
          cellText: (rowItem) => rowItem.standingOrderNumber != null
              ? '${rowItem.standingOrderNumber}'
              : StringConstants.noData,
          width: 110,
          alignment: Alignment.center,
        ),
        columnBuilder(
          headerText: context.l10n.customer,
          cellText: (rowItem) => rowItem.customer != null
              ? '${rowItem.customer!.code} - ${rowItem.customer!.name}'
              : StringConstants.noData,
          width: 300,
        ),
        columnBuilder(
          headerText: context.l10n.jobType,
          cellText: (rowItem) =>
              jobTypeFromApiValue(rowItem.jobType ?? '').toString(),
        ),
        columnBuilder(
          headerText: context.l10n.status,
          cellText: (rowItem) => rowItem.status ?? StringConstants.noData,
          width: 130,
        ),
        columnBuilder(
          headerText: context.l10n.frequency,
          cellText: (rowItem) => StringConstants.noData,
          width: 200,
        ),
        columnBuilder(
          headerText: context.l10n.startLocation,
          cellText: (rowItem) => rowItem.startLocation != null
              ? StringHelper.buildAddress(rowItem.startLocation!)
              : StringConstants.noData,
          width: 350,
        ),
        columnBuilder(
          headerText: context.l10n.customerLocation,
          cellText: (rowItem) => rowItem.customerLocation != null
              ? StringHelper.buildAddress(rowItem.customerLocation!)
              : StringConstants.noData,
          width: 350,
        ),
        columnBuilder(
          headerText: context.l10n.endLocation,
          cellText: (rowItem) => rowItem.endLocation != null
              ? StringHelper.buildAddress(rowItem.endLocation!)
              : StringConstants.noData,
          width: 350,
        ),
        columnBuilder(
          headerText: context.l10n.haulier,
          cellText: (rowItem) => rowItem.haulier != null
              ? '${rowItem.haulier!.haulierCode ?? ''} - '
                    '${rowItem.haulier!.haulierName ?? ''}'
              : StringConstants.noData,
          width: 250,
        ),
        columnBuilder(
          headerText: context.l10n.vrm,
          cellText: (rowItem) => rowItem.haulier != null
              ? rowItem.haulier!.vrm ?? StringConstants.noData
              : StringConstants.noData,
          width: 200,
        ),
        columnBuilder(
          headerText: context.l10n.containerPick,
          cellText: (rowItem) => StringConstants.noData,
          width: 350,
        ),
        columnBuilder(
          headerText: context.l10n.containerDrop,
          cellText: (rowItem) => StringConstants.noData,
          width: 350,
        ),
        columnBuilder(
          headerText: context.l10n.dispatcherNotes,
          cellText: (rowItem) => rowItem.dispatcherNotes != null
              ? rowItem.dispatcherNotes.toString()
              : StringConstants.noData,
          width: 300,
        ),
        columnBuilder(
          headerText: context.l10n.officeNotes,
          cellText: (rowItem) => rowItem.officeNotes != null
              ? rowItem.officeNotes.toString()
              : StringConstants.noData,
          width: 300,
        ),
        columnBuilder(
          headerText: context.l10n.lastActionedModified,
          getSortIcon: () =>
              _sortIcon(StringConstants.modifiedDate.toLowerCase()),
          onSortTap: () => _queryLayoutController.dataSource.sortBy(
            StringConstants.modifiedDate.toLowerCase(),
          ),
          cellText: (rowItem) => DateFormat(
            StringConstants.ymdTimeFormat,
          ).format(DateTime.parse(rowItem.modified!.at.toString()).toLocal()),
          width: 200,
        ),
        columnBuilder(
          headerText: context.l10n.effectiveDateDisplay,
          getSortIcon: () =>
              _sortIcon(StringConstants.effectiveDate.toLowerCase()),
          onSortTap: () => _queryLayoutController.dataSource.sortBy(
            StringConstants.effectiveDate.toLowerCase(),
          ),
          cellText: (rowItem) => DateFormat(
            StringConstants.ymdTimeFormat,
          ).format(rowItem.effectiveDate!.toLocal()),
          width: 200,
        ),
        columnBuilder(
          headerText: context.l10n.expiryDate,
          cellText: (rowItem) => rowItem.expiryDate != null
              ? DateFormat(
                  StringConstants.ymdTimeFormat,
                ).format(rowItem.expiryDate!.toLocal())
              : StringConstants.noData,
          width: 200,
        ),
        columnBuilder(
          headerText: context.l10n.createdDate,
          getSortIcon: () =>
              _sortIcon(StringConstants.createdDateSort.toLowerCase()),
          onSortTap: () => _queryLayoutController.dataSource.sortBy(
            StringConstants.createdDateSort.toLowerCase(),
          ),
          cellText: (rowItem) => DateFormat(
            StringConstants.ymdTimeFormat,
          ).format(DateTime.parse(rowItem.created!.at.toString()).toLocal()),
          width: 200,
        ),
      ],
    );
  }

  EmrGridColumn<StandingOrder> columnBuilder({
    required String headerText,
    required String Function(StandingOrder) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 120,
    Alignment alignment = Alignment.centerLeft,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => MouseRegion(
        cursor: onSortTap != null
            ? SystemMouseCursors.click
            : MouseCursor.defer,
        child: GestureDetector(
          onTap: onSortTap,
          child: Row(
            children: [
              Flexible(
                child: Text(
                  headerText,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (getSortIcon != null) getSortIcon.call(),
            ],
          ),
        ),
      ),
      cellBuilder: (StandingOrder rowItem) {
        if (headerText == context.l10n.frequency) {
          return _buildFrequencyCell(rowItem);
        } else if (headerText == context.l10n.containerPick) {
          return _buildContainerCell(rowItem, ContainerActionType.pick);
        } else if (headerText == context.l10n.containerDrop) {
          return _buildContainerCell(rowItem, ContainerActionType.drop);
        } else {
          return SelectableText(cellText.call(rowItem));
        }
      },
      alignment: alignment,
    );
  }

  Widget _buildFrequencyCell(StandingOrder sto) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Insets.gutter / 2,
        bottom: Insets.gutter / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (sto.applicableDays != null) ...[
            ...sto.applicableDays!.map((e) {
              return SelectableText('${sto.repeatPerDay} X $e');
            }),
          ],
          if (sto.recurringFrequency == StringConstants.monthly ||
              sto.recurringFrequency == StringConstants.biWeekly) ...[
            SelectableText('${sto.repeatPerDay} X ${sto.recurringFrequency}'),
          ],
        ],
      ),
    );
  }

  Widget _buildContainerCell(StandingOrder sto, ContainerActionType typeId) {
    final containersInfo = sto.containers;

    if (containersInfo == null) {
      return const Text(StringConstants.noData);
    }

    var startLocnContainers = containersInfo.startLocationContainers;
    final customerLocnContainers = containersInfo.customerLocationContainers;

    if (sto.jobType == JobType.pullAndReturn.apiValue) {
      startLocnContainers = customerLocnContainers;
    }

    return Padding(
      padding: const EdgeInsets.only(
        top: Insets.gutter / 2,
        bottom: Insets.gutter / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (typeId == ContainerActionType.pick &&
              customerLocnContainers != null) ...[
            ...customerLocnContainers.map((e) {
              return SelectableText(e);
            }),
          ],
          if (typeId == ContainerActionType.drop &&
              startLocnContainers != null) ...[
            ...startLocnContainers.map((e) {
              return SelectableText(e);
            }),
          ],
        ],
      ),
    );
  }

  Widget _sortIcon(String field) {
    final value = _queryLayoutController.dataSource.queryScope.sortOrder
        .firstWhereOrNull((element) => element.field == field);

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
        ? const Icon(Icons.arrow_drop_up)
        : const Icon(Icons.arrow_drop_down);
  }

  void _showBottomSheet() {
    showBottomSheet(
      constraints: const BoxConstraints(minWidth: 100, maxWidth: 400),
      elevation: 4,
      backgroundColor: TransportAppColors.bottomSheetModalColor,
      context: context,
      builder: (context) {
        return Visibility(
          visible: _gridController.selectedRows.value.isNotEmpty,
          child: Container(
            height: 96,
            padding: const EdgeInsets.all(Insets.gutter / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: _addEditButton()),
                Expanded(child: _addDeleteButton()),
              ],
            ),
          ),
        );
      },
    );
  }
}
