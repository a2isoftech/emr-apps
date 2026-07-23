import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/asset_create/asset_create.dart';
import 'package:emr_one_eam/asset_create/views/asset_attributes.dart';
import 'package:emr_one_eam/asset_create/views/asset_fixed_properties.dart';
import 'package:emr_one_eam/asset_history/controllers/asset_history_controller.dart';
import 'package:emr_one_eam/asset_history/views/asset_history.dart';
import 'package:emr_one_eam/base/base_page.dart';
import 'package:emr_one_eam/common/colors.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/models/asset_template.dart';
import 'package:emr_one_eam/screen_access.dart';
import 'package:emr_one_eam/widgets/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AssetDetails extends BasePage {
  AssetDetails({
    required this.isNewAsset,
    super.controller,
    this.onSavePressed,
    this.isTransferDispose = false,
    super.key,
  });
  final bool isNewAsset;
  final bool isTransferDispose;
  final VoidCallback? onSavePressed;

  @override
  State<StatefulWidget> createState() => AssetDetailsState();
}

class AssetDetailsState
    extends BasePageState<AssetDetails, IAssetCreateController> {
  Widget showSpinner() {
    return Center(
      child: CircularProgressIndicator(
        color: EamAppColors.lightGrey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.newAsset &&
        (controller.assetCode == null || controller.assetCode!.isEmpty)) {
      return Center(
        child: Text(
          context.l10n.eamNoAssetSelectedNavigationMessage,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
    }
    return ValueListenableBuilder(
      valueListenable: controller.isBusy,
      builder: (context, value, child) {
        if (value) {
          return showSpinner();
        } else {
          return Column(
            children: [
              getActions(),
              Expanded(
                child: Row(
                  children: [
                    getFixedProperties(),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: VerticalDivider(),
                    ),
                    getAttributesPane(),
                  ],
                ),
              ),
            ],
          );
        }
      },
    );
  }

  Widget getFixedProperties() {
    return Expanded(
      flex: 8,
      child: Column(
        children: [
          AssetFixedProperties(
            controller: controller,
          ),
        ],
      ),
    );
  }

  Widget getAttributesPane() {
    return Expanded(
      flex: 6,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.syncText,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(context.l10n.eamOnlyApprovedAssetsMessage),
            const SizedBox(
              height: 20,
            ),
            getSyncTargets(),
            const SizedBox(
              height: 20,
            ),
            AssetAttributes(
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }

  Widget getActions() {
    final historyController = Provider.of<IAssetHistoryController>(context);
    final access = Provider.of<ScreenAccess>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            visible: access.isEAMBusinessAdmin(context) && !controller.newAsset,
            child: Tooltip(
              message: context.l10n.history,
              child: IconButton(
                icon: const Icon(Icons.history),
                onPressed: () async {
                  await _showAssetHistory(historyController);
                },
              ),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: controller.canUnDispose,
            builder: (valueChangedcontext, value, child) {
              return Visibility(
                visible: value && access.isEAMBusinessAdmin(context),
                child: ElevatedButton(
                  child: Text(context.l10n.unDispose),
                  onPressed: () async {
                    await EmrDialog.cancelOk(
                      context,
                      titleText: context.l10n.areYouSure,
                      contentText: context.l10n.unDisposeConfirmation,
                      onOk: () async {
                        await controller.unDispose();
                        await saveAsset();
                      },
                    );
                  },
                ),
              );
            },
          ),
          const SizedBox(
            width: 5,
          ),
          ValueListenableBuilder(
            valueListenable: controller.isValueChanged,
            builder: (valueChangedcontext, value, child) {
              return ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> states) {
                      if (!value || controller.isReadOnly) {
                        return Colors.grey;
                      }
                      return Theme.of(context)
                          .colorScheme
                          .primary; // Use the component's default.
                    },
                  ),
                ),
                onPressed: () async {
                  if (controller.isReadOnly) {
                    return EmrDialog.ok(
                      context,
                      titleText: context.l10n.information,
                      contentText: access.accessDeniedMessage(),
                    );
                  } else if (!value) {
                    return;
                  }
                  await saveAsset();
                },
                child: Text(context.l10n.save),
              );
            },
          ),
        ],
      ),
    );
  }

  Future<void> _showAssetHistory(
    IAssetHistoryController historyController,
  ) async {
    historyController.assetCode.value = controller.assetToCreate.value?.id;
    await showWidgetDialog(
      widgetWidth: 1400,
      widgetHeight: 1000,
      context: context,
      title: '${context.l10n.history}-${controller.assetCode}',
      widget: AssetHistoryView(controller: historyController),
    );
  }

  Future<void> saveAsset() async {
    final result = await controller.saveAsset();
    if (result) {
      if (mounted) {
        await EmrDialog.ok(
          context,
          titleText: context.l10n.success,
          contentText: context.l10n.eamAssetSaved,
        );
      }
      controller.reset();
      widget.onSavePressed?.call();
    } else {
      if (mounted) {
        await EmrDialog.ok(
          context,
          titleText: context.l10n.error,
          contentText: controller.validationMessage,
        );
      }
    }
  }

  Widget getSyncTargets() {
    var isD365 = false;
    var isTrade2 = false;
    List<AssetTemplateSyncTarget>? targets;
    if (controller.selectedTemplate != null &&
        controller.selectedTemplate!.syncTargets != null) {
      targets = controller.selectedTemplate!.syncTargets;
    } else if (controller.assetToCreate.value != null &&
        controller.assetToCreate.value!.syncTarget != null) {
      targets = controller.assetToCreate.value!.syncTarget;
    }
    if (targets != null && targets.isNotEmpty) {
      final d365 = targets
          .where(
            (element) =>
                element.name?.toLowerCase() == SyncTarget.d365.toLowerCase(),
          )
          .firstOrNull;
      final trade2 = targets
          .where(
            (element) =>
                element.name?.toLowerCase() == SyncTarget.trade2.toLowerCase(),
          )
          .firstOrNull;
      if (d365 != null) {
        isD365 = true;
      }
      if (trade2 != null) {
        isTrade2 = true;
      }
    }
    return Row(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: isD365
                  ? const Icon(
                      Icons.done_outline_outlined,
                      color: EmrColours.primaryGreen,
                    )
                  : const Icon(
                      Icons.dangerous,
                      color: EmrColours.secondaryRed,
                    ),
            ),
            Text(context.l10n.syncToD365, style: const TextStyle(fontSize: 20)),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: isTrade2
                  ? const Icon(
                      Icons.done_outline_outlined,
                      color: EmrColours.primaryGreen,
                    )
                  : const Icon(
                      Icons.dangerous,
                      color: EmrColours.secondaryRed,
                    ),
            ),
            Text(
              context.l10n.syncToTrade2,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    controller.newAsset = widget.isNewAsset;
    controller.initializeAssetDetails();
  }
}
