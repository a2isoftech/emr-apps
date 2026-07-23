import 'dart:async';

import 'package:emr_core_api/extensions/extensions.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

mixin CreateEditStockTakeMixin<T extends StatefulWidget> on State<T> {
  late final Signal<String> stockTakeName;
  late final Signal<String> yardCode;
  late final Signal<String> conductor;
  late final Signal<String> conductedBy;
  late final Signal<String> productFamily;
  late final Signal<bool> isRoutineCheck;

  CreateStockTakeController get controller;
  StockTake get stockTake;

  @mustCallSuper
  void initStockTake({required bool isCreateRequest}) {
    stockTakeName = signal(stockTake.name);
    yardCode = signal(stockTake.yardCode);
    conductor = signal(stockTake.conductor ?? '');
    conductedBy = signal(stockTake.conductedBy);
    productFamily = signal(stockTake.productFamily);
    isRoutineCheck = signal(stockTake.isRoutineCheck);

    controller.init(stockTake, isCreateRequest: isCreateRequest);
    controller.basicDetailsController.init(
      stockTakeName.value,
      yardCode.value,
      conductor.value,
      conductedBy.value,
      stockTake.id,
      productFamily.value,
      isRoutineCheck: isRoutineCheck.value,
      originator: stockTake.originator,
    );
  }

  void showEditDialog({VoidCallback? onAfterSave}) {
    CreateEditStocktakeDetails.show(
      context,
      controller: controller.basicDetailsController,
      onSave: ({bool saved = false}) {
        if (saved) {
          setState(() {
            conductedBy.value =
                controller.basicDetailsController.selectedUser.value!.key;
            conductor.value =
                controller.basicDetailsController.selectedUser.value!.name;
            stockTakeName.value =
                controller.basicDetailsController.nameInputValue.value;
            yardCode.value =
                controller.basicDetailsController.selectedYard.value!.key;
            productFamily.value = controller
                .basicDetailsController.selectedProductFamily.value!.key;
            isRoutineCheck.value =
                controller.basicDetailsController.routineCheck.value;
          });
          onAfterSave?.call();
        }
      },
    );
  }

  void removeLocation(StocktakeLocation location) {
    controller.locationDataSource.removeFromSelection(location);
    controller.locationDataSource.allSelectedLocations.value
        .removeWhere((l) => l.id == location.id);
    controller.locationDataSource.allSelectedLocations.value = [
      ...controller.locationDataSource.allSelectedLocations.value,
    ];
  }

  Future<void> submitStockTake(
    BuildContext context, {
    required bool isEdit,
    required bool isClone,
  }) async {
    controller.showLoader.value = true;
    var isSnapshotCreated = false;

    String? currencyCode = stockTake.currencyCode;
    if (stockTake.id == null) {
      final territory = await context.coreApi.referenceData.getTerritoryById(
        'territories/${controller.basicDetailsController.territoryCode}',
      );
      currencyCode = territory.currencyCode;

      if (territory.currencyCode == null) {
        controller.showLoader.value = false;
        if (!context.mounted) return;
        await EmrModal.showMessageBar(
          context,
          context.l10n.currencyNotLoaded,
          messageType: MessageBarTypes.error,
        );
        return;
      }
    }
    if (!context.mounted) return;
    final result =
        await controller.submit(context, currencyCode!, isClone: isClone);

    if (result.success) {
      final snapshotResult = await controller.stocktakeService.takeSnapshots(
        id: result.data!,
        overrideExisting: true,
      );
      isSnapshotCreated = snapshotResult.success;
    }
    controller.showLoader.value = false;

    if (!context.mounted) return;

    if (isSnapshotCreated) {
      unawaited(
        EmrModal.showMessageBar(
          context,
          isEdit
              ? context.l10n.successfullySaved
              : context.l10n.stockTakeCreatedMessage,
        ),
      );
      Navigator.of(context).pop();
    } else if (result.success && !isSnapshotCreated) {
      unawaited(
        EmrModal.showMessageBar(
          context,
          isEdit
              ? context.l10n.successfullySaved
              : context.l10n.snapshotFailureWarning,
          messageType: MessageBarTypes.warning,
        ),
      );
      Navigator.of(context).pop();
    } else {
      unawaited(
        EmrModal.showMessageBar(
          context,
          HelperMethods.getErrorMessage(context, result),
          messageType: MessageBarTypes.error,
        ),
      );
    }
  }
}
