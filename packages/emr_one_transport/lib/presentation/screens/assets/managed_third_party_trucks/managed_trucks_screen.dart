import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/trucks/truck_filter_controller.dart';
import 'package:emr_one_transport/data/dataSources/truck_data_source.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/trucks/transport_truck.dart';
import 'package:emr_one_transport/data/services/truck_service.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManagedTrucksScreen extends StatefulWidget with OmniSearch {
  const ManagedTrucksScreen({super.key});

  @override
  State<ManagedTrucksScreen> createState() => _ManagedTrucksScreenState();
}

class _ManagedTrucksScreenState extends State<ManagedTrucksScreen> {
  late EmrGridController<TransportTruck> _gridController;
  late EmrQueryLayoutController<TransportTruck> _queryLayoutController;
  late TruckFilterController filterController;
  late TruckDataSource gridDataSource;
  late TruckService truckService;
  late ValueNotifier<bool> _hasSelectionNotifier;

  @override
  void initState() {
    super.initState();
    _hasSelectionNotifier = ValueNotifier(false);
    truckService = Provider.of<TruckService>(context, listen: false);

    _queryLayoutController =
        Provider.of<EmrQueryLayoutController<TransportTruck>>(
          context,
          listen: false,
        );

    filterController = Provider.of<TruckFilterController>(
      context,
      listen: false,
    );
    filterController.initilize(StringConstants.managedTrucks);

    gridDataSource = _queryLayoutController.dataSource as TruckDataSource;
    gridDataSource.regeneratePayload(isInternalTruck: false);

    _gridController = EmrGridController<TransportTruck>(
      data: _queryLayoutController.dataSource.data,
      rowSelectionMode:
          context.userHasPermission(UserPermissions.managedTrucksWrite)
          ? RowSelectionMode.multiple
          : RowSelectionMode.none,
      showLoader: _queryLayoutController.dataSource.loading,
      onSelectedRowsChanged: (selectedRows) {
        _hasSelectionNotifier.value = selectedRows.isNotEmpty;
      },
    );

    _queryLayoutController = EmrQueryLayoutController<TransportTruck>(
      dataSource: gridDataSource,
      filterController: filterController,
      actionsBuilder: (context) =>
          context.userHasPermission(UserPermissions.managedTrucksWrite)
          ? Row(
              children: [
                FilledButton(
                  onPressed: () =>
                      context.goNamed(RoutingPathName.addManagedTruck),
                  style: EmrButtonStyles.cta(),
                  child: Text(context.l10n.addTruck),
                ),
                _buildDeleteButton(),
              ],
            )
          : const SizedBox.shrink(),
    );

    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout<TransportTruck>.grid(
      queryLayoutController: _queryLayoutController,
      gridController: _gridController,
      columns: _getColumns,
    );
  }

  Widget _buildDeleteButton() {
    return ValueListenableBuilder<bool>(
      valueListenable: _hasSelectionNotifier,
      builder: (context, hasSelection, _) {
        return IconButton(
          onPressed: hasSelection
              ? () async {
                  await EmrDialog.modal<String?>(
                    context,
                    titleText: context.l10n.confirmDelete,
                    builder: (_) => Padding(
                      padding: const EdgeInsets.only(
                        top: Insets.gutter,
                        right: Insets.gutter * 3,
                        bottom: Insets.gutter,
                      ),
                      child: Text(
                        '${context.l10n.deleteSelectionMsg}'
                        ' ${_gridController.selectedRows.value.length}'
                        ' row(s) ?',
                      ),
                    ),
                    acceptLabel: context.l10n.delete,
                    isDanger: true,
                    onAccept: () async {
                      final response = await truckService.deleteTrucks(
                        _gridController.selectedRows.value
                            .map((e) => e.id.toString())
                            .toList(),
                      );
                      if (context.mounted) {
                        await (response.isSuccess
                            ? SuccessAlertWidget.showSuccessMessage(
                                context,
                                context.l10n.truckDeletedSuccessfully,
                              ).then(
                                (_) => {
                                  if (context.mounted)
                                    {Navigator.of(context).pop()},
                                  gridDataSource.refresh(),
                                },
                              )
                            : ErrorAlertWidget.showErrorMessage(
                                context,
                                response.errorMessage.isNotEmpty
                                    ? response.errorMessage
                                    : context.l10n.errorAndTryAgainMsg,
                              ));
                      }
                    },
                  );
                }
              : null,
          icon: const Icon(Icons.delete),
        );
      },
    );
  }

  List<EmrGridColumn<TransportTruck>> get _getColumns => [
    columnBuilder(
      headerText: context.l10n.assetCode,
      cellText: (rowItem) => rowItem.assetNumber ?? '-',
    ),
    columnBuilder(
      headerText: context.l10n.vrm,
      cellText: (rowItem) => rowItem.vrm ?? '-',
    ),
    columnBuilder(
      headerText: context.l10n.friendlyName,
      cellText: (rowItem) => rowItem.friendlyName ?? '-',
    ),
    columnBuilder(
      headerText: context.l10n.haulier,
      cellText: (rowItem) => rowItem.haulierCode ?? '-',
    ),
    columnBuilder(
      headerText: context.l10n.assetType,
      cellText: (rowItem) => rowItem.truckType ?? '-',
    ),
    columnBuilder(
      headerText: context.l10n.status,
      cellText: (rowItem) => rowItem.lifecycleStatus != null
          ? ManagedTruckStatus.values
                .firstWhere((e) => e.apiValue == rowItem.lifecycleStatus)
                .toString()
          : '-',
    ),
  ];

  EmrGridColumn<TransportTruck> columnBuilder({
    required String headerText,
    required String Function(TransportTruck) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 120,
  }) {
    final theme = Theme.of(context);
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
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (getSortIcon != null) getSortIcon.call(),
            ],
          ),
        ),
      ),
      cellBuilder: (TransportTruck rowItem) =>
          headerText == context.l10n.assetCode
          ? Row(
              children: [
                SelectableText.rich(
                  TextSpan(
                    text: rowItem.assetNumber,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.tertiary,
                    ),
                    recognizer:
                        context.userHasPermission(
                          UserPermissions.managedTrucksWrite,
                        )
                        ? (TapGestureRecognizer()
                            ..onTap = () {
                              context.goNamed(
                                RoutingPathName.editManagedTruck,
                                params: {
                                  'truckId': rowItem.id?.split('/').last ?? '-',
                                },
                              );
                            })
                        : null,
                  ),
                ),
              ],
            )
          : SelectableText(cellText.call(rowItem)),
    );
  }
}
