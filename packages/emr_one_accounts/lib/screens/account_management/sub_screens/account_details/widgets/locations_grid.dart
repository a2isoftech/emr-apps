import 'dart:async';
import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_location/controllers/manage_location_controller.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_location/manage_location_screen.dart';
import 'package:emr_one_accounts/screens/account_management/widgets/record_deleter.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class LocationsGrid extends StatefulWidget {
  const LocationsGrid({
    required this.account,
    required this.controller,
    required this.accountService,
    super.key,
  });

  final Account account;
  final ManageLocationController controller;
  final AccountService accountService;

  @override
  State<LocationsGrid> createState() => _LocationsGridState();
}

class _LocationsGridState extends State<LocationsGrid> {
  late EmrGridController<Location> gridController;
  late final locationsFormKey = GlobalKey<FormState>();
  final Map<String, ManageLocationController> _deleteControllers = {};

  ManageLocationController _getDeleteController(Location item) {
    return _deleteControllers.putIfAbsent(
      item.code ?? '',
      () => ManageLocationController(
        coreApiService: widget.controller.coreApiService,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    gridController = EmrGridController<Location>(
      data: ValueNotifier(widget.account.locations),
    );
    widget.controller.gridRefreshSignal.addListener(_refreshGridData);
  }

  @override
  void didUpdateWidget(covariant LocationsGrid oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.gridRefreshSignal.removeListener(_refreshGridData);
      widget.controller.gridRefreshSignal.addListener(_refreshGridData);
    }
    gridController.data.value = widget.account.locations;
  }

  @override
  void dispose() {
    for (final deleteController in _deleteControllers.values) {
      deleteController.dispose();
    }
    widget.controller.gridRefreshSignal.removeListener(_refreshGridData);
    super.dispose();
  }

  Future<void> _refreshGridData() async {
    gridController.showLoader.value = true;
    final result = await context.coreApi.accountService.getAccountInfo(
      widget.account.id ?? '',
      forceLoad: true,
    );
    final newAccount = result.$1;
    if (newAccount != null && mounted) {
      gridController.data.value = newAccount.locations;
    }
    if (mounted) {
      gridController.showLoader.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<Location>>(
      valueListenable: gridController.data,
      builder: (context, locations, _) {
        final height = locations.isEmpty
            ? accountGridEmptyHeight
            : min(locations.length + 1, accountGridMaxVisibleRows)
            * accountGridRowHeight;

        return SizedBox(
          height: height,
          child: EmrGrid<Location>(
      controller: gridController,
      alternateBackgroundRowColour: true,
      pinnedRowCount: 1,
      rowHeight: (rowIndex) => accountGridRowHeight,
      noRecordsMessage: Text(context.l10n.noRecordsMessage),
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.locationCode),
          cellBuilder: (item) => Text(item.code ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.name),
          cellBuilder: (item) => Text(item.name ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.address1),
          cellBuilder: (item) => Text(item.address.address1 ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.postCode),
          cellBuilder: (item) => Text(item.address.postCode ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
          cellBuilder: (item) => Row(
            children: [
              Builder(
                builder: (context) {
                  final deleteController = _getDeleteController(item);
                  return RecordDeleter(
                    controller: deleteController,
                    entityName: context.l10n.location.toLowerCase(),
                    showIcon: true,
                    onPreDelete: () {
                      deleteController.account = widget.account;
                      deleteController.setLocation(item);
                    },
                    onDelete:
                        ({required bool success, required String error}) async {
                          if (!success) {
                            await EmrModal.showMessageBar(
                              context,
                              error,
                              messageType: MessageBarTypes.error,
                            );
                          } else {
                            _deleteControllers.remove(item.code ?? '')
                                ?.dispose();
                            widget.account.locations.remove(item);
                            await EmrModal.showMessageBar(
                              context,
                              context.l10n.locationDeletedMsg,
                            );
                            widget.controller.reset();
                          }
                        },
                  );
                },
              ),
            ],
          ),
        ),
      ],
      onRowTapped: (location) => EmrDialog.modal<void>(
        context,
        titleText: context.l10n.editLocation,
        acceptLabel: context.l10n.save,
        builder: (context) => ScaffoldMessenger(
          child: Builder(
            builder: (context) {
              widget.controller.showErrorMessage.value = '';

              return SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.6,
                child: ManageLocationScreen(
                  accountId: widget.account.id!,
                  locationCode: location.code,
                  manageLocationController: widget.controller,
                  accountService: widget.accountService,
                  locationsFormKey: locationsFormKey,
                ),
              );
            },
          ),
        ),
        onAccept: () async {
          if (!(locationsFormKey.currentState?.validate() ?? false)) {
            widget.controller.isFormValid.value = false;
            return;
          }
          final (success, error) = await widget.controller.update();
          if (success == false) {
            widget.controller.showErrorMessage.value = error;
            await EmrModal.showMessageBar(
              context,
              error,
              messageType: MessageBarTypes.error,
            );
            return;
          }
          widget.controller.reset();
          if (context.mounted) {
            context.pop();
            unawaited(
              EmrModal.showMessageBar(
                context,
                context.l10n.locationUpdateSuccessfully,
              ),
            );
            widget.controller.gridRefreshSignal.value++;
          }
        },
      ),
          ),
        );
      },
    );
  }
}
