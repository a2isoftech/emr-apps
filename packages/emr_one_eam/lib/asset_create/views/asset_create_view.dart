import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/asset_create/asset_create.dart';
import 'package:emr_one_eam/asset_create/views/asset_details.dart';
import 'package:emr_one_eam/asset_template/controllers/asset_template_controller.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/screen_access.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AssetCreateView extends BasePage {
  AssetCreateView({super.controller, this.onAssetSaved, super.key});
  final VoidCallback? onAssetSaved;
  @override
  State<StatefulWidget> createState() => AssetCreateViewState();
}

class AssetCreateViewState
    extends BasePageState<AssetCreateView, IAssetCreateController> {
  final ValueNotifier<int> currentStep = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.createPageStep,
      builder: (context, value, child) {
        final access = Provider.of<ScreenAccess>(context, listen: false);
        if (!access.isEAMBusinessAdmin(context) &&
            value == CreatePageView.templateSelection) {
          return Container();
        }
        if (value == CreatePageView.templateSelection) {
          controller.newAsset = true;
          return SingleChildScrollView(
            child: SelectTemplate(
              assetController: controller,
              assetTemplateController: Provider.of<IAssetTemplateController>(
                context,
                listen: false,
              ),
              onNextPressed: () {
                controller.createPageStep.value = CreatePageView.assetDetails;
              },
            ),
          );
        } else if (value == CreatePageView.assetDetails) {
          return Material(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AssetDetails(
                    isNewAsset: controller.newAsset,
                    controller: widget.controller,
                    onSavePressed: () {
                      if (controller.newAsset) {
                        controller.createPageStep.value =
                            CreatePageView.created;
                      } else {
                        widget.onAssetSaved?.call();
                      }
                    },
                  ),
                ),
              ],
            ),
          );
        } else if (value == CreatePageView.created) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '''${context.l10n.assetCreatedWithCode}: ${controller.newAssetCode}''',
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  controller.createPageStep.value =
                      CreatePageView.templateSelection;
                },
                icon: const Icon(Icons.check),
                label: Text(context.l10n.done),
              ),
            ],
          );
        } else {
          return Container();
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    controller.initializeAssetDetails();
  }
}
