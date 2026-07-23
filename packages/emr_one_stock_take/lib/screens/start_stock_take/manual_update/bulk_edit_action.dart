import 'package:emr_core_api/services/user_access_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:flutter/material.dart';

class EditIntent extends Intent {
  const EditIntent({required this.context});

  final BuildContext context;
}

class EditAction extends EmrAction<EditIntent> {
  EditAction({
    required this.controller,
    required super.createIntent,
    required this.userAccessService,
    required this.weightController,
    required this.stockTake,
    super.label = 'Edit',
    super.controlType = EmrActionControlType.iconButton,
    super.isPrimary = true,
    super.icon = Icons.edit,
    bool enabled = false,
  }) {
    super.actionEnabled.value = enabled;
  }

  final EmrQueryLayoutController<EditableStockLocations> controller;
  final UserAccessService userAccessService;
  final LocationWeightController weightController;
  final StockTake stockTake;

  @override
  Future<Object?> invoke(
    covariant EditIntent intent, [
    BuildContext? context,
  ]) async {
    if (context == null) {
      return null;
    }

    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.bulkUpdateWeights,
      builder: (BuildContext dialogContext) => WeightsBulkUpdate(
        userAccessService: userAccessService,
        stockTakeCreatedDate:
            stockTake.locations.first.snapshot?.snapshotDate ??
                stockTake.createdDate,
        controller: weightController,
      ),
      onAccept: () async {
        Navigator.of(context, rootNavigator: true).pop();
        final user = weightController.bulkUpdateWeighedBy.value;
        final dateTime = weightController.bulkUpdateWeighedDateTime.value;

        for (final item in controller.dataSource.selection.value) {
          final updateItem = controller.dataSource.data.value
              .firstWhere((s) => s.id == item.id);
          if (user != null) {
            updateItem.weighedBy.value = SelectOption(
              key: user.id,
              name: user.name,
            );
          }
          if (dateTime != null) {
            updateItem.weighedDate.value = dateTime;
          }
        }
        controller.dataSource.selection.value = [];
      },
    );

    return null;
  }
}
