import 'dart:async';

import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/trucks/internal_truck_controller.dart';
import 'package:emr_one_transport/data/controllers/trucks/truck_filter_controller.dart';
import 'package:emr_one_transport/data/dataSources/truck_data_source.dart';
import 'package:emr_one_transport/data/models/trucks/transport_truck.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:emr_one_transport/data/services/vor_service.dart';
import 'package:emr_one_transport/presentation/screens/assets/internal_trucks/add_edit_vor_schedule.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InternalTrucksScreen extends StatefulWidget with OmniSearch {
  const InternalTrucksScreen({super.key});

  @override
  State<InternalTrucksScreen> createState() => _InternalTrucksScreenState();
}

class _InternalTrucksScreenState extends State<InternalTrucksScreen> {
  final addVORformKey = GlobalKey<FormState>();
  late EmrGridController<TransportTruck> _gridController;
  late EmrQueryLayoutController<TransportTruck> _queryLayoutController;
  late TruckFilterController filterController;
  late TruckDataSource gridDataSource;
  late final VORService vorService;
  late final CommonService commonService;
  late InternalTruckController _internalTruckController;
  late final ValueNotifier<bool> _hasSelectionNotifier;

  @override
  void initState() {
    super.initState();
    _hasSelectionNotifier = ValueNotifier(false);
    _internalTruckController = Provider.of<InternalTruckController>(
      context,
      listen: false,
    );
    _initialize();
    vorService = Provider.of<VORService>(context, listen: false);
    commonService = Provider.of<CommonService>(context, listen: false);

    _queryLayoutController =
        Provider.of<EmrQueryLayoutController<TransportTruck>>(
          context,
          listen: false,
        );

    filterController = Provider.of<TruckFilterController>(
      context,
      listen: false,
    );
    filterController.initilize(StringConstants.internalTrucks);

    gridDataSource = _queryLayoutController.dataSource as TruckDataSource;
    gridDataSource.regeneratePayload(isInternalTruck: true);
    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };

    _gridController = EmrGridController<TransportTruck>(
      data: _queryLayoutController.dataSource.data,
      rowSelectionMode:
          context.userHasPermission(UserPermissions.internalTrucksWrite)
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
      actionsBuilder: (context) => _buildActions(),
      menuChildrenBuilder: (context) => _buildMenuChildren(),
    );
  }

  Widget _buildActions() {
    final controller = context.read<EmrOneNotificationController>();
    if (!context.userHasPermission(UserPermissions.internalTrucksWrite)) {
      return const SizedBox.shrink();
    }
    return ValueListenableBuilder<bool>(
      valueListenable: _hasSelectionNotifier,
      builder: (context, hasSelection, _) {
        return FilledButton(
          onPressed: hasSelection
              ? () {
                  final selectedVrms = _gridController.selectedRows.value
                      .map((truck) => truck.vrm)
                      .whereType<String>()
                      .toList();

                  EmrDialog.modal<bool>(
                    context,
                    titleText: context.l10n.addVorSchedule,
                    builder: (_) => SizedBox(
                      height: 430,
                      width: 500,
                      child: AddEditVorSchedule(
                        internalTruckController: _internalTruckController,
                        trucksCount: selectedVrms.length,
                        key: addVORformKey,
                      ),
                    ),
                    onAccept: () async {
                      final validationMsg = DateHelper.validateEndDate(
                        _internalTruckController.startDate.value,
                        _internalTruckController.endDate.value,
                        compareTime: true,
                      );
                      if (validationMsg != null) {
                        controller.showNotification(
                          EmrOneErrorNotification(
                            title: context.l10n.error,
                            description: validationMsg,
                          ),
                        );
                      } else if (addVORformKey.currentState?.validate() ??
                          false == true) {
                        final request = _internalTruckController
                            .buildVorScheduleRequest(null);

                        final failedVrms = <String>[];
                        var errorMsg = '';

                        for (final vrm in selectedVrms) {
                          final response = await _internalTruckController
                              .createVORSchedules(vrm, [request]);

                          if (!response.isSuccess) {
                            failedVrms.add(vrm);
                            errorMsg = response.errorMessage;
                          }
                        }

                        if (!context.mounted) return;

                        if (failedVrms.isEmpty) {
                          await SuccessAlertWidget.showSuccessMessage(
                            context,
                            context.l10n.vorCreatedSuccessfully,
                          );
                          if (context.mounted) {
                            Navigator.of(context).pop(true);
                          }
                        } else {
                          await ErrorAlertWidget.showErrorMessage(
                            context,
                            'Failed for VRMs: ${failedVrms.join(', ')}\n'
                            '$errorMsg',
                          );
                        }
                      } else {
                        controller.showNotification(
                          EmrOneErrorNotification(
                            title: context.l10n.error,
                            description: context.l10n.requiredFieldsErrorMsg,
                          ),
                        );
                      }
                    },
                  ).then((result) {
                    if (result ?? false) {
                      _gridController.selectedRows.value = [];
                      _queryLayoutController.dataSource.refresh();
                    }
                  });
                }
              : null,
          style: EmrButtonStyles.cta(),
          child: Text(context.l10n.addVorSchedule),
        );
      },
    );
  }

  List<Widget> _buildMenuChildren() {
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout<TransportTruck>.grid(
      queryLayoutController: _queryLayoutController,
      gridController: _gridController,
      columns: _getColumns,
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
      headerText: context.l10n.dispatchYard,
      cellText: (rowItem) => rowItem.dispatchYard ?? '-',
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
      cellText: (rowItem) => rowItem.lifecycleStatus ?? '-',
    ),
    columnBuilder(
      headerText: context.l10n.condition,
      cellText: (rowItem) => rowItem.condition ?? '-',
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
      cellBuilder: (TransportTruck rowItem) =>
          headerText == context.l10n.assetCode
          ? Row(
              children: [
                SelectableText.rich(
                  TextSpan(
                    text: rowItem.assetNumber,
                    style: TextStyle(color: theme.colorScheme.tertiary),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.goNamed(
                          RoutingPathName.editTruck,
                          params: {
                            'truckId': rowItem.id?.split('/').last ?? '-',
                          },
                        );
                      },
                  ),
                ),
              ],
            )
          : SelectableText(cellText.call(rowItem)),
    );
  }

  Future<void> _initialize() async {
    await _internalTruckController.initialize(null);
  }
}
