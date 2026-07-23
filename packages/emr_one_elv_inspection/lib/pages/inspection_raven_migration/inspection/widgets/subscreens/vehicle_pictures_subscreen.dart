import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/enums/inspection_image_enum.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_footer_button_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/images/image_section.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/custom_widgets/inspection_image_widget.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehiclePicturesSubScreen extends StatelessWidget {
  const VehiclePicturesSubScreen({
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
              gridItemHeight: imageHeight + (Insets.gutter * 5),
              children: [
                InspectionImageWidget(
                  height: imageHeight,
                  width: imageWidth,
                  imagePath: VehiclePartAssetTemplateImagePath.frontSideExample,
                  title: context.l10n.frontVehiclePictureHeaderText,
                  imageType: InspectionImageEnum.frontPhoto,
                  placeholderImage: VehiclePartAssetTemplateImagePath.frontSide,
                  isTitleAtBottom: deviceType == DeviceTypeEnum.mobile,
                  serverImagePath: controller
                      .state
                      .vehicleQuote
                      .vehicleInfo
                      .documents
                      .frontPhoto
                      ?.url,
                  onImageAdded: (imagePath) =>
                      controller
                          .state
                          .vehicleQuote
                          .vehicleInfo
                          .documents
                          .frontPhoto = MediaAsset(
                        imagePath,
                      ),
                ),
                InspectionImageWidget(
                  height: imageHeight,
                  width: imageWidth,
                  imagePath: VehiclePartAssetTemplateImagePath.rearSideExample,
                  title: context.l10n.rearVehiclePictureHeaderText,
                  isTitleAtBottom: deviceType == DeviceTypeEnum.mobile,
                  imageType: InspectionImageEnum.rearPhoto,
                  placeholderImage: VehiclePartAssetTemplateImagePath.rearSide,
                  serverImagePath: controller
                      .state
                      .vehicleQuote
                      .vehicleInfo
                      .documents
                      .rearPhoto
                      ?.url,
                  onImageAdded: (imagePath) =>
                      controller
                          .state
                          .vehicleQuote
                          .vehicleInfo
                          .documents
                          .rearPhoto = MediaAsset(
                        imagePath,
                      ),
                ),
                _vinImage(
                  context,
                  controller,
                  imageHeight: imageHeight,
                  imageWidth: imageWidth,
                  isTitleAtBottom: deviceType == DeviceTypeEnum.mobile,
                ),
              ],
            ),
          ),
          InspectionFooterButtons(
            backText: context.l10n.cancel,
            saveText: context.l10n.save,
            deviceType: deviceType,
            nextText:
                '''${context.l10n.next}: ${controller.activeTerritory.documentButtonText(context)}''',
            onNext: () {
              controller.changeTab(
                controller.activeTerritory == ElvTerritory.uk
                    ? InspectionTabs.documents
                    : InspectionTabs.vehicleParts,
              );
            },
            onBack: context.pop,
            isLoadingNotifier: ValueNotifier(false),
          ),
        ],
      ),
    );
  }

  Widget _vinImage(
    BuildContext context,
    InspectionController controller, {
    required double imageWidth,
    required double imageHeight,
    required bool isTitleAtBottom,
  }) {
    final vin = controller.state.vehicleQuote.vehicleInfo.detail.vin;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InspectionImageWidget(
          width: imageWidth,
          height: imageHeight,
          imageType: InspectionImageEnum.vinPhoto,
          title: '${context.l10n.vin} #',
          imagePath: '',
          isTitleAtBottom: isTitleAtBottom,
          serverImagePath:
              controller.state.vehicleQuote.vehicleInfo.documents.vinPhoto?.url,
          onImageAdded: (imagePath) =>
              controller.state.vehicleQuote.vehicleInfo.documents.vinPhoto =
                  MediaAsset(imagePath),
        ),
        if (vin.isNotEmpty) ...{
          ValueListenableBuilder(
            valueListenable: controller.state.isVinValid,
            builder: (context, value, child) {
              if (value) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: Insets.gutter),
                    Text(
                      vin,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              }
              return const SizedBox();
            },
          ),
        },
      ],
    );
  }
}
