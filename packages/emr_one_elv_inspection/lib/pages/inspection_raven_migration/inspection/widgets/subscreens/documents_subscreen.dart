import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/enums/device_type_enum.dart';
import 'package:emr_one_elv_inspection/enums/inspection_image_enum.dart';
import 'package:emr_one_elv_inspection/enums/inspection_tabs.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_footer_button_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/images/image_section.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/custom_widgets/inspection_image_widget.dart';
import 'package:emr_sharedtypes/models/media_asset.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocumentsSubScreen extends StatelessWidget {
  const DocumentsSubScreen({
    this.deviceType = DeviceTypeEnum.desktop,
    super.key,
  });
  final DeviceTypeEnum deviceType;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(context);
    final imageWidth = deviceType == DeviceTypeEnum.mobile ? 130.0 : 180.0;
    final imageHeight = deviceType == DeviceTypeEnum.mobile ? 130.0 : 180.0;
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ImageSection(
              deviceType: deviceType,
              gridItemHeight: imageHeight + (Insets.gutter * 1.2),
              children: [
                InspectionImageWidget(
                  imageType: InspectionImageEnum.v5LogBook,
                  title: '${context.l10n.title} (${context.l10n.v5LogBook})',
                  height: imageHeight,
                  width: imageWidth,
                  isTitleAtBottom: deviceType == DeviceTypeEnum.mobile,
                  serverImagePath: controller
                      .state
                      .vehicleQuote
                      .vehicleInfo
                      .documents
                      .v5LogBook
                      ?.url,
                  onImageAdded: (imagePath) =>
                      controller
                          .state
                          .vehicleQuote
                          .vehicleInfo
                          .documents
                          .v5LogBook = MediaAsset(
                        imagePath,
                      ),
                ),
              ],
            ),
          ),
          InspectionFooterButtons(
            backText: context.l10n.back,
            saveText: context.l10n.save,
            deviceType: deviceType,
            nextText:
                '${context.l10n.next}: ${context.l10n.vehicle} '
                '${context.l10n.parts}',
            onNext: () => controller.changeTab(InspectionTabs.vehicleParts),
            onBack: () => controller.changeTab(InspectionTabs.vehiclePictures),
            isLoadingNotifier: ValueNotifier(false),
          ),
        ],
      ),
    );
  }
}
