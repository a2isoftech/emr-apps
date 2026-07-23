import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/constants.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/widgets/basic_details/basic_details_controller.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/widgets/basic_details/basic_details_form.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class CreateEditStocktakeDetails extends StatelessWidget {
  const CreateEditStocktakeDetails({
    required this.controller,
    super.key,
  });

  final BasicDetailsController controller;

  static Future<void> show(
    BuildContext context, {
    required BasicDetailsController controller,
    void Function({bool saved})? onSave,
  }) {
    return EmrDialog.modal(
      context,
      titleText: controller.stockTakeId == null || controller.isClone
          ? context.l10n.createStockTake
          : context.l10n.editStockTake,
      builder: (ctx) => Material(
        color: Colors.transparent,
        child: CreateEditStocktakeDetails(
          controller: controller,
        ),
      ),
      onAccept: () async {
        await handleStockTakeSave(
          context: context,
          controller: controller,
          onSave: onSave,
        );
      },
      acceptLabel: controller.stockTakeId == null
          ? context.l10n.createStocktakeNext
          : context.l10n.update,
    );
  }

  static Future<void> showBottomModal(
    BuildContext context, {
    required BasicDetailsController controller,
    void Function({bool saved})? onSave,
  }) {
    final theme = Theme.of(context);
    return showModalBottomSheet(
      context: context,
      isDismissible: false,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(Insets.gutter)),
      ),
      builder: (context) {
        return AbsorbPointer(
          absorbing: controller.isLoading.watch(context),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                  top: Insets.gutter,
                  left: Insets.gutter,
                  right: Insets.gutter,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        context.l10n.createStockTake,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: Insets.gutter / 2),
                      CreateEditStocktakeDetails(controller: controller),
                      const SizedBox(height: Insets.gutter),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: () async {
                            await handleStockTakeSave(
                              context: context,
                              controller: controller,
                              onSave: onSave,
                            );
                          },
                          style: EmrButtonStyles.cta(),
                          child: Watch(
                            (_) => Stack(
                              children: [
                                Opacity(
                                  opacity: controller.isLoading.value ? 0 : 1,
                                  child: Text(context.l10n.createStocktakeNext),
                                ),
                                if (controller.isLoading.value == true)
                                  const Positioned.fill(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 16,
                                          height: 16,
                                          child: CircularProgressIndicator
                                              .adaptive(),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 80), // space for FAB
                    ],
                  ),
                ),
              ),

              // FAB Close Button - floating at bottom center
              Positioned(
                bottom: Insets.gutter,
                left: 0,
                right: 0,
                child: Center(
                  child: FloatingActionButton(
                    onPressed: () => Navigator.of(context).pop(),
                    backgroundColor: theme.colorScheme.onSurface,
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.close,
                      size: Insets.gutter * 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kIsWeb ? 400 : MediaQuery.of(context).size.width * 0.7,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.stockTakeDetails,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          if (controller.stockTakeId == null)
            Text(
              context.l10n.createStocktakeInstruction,
            ),
          const Padding(padding: EdgeInsets.only(bottom: Insets.gutter)),
          BasicDetailsForm(
            controller: controller,
          ),
        ],
      ),
    );
  }
}

Future<void> handleStockTakeSave({
  required BuildContext context,
  required BasicDetailsController controller,
  void Function({required bool saved})? onSave,
}) async {
  final isValid = controller.formKey.currentState?.validate() ?? false;
  if (!isValid) return;
  controller.isLoading.value = true;

  // New Stock Take
  if (controller.stockTakeId == null) {
    final territory = await context.coreApi.referenceData
        .getTerritoryById('territories/${controller.territoryCode}');

    if (territory.currencyCode == null) {
      controller.isLoading.value = false;
      if (!context.mounted) return;
      await EmrModal.showMessageBar(
        context,
        context.l10n.currencyNotLoaded,
        messageType: MessageBarTypes.error,
      );

      return;
    }

    final response = await controller.stocktakeService.createStockTake(
      conductedBy: controller.selectedUser.value!.key,
      name: controller.nameInputValue.value,
      yardCode: controller.selectedYard.value!.key,
      productFamily: controller.selectedProductFamily.value!.key,
      isRoutineCheck: !controller.routineCheck.value,
      currencyCode: territory.currencyCode ?? AppConstants.defaultCurrencyCode,
      territory: controller.territoryCode,
      defaultUom: controller.selectedUom,
    );
    controller.isLoading.value = false;

    if (!context.mounted) return;
    if (response.success && response.data != null) {
      onSave?.call(saved: true);
      Navigator.of(context).pop();
      context.goNamed(
        StockTakeNamedRoutes.createStockTake,
        params: {
          'id': HelperMethods.encodedStocktakeId(response.data!),
        },
      );
    } else {
      unawaited(
        EmrModal.showMessageBar(
          context,
          HelperMethods.getErrorMessage(context, response),
          messageType: MessageBarTypes.error,
        ),
      );
    }
  }
  // Cloning stock take
  else if (controller.isClone) {
    controller.isLoading.value = false;
    Navigator.of(context).pop();
    onSave?.call(saved: true);
  }
  // Existing Stock Take (Edit basic details)
  else {
    final stockTakeInput = Input$UpdateBasicDetailsInput(
      stocktakeId: controller.stockTakeId!,
      conductedBy: controller.selectedUser.value!.key,
      name: controller.nameInputValue.value,
      isRoutineCheck: !controller.routineCheck.value,
      defaultUom: controller.selectedUom,
    );
    final response = await controller.stocktakeService
        .updateStockTakeBasicDetails(stockTakeInput);
    controller.isLoading.value = false;

    if (!context.mounted) return;
    Navigator.of(context).pop();
    
    if (response.success) {
      onSave?.call(saved: true);
    } else {
      unawaited(
        EmrModal.showMessageBar(
          context,
          HelperMethods.getErrorMessage(context, response),
          messageType: MessageBarTypes.error,
        ),
      );
    }
  }
}
