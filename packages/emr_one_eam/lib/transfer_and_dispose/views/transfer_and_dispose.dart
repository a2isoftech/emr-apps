import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/common/styles.dart';
import 'package:emr_one_eam/eam_asset_search/models/asset.dart';
import 'package:emr_one_eam/models/list_value.dart';
import 'package:emr_one_eam/models/selected_dates.dart';
import 'package:emr_one_eam/transfer_and_dispose/controller/transfer_and_dispose_controller.dart';
import 'package:emr_one_eam/widgets/date_picker_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransferAndDisposeBase extends BasePage {
  TransferAndDisposeBase({this.onActionPerformed, super.controller, super.key});
  final VoidCallback? onActionPerformed;
  @override
  State<StatefulWidget> createState() => TransferAndDisposeBaseState();
}

class TransferAndDisposeBaseState
    extends BasePageState<TransferAndDisposeBase, ITransferDisposeController> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.isBusy,
      builder: (context, value, child) {
        if (value) {
          return const Center(
            child: CircularProgressIndicator(
              color: EmrColours.primaryBlue,
            ),
          );
        } else {
          return ValueListenableBuilder(
            valueListenable: controller.assets,
            builder: (context, value, child) {
              if (value.isEmpty) {
                return const Center(
                  child: Text(
                    '''
Please Navigate to Search and Select assets for Transfer and Disposal''',
                  ),
                );
              }
              return Column(
                children: [
                  getActions(),
                  _getFieldsForAction(),
                  _addAssetGrid(),
                ],
              );
            },
          );
        }
      },
    );
  }

  Widget getTransfer() {
    return Visibility(
      visible: controller.currentAction == AssetActions.transfer,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: _getTransfertToDepo(),
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: _transfertToDepoDate(),
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: _reason(),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                icon: const Icon(Icons.cancel),
                onPressed: () => controller.clearTransferRequest(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getDispose() {
    return Visibility(
      visible: controller.currentAction == AssetActions.dispose,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: _disposalStatus(),
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: _disposalDate(),
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: _reason(),
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ValueListenableBuilder(
                valueListenable: controller.isSold,
                builder: (context, value, child) {
                  return Visibility(
                    visible: value,
                    child: _salesInvoiceNo(),
                  );
                },
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                icon: const Icon(Icons.cancel),
                onPressed: () => controller.clearDisposalRequest(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _reason() => ValueListenableBuilder(
        valueListenable: controller.reasons,
        builder: (context, reasons, child) => TypeAheadFormField<ListValue>(
          autovalidateMode: AutovalidateMode.always,
          onSuggestionSelected: (suggestion) {
            controller.reasonTextEditController.text =
                suggestion.value ?? suggestion.text ?? '';

            controller.setReason(suggestion.value ?? suggestion.text ?? '');
          },
          itemBuilder: (context, itemData) => ListTile(
            title: Text(itemData.text ?? ''),
          ),
          suggestionsCallback: (pattern) async {
            if (reasons.isEmpty) {
              return [];
            }
            return reasons
                .where(
                  (element) =>
                      element.text != null &&
                          element.text!
                              .toLowerCase()
                              .contains(pattern.toLowerCase()) ||
                      (element.value != null &&
                          element.value!
                              .toLowerCase()
                              .contains(pattern.toLowerCase())),
                )
                .toList();
          },
          textFieldConfiguration: TextFieldConfiguration(
            controller: controller.reasonTextEditController,
            decoration: EamDecorations.getCommonTextBoxStyle(
              context,
              context.l10n.reason,
            ),
          ),
        ),
      );

  Widget _salesInvoiceNo() => TextFormField(
        controller: controller.salesInvoiceTextEditController,
        decoration: EamDecorations.getCommonTextBoxStyle(
          context,
          context.l10n.salesInvoiceNumber,
        ),
        onChanged: (value) {
          controller.isValueChanged.value = true;
          controller.setSalesInvoice(value);
        },
      );

  Widget _getTransfertToDepo() => ValueListenableBuilder(
        valueListenable: controller.depots,
        builder: (context, depots, child) => TypeAheadFormField<ListValue>(
          autovalidateMode: AutovalidateMode.always,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '*${context.l10n.required}';
            }
            return null;
          },
          onSuggestionSelected: (suggestion) {
            controller.transfertToDepoTextEditController.text =
                suggestion.value ?? suggestion.text ?? '';
            if (controller
                .transfertEffectiveFromTextEditController.text.isNotEmpty) {
              controller.isValueChanged.value = true;
            }
            controller.setTransferToDepo(
              controller.transfertToDepoTextEditController.text,
            );
          },
          itemBuilder: (context, itemData) => ListTile(
            title: Text(itemData.value ?? ''),
            subtitle: Text(itemData.text ?? ''),
          ),
          suggestionsCallback: (pattern) {
            if (controller.isTransferInProcess.value) {
              return [];
            }
            return depots.where(
              (e) =>
                  e.text!.toLowerCase().contains(
                        pattern.toLowerCase(),
                      ) ||
                  e.value!.toLowerCase().contains(pattern.toLowerCase()),
            );
          },
          textFieldConfiguration: TextFieldConfiguration(
            controller: controller.transfertToDepoTextEditController,
            decoration: EamDecorations.getCommonTextBoxStyle(
              context,
              context.l10n.transferToDepot,
            ),
          ),
        ),
      );

  Widget _transfertToDepoDate() => ValueListenableBuilder(
        valueListenable: controller.isTransferInProcess,
        builder: (context, value, child) {
          return TextFormField(
            autovalidateMode: AutovalidateMode.always,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '*${context.l10n.required}';
              }
              return null;
            },
            controller: controller.transfertEffectiveFromTextEditController,
            decoration: FormStyles.textFieldDecoration(context).copyWith(
              isDense: true,
              contentPadding: const EdgeInsets.all(12),
              labelStyle: const TextStyle(color: Colors.grey),
              labelText: context.l10n.effectiveFrom,
              hintText: context.l10n.effectiveFrom,
              suffixIcon: IconButton(
                icon: const Icon(Icons.calendar_month_outlined),
                onPressed: () async {
                  if (value) {
                    return;
                  }
                  final currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus &&
                      currentFocus.focusedChild != null) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  }
                  await showDialog<SelectedDates>(
                    context: context,
                    builder: (context) => DatePickerWidget(
                      selectedDate: SelectedDates.date(date: DateTime.now()),
                      datePickerType: DatePickerType.date,
                    ),
                    barrierDismissible: false,
                  ).then((result) {
                    if (result is SelectedDates) {
                      setState(() {
                        final activeLocale = Localizations.localeOf(context);
                        controller
                                .transfertEffectiveFromTextEditController.text =
                            DateFormat.yMd(activeLocale.toString())
                                .format(result.date!.toLocal());
                        controller
                            .setTransferEffectiveFrom(result.date!.toUtc());
                        if (controller.transfertToDepoTextEditController.text
                            .isNotEmpty) {
                          controller.isValueChanged.value = true;
                        }
                      });
                    }
                  });
                },
              ),
            ),
            readOnly: true,
          );
        },
      );

  Widget _disposalDate() => ValueListenableBuilder(
        valueListenable: controller.isDisposalInProcess,
        builder: (context, value, child) {
          return TextFormField(
            autovalidateMode: AutovalidateMode.always,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '*${context.l10n.required}';
              }
              return null;
            },
            controller: controller.disposalEffectiveFromTextEditController,
            decoration: FormStyles.textFieldDecoration(context).copyWith(
              isDense: true,
              contentPadding: const EdgeInsets.all(12),
              labelStyle: const TextStyle(color: Colors.grey),
              labelText: context.l10n.effectiveFrom,
              hintText: context.l10n.effectiveFrom,
              suffixIcon: IconButton(
                icon: const Icon(Icons.calendar_month_outlined),
                onPressed: () async {
                  if (value) {
                    return;
                  }
                  final currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus &&
                      currentFocus.focusedChild != null) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  }
                  await showDialog<SelectedDates>(
                    context: context,
                    builder: (context) => DatePickerWidget(
                      selectedDate: SelectedDates.date(date: DateTime.now()),
                      datePickerType: DatePickerType.date,
                    ),
                    barrierDismissible: false,
                  ).then((result) {
                    if (result is SelectedDates) {
                      setState(() {
                        final activeLocale = Localizations.localeOf(context);
                        controller
                                .disposalEffectiveFromTextEditController.text =
                            DateFormat.yMd(activeLocale.toString())
                                .format(result.date!.toLocal());
                        controller
                            .setDisposalEffectiveFrom(result.date!.toUtc());
                        if (controller
                            .disposalStatusTextEditController.text.isNotEmpty) {
                          controller.isValueChanged.value = true;
                        }
                      });
                    }
                  });
                },
              ),
            ),
            readOnly: true,
          );
        },
      );

  Widget _disposalStatus() => ValueListenableBuilder(
        valueListenable: controller.disposalStatuses,
        builder: (context, statuses, child) => TypeAheadFormField<ListValue>(
          autovalidateMode: AutovalidateMode.always,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '*${context.l10n.required}';
            }
            return null;
          },
          onSuggestionSelected: (suggestion) {
            controller.disposalStatusTextEditController.text =
                suggestion.value ?? suggestion.text ?? '';

            if (suggestion.value == EamConstants.sold) {
              controller.isSold.value = true;
            } else {
              controller.isSold.value = false;
            }
            controller.setDisposalStatus(
              controller.disposalStatusTextEditController.text,
            );
            if (controller
                .disposalEffectiveFromTextEditController.text.isNotEmpty) {
              controller.isValueChanged.value = true;
            }
          },
          itemBuilder: (context, itemData) => ListTile(
            title: Text(itemData.text ?? ''),
          ),
          suggestionsCallback: (pattern) async {
            if (controller.isDisposalInProcess.value) {
              return [];
            }
            return controller.getDisposalStatuses(pattern);
          },
          textFieldConfiguration: TextFieldConfiguration(
            controller: controller.disposalStatusTextEditController,
            decoration: EamDecorations.getCommonTextBoxStyle(
              context,
              context.l10n.status,
            ),
          ),
        ),
      );

  Widget getActions() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ValueListenableBuilder(
            valueListenable: controller.isValueChanged,
            builder: (valueChangedcontext, value, child) {
              return ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> states) {
                      if (!value) {
                        return Colors.grey;
                      }
                      return Theme.of(context)
                          .colorScheme
                          .primary; // Use the component's default.
                    },
                  ),
                ),
                onPressed: () async {
                  if (!value) {
                    return;
                  }
                  await EmrDialog.cancelOk(
                    context,
                    titleText: context.l10n.areYouSure,
                    contentText: '''
${context.l10n.sureYouWantTo} ${controller.currentAction == AssetActions.transfer ? context.l10n.transferString : context.l10n.dispose} ${context.l10n.theSelectedAssets}?''',
                    onOk: () async {
                      bool result;
                      result = controller.currentAction == AssetActions.transfer
                          ? await controller.transferAssets()
                          : await controller.disposeAssets();

                      if (result) {
                        if (mounted) {
                          await EmrDialog.ok(
                            context,
                            titleText: context.l10n.success,
                            contentText: context.l10n.requestSavedSuccesfully,
                          );
                          controller.isValueChanged.value = false;
                        }
                      } else {
                        if (mounted) {
                          await EmrDialog.ok(
                            context,
                            titleText: context.l10n.error,
                            contentText: controller.validationMessage,
                          );
                        }
                      }
                      widget.onActionPerformed?.call();
                    },
                  );
                },
                child: controller.currentAction == AssetActions.transfer
                    ? Text(context.l10n.transferString)
                    : Text(context.l10n.dispose),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _getFieldsForAction() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Visibility(
            visible: controller.currentAction == AssetActions.transfer,
            child: Expanded(
              flex: 10,
              child: getTransfer(),
            ),
          ),
          Visibility(
            visible: controller.currentAction == AssetActions.dispose,
            child: Expanded(
              flex: 10,
              child: getDispose(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _addAssetGrid() => Expanded(
        child: ValueListenableBuilder(
          valueListenable: controller.assets,
          builder: (context, value, child) {
            if (value.isEmpty) {
              return Center(
                child: Text(context.l10n.noDataFound),
              );
            }
            return Padding(
              padding: const EdgeInsets.all(10),
              child: EmrGrid<Asset>(
                alternateBackgroundRowColour: true,
                controller: controller.gridController,
                columns: ConstantLists.transferColumns
                    .map(
                      (e) => EmrGridColumn<Asset>(
                        width: _getColumnWidth(e),
                        headerBuilder: () => _getHeader(e),
                        cellBuilder: (asset) => _getCellValue(asset, e),
                      ),
                    )
                    .toList(),
              ),
            );
          },
        ),
      );
  double _getColumnWidth(String type) {
    switch (type) {
      case AssetGridColumns.checkbox:
        return 20;
      case AssetGridColumns.make:
      case AssetGridColumns.depo:
        return 30;
      case AssetGridColumns.serialNo:
      case AssetGridColumns.name:
        return 60;
      default:
        return 50;
    }
  }

  Widget _getHeader(String type) {
    return Text(
      type,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
    );
  }

  Widget _getCellValue(Asset asset, String type) {
    switch (type) {
      case AssetGridColumns.assetCode:
        return Text(asset.code ?? '-');
      case AssetGridColumns.assetType:
        return Text(asset.assetType ?? '-');
      case AssetGridColumns.status:
        return Text(asset.status ?? '-');
      case AssetGridColumns.name:
        return Text(asset.name ?? '-');
      case AssetGridColumns.depo:
        return Text(asset.depotNo ?? '-');
    }
    return const Text('-');
  }

  @override
  void initState() {
    super.initState();
    controller.initialize();
  }
}
