import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/approval/controller/approval_controller.dart';
import 'package:emr_one_eam/asset_create/controllers/asset_create_controller.dart';
import 'package:emr_one_eam/asset_create/views/asset_details.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/common/colors.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/common/styles.dart';
import 'package:emr_one_eam/models/asset_approval.dart';
import 'package:emr_one_eam/models/list_value.dart';
import 'package:emr_one_eam/screen_access.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ApprovalBase extends BasePage {
  ApprovalBase({
    required this.action,
    this.createController,
    super.controller,
    super.key,
  });

  final AssetActions action;
  final IAssetCreateController? createController;
  @override
  State<StatefulWidget> createState() => ApprovalBaseState();
}

class ApprovalBaseState
    extends BasePageState<ApprovalBase, IApprovalController> {
  @override
  Widget build(BuildContext context) {
    final access = Provider.of<ScreenAccess>(context, listen: false);
    if (!access.isEAMFinanceAdmin(context)) {
      return Container();
    }
    return ValueListenableBuilder(
      valueListenable: controller.isBusy,
      builder: (context, value, child) {
        if (value) {
          return const Center(
            child: CircularProgressIndicator(
              color: EmrColours.primaryBlue,
            ),
          );
        }
        return ValueListenableBuilder(
          valueListenable: controller.approvalType,
          builder: (context, approvalType, child) {
            return ValueListenableBuilder(
              valueListenable: controller.assetApprovals,
              builder: (context, value, child) {
                if (approvalType != AssetActions.approve && value.isEmpty) {
                  return Center(
                    child: Text(context.l10n.noApprovalsFound),
                  );
                } else {
                  return Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Column(
                                children: [
                                  getActions(),
                                  getPendingApprovals(approvalType),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              },
            );
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    controller.setcurrentAction(widget.action);
    controller.initialize();
  }

  Widget getPendingApprovals(AssetActions? action) {
    switch (action) {
      case AssetActions.transfer:
        return _addTransferAssetGrid();
      case AssetActions.dispose:
        return _addDisposalAssetGrid();
      case AssetActions.approve:
        return _buildNewAssetApprovalPanel();
      case null:
        return const Row();
    }
  }

  Widget _buildNewAssetApprovalPanel() {
    return ValueListenableBuilder(
      valueListenable: controller.assetCodes,
      builder: (BuildContext context, value, child) {
        if (value.isEmpty) {
          return _addNavigationMessage();
        }
        return Expanded(
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: controller.reviewdAssetCodes,
                builder: (context, reviewdAssetCodes, child) {
                  return Visibility(
                    visible: reviewdAssetCodes.isNotEmpty,
                    child: ExpansionTile(
                      childrenPadding: const EdgeInsets.all(5),
                      backgroundColor: Colors.transparent,
                      collapsedBackgroundColor: Colors.transparent,
                      initiallyExpanded: true,
                      title: Text(context.l10n.approvedAssets),
                      children: [
                        Wrap(
                          runSpacing: 5,
                          spacing: 5,
                          children: reviewdAssetCodes
                              .map(
                                (e) => InputChip(
                                  isEnabled: false,
                                  disabledColor: EamAppColors.lightGrey,
                                  label: Text(e),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 5,
              ),
              ExpansionTile(
                childrenPadding: const EdgeInsets.all(5),
                backgroundColor: Colors.transparent,
                collapsedBackgroundColor: Colors.transparent,
                initiallyExpanded: true,
                title: Text(context.l10n.reviewAssets),
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Wrap(
                      runSpacing: 5,
                      spacing: 5,
                      children: value
                          .map(
                            (e) => ValueListenableBuilder(
                              valueListenable: controller.selectedAssetCode,
                              builder: (context, value, child) {
                                return InputChip(
                                  selected: value == e,
                                  selectedColor: EamAppColors.success,
                                  label: Text(e),
                                  onSelected: (value) {
                                    controller.selectedAssetCode.value = e;
                                  },
                                );
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
              ValueListenableBuilder(
                valueListenable: controller.selectedAssetCode,
                builder: (context, value, child) {
                  if (value == null) {
                    return Container();
                  }
                  widget.createController?.assetCode = value;
                  widget.createController?.initializeAssetDetails();
                  return Expanded(
                    flex: 6,
                    child: AssetDetails(
                      isNewAsset: false,
                      controller: widget.createController,
                      onSavePressed: () {
                        controller.reviewdAssetCodes.value = [
                          ...controller.reviewdAssetCodes.value,
                          value,
                        ];

                        controller.assetCodes.value =
                            controller.assetCodes.value
                                .where(
                                  (element) => element != value,
                                )
                                .toList();
                        controller.selectedAssetCode.value = null;
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _addNavigationMessage() => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child:
                Text(context.l10n.eamNavigationMessageToSearchApproveNewAsset),
          ),
        ),
      );

  Widget _addTransferAssetGrid() => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: EmrGrid<AssetApproval>(
            alternateBackgroundRowColour: true,
            controller: controller.gridController,
            columns: ConstantLists.transferApprovalColumns
                .map(
                  (column) => EmrGridColumn<AssetApproval>(
                    width: _getColumnWidth(column),
                    headerBuilder: () => _getHeader(column),
                    cellBuilder: (ap) => _getCellValue(ap, column),
                  ),
                )
                .toList(),
          ),
        ),
      );

  Widget _addDisposalAssetGrid() => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: EmrGrid<AssetApproval>(
            alternateBackgroundRowColour: true,
            controller: controller.gridController,
            columns: ConstantLists.disposalDisposalColumns
                .map(
                  (column) => EmrGridColumn<AssetApproval>(
                    width: _getColumnWidth(column),
                    headerBuilder: () => _getHeader(column),
                    cellBuilder: (ap) => _getCellValue(ap, column),
                  ),
                )
                .toList(),
          ),
        ),
      );

  double _getColumnWidth(String type) {
    switch (type) {
      case AssetGridColumns.checkbox:
        return 20;
      case ApprovalGridColumns.assetCode:
      case ApprovalGridColumns.depoFrom:
      case ApprovalGridColumns.depoTo:
      case ApprovalGridColumns.status:
      case ApprovalGridColumns.disposalStatus:
        return 30;
      default:
        return 50;
    }
  }

  Widget _getHeader(String type) {
    if (type == AssetGridColumns.checkbox) {
      return ValueListenableBuilder(
        valueListenable: controller.selectedAssets,
        builder: (context, value, child) {
          return Checkbox(
            visualDensity: VisualDensity.compact,
            tristate: true,
            value: value.isNotEmpty &&
                value.length == controller.assetApprovals.value.length,
            onChanged: (value) {
              if (value ?? false) {
                controller.selectAllAsset();
              } else {
                controller.removeAllAsset();
              }
            },
          );
        },
      );
    } else {
      return Text(
        type,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      );
    }
  }

  Widget _getCellValue(AssetApproval approval, String type) {
    switch (type) {
      case ApprovalGridColumns.assetCode:
        return Text(approval.assetCode ?? '-');
      case ApprovalGridColumns.depoFrom:
        return Text(approval.depotNo ?? '-');
      case ApprovalGridColumns.depoTo:
        return Text(approval.transferDepotNo ?? '-');
      case ApprovalGridColumns.approvalType:
        if (approval.approvalType == 'TransferOut') {
          return const Text('Transfer');
        }
        return Text(approval.approvalType ?? '-');
      case ApprovalGridColumns.assetName:
        return Text(approval.assetName ?? '-');
      case ApprovalGridColumns.status:
        return Text(approval.status ?? '-');
      case ApprovalGridColumns.disposalStatus:
        return Text(approval.disposalStatus ?? '-');
      case ApprovalGridColumns.reason:
        return Text(approval.reason ?? '-');
      case ApprovalGridColumns.requestedBy:
        return Text(approval.requestedBy ?? '-');
      case ApprovalGridColumns.functionalLocation:
        if (approval.requiresFunctionalLocation ?? false) {
          return _functionalLocation(approval);
        }
        return const Text('');
      case ApprovalGridColumns.effectiveFrom:
        final locale = Localizations.localeOf(context);
        return Text(
          approval.effectiveDate != null
              ? DateFormat.yMd(locale.toString())
                  .format(approval.effectiveDate!.toLocal())
              : '-',
        );
      case ApprovalGridColumns.checkbox:
        return ValueListenableBuilder(
          valueListenable: controller.selectedAssets,
          builder: (context, value, child) {
            return Checkbox(
              visualDensity: VisualDensity.compact,
              tristate: true,
              value: value.isNotEmpty && value.contains(approval),
              onChanged: (value) {
                controller.addSelected(isChecked: value, approval);
              },
            );
          },
        );
    }
    return const Text('-');
  }

  Widget getActions() => ValueListenableBuilder(
        valueListenable: controller.approvalType,
        builder: (context, value, child) {
          if (value == AssetActions.transfer || value == AssetActions.dispose) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await approveSelected(context);
                    },
                    child: Text(context.l10n.approve),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await rejectSelected(context);
                    },
                    child: Text(context.l10n.reject),
                  ),
                ],
              ),
            );
          } else {
            return Container();
          }
        },
      );

  Widget _functionalLocation(AssetApproval approval) {
    List<ListValue>? locations;
    if (controller.functionalLocations.keys
        .contains(approval.transferDepotNo)) {
      locations = controller.functionalLocations[approval.transferDepotNo];
    }
    final textEditingController = TextEditingController(text: '');
    return TypeAheadFormField<ListValue>(
      autovalidateMode: AutovalidateMode.always,
      validator: (value) {
        if (locations != null &&
            locations.isNotEmpty &&
            (value == null || value.isEmpty)) {
          return '*${context.l10n.required}';
        }
        return null;
      },
      onSuggestionSelected: (suggestion) {
        textEditingController.text = suggestion.value ?? '';
        controller.setFunctionalLocation(approval, textEditingController.text);
      },
      itemBuilder: (context, itemData) => ListTile(
        title: Text(itemData.value ?? ''),
        subtitle: Text(itemData.text ?? ''),
      ),
      suggestionsCallback: (pattern) async {
        if (locations == null) {
          return [];
        }

        return locations.where(
          (e) =>
              e.text!.toLowerCase().contains(
                    pattern.toLowerCase(),
                  ) ||
              e.value!.toLowerCase().contains(pattern.toLowerCase()),
        );
      },
      textFieldConfiguration: TextFieldConfiguration(
        controller: textEditingController,
        decoration: EamDecorations.getCommonTextBoxStyle(
          context,
          context.l10n.functionalLocation,
        ),
      ),
    );
  }

  Future<void> approveSelected(BuildContext context) async {
    final isValidated = await controller.validateFunctionalLocationCode();

    if (!isValidated) {
      if (context.mounted) {
        await EmrDialog.ok(
          context,
          titleText: context.l10n.error,
          contentText: context.l10n.eamCannotApproveMessage,
        );
      }
    } else {
      if (context.mounted) {
        await EmrDialog.cancelOk(
          context,
          titleText: context.l10n.areYouSure,
          contentText: context.l10n.eamConfirmApprovalMessage,
          onOk: () async {
            await controller.updateApprovalStatus(ApprovalStatus.approved).then(
                  (value) => {
                    if (value)
                      {
                        controller.initialize(),
                      }
                    else
                      {
                        if (context.mounted)
                          {
                            EmrDialog.ok(
                              context,
                              titleText: context.l10n.error,
                              contentText:
                                  context.l10n.eamFailedToApproveMessage,
                            ),
                          },
                      },
                  },
                );
          },
        );
      }
    }
  }

  Future<void> rejectSelected(BuildContext context) async {
    if (context.mounted) {
      await EmrDialog.cancelOk(
        context,
        titleText: context.l10n.areYouSure,
        contentText: context.l10n.eamConfirmRejectMessage,
        onOk: () async {
          await controller.updateApprovalStatus(ApprovalStatus.rejected).then(
                (value) => {
                  if (value)
                    {
                      controller.initialize(),
                    }
                  else
                    {
                      if (context.mounted)
                        {
                          EmrDialog.ok(
                            context,
                            titleText: context.l10n.error,
                            contentText: context.l10n.eamFailedRejectMessage,
                          ),
                        },
                    },
                },
              );
        },
      );
    }
  }
}
