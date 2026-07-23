import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart' hide InspectionTabs;
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/inspection_modular_widgets.dart';
import 'package:emr_one_elv_quote_api/enums/enums.dart';
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
    final controller = Provider.of<InspectionScreenController>(context);
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
                  documentTypeEnum: VehicleDocumentEnums.frontVehiclePart,
                  placeholderImage: VehiclePartAssetTemplateImagePath.frontSide,
                  isTitleAtBottom: deviceType == DeviceTypeEnum.mobile,
                  serverImagePath: controller
                      .state
                      .quoteToInspect!
                      .vehicleConfiguration!
                      .vehicleDocuments
                      .where(
                        (x) =>
                            x.imageType ==
                            VehicleDocumentEnums.frontVehiclePart.label,
                      )
                      .first
                      .path,
                ),
                InspectionImageWidget(
                  height: imageHeight,
                  width: imageWidth,
                  imagePath: VehiclePartAssetTemplateImagePath.rearSideExample,
                  title: context.l10n.rearVehiclePictureHeaderText,
                  isTitleAtBottom: deviceType == DeviceTypeEnum.mobile,
                  documentTypeEnum: VehicleDocumentEnums.backVehiclePart,
                  placeholderImage: VehiclePartAssetTemplateImagePath.rearSide,
                  serverImagePath: controller
                      .state
                      .quoteToInspect!
                      .vehicleConfiguration!
                      .vehicleDocuments
                      .where(
                        (x) =>
                            x.imageType ==
                            VehicleDocumentEnums.backVehiclePart.label,
                      )
                      .first
                      .path,
                ),
                _extraDocument(
                  context,
                  controller,
                  imageHeight: imageHeight,
                  imageWidth: imageWidth,
                  isTitleAtBottom: deviceType == DeviceTypeEnum.mobile,
                  documentType: VehicleDocumentEnums.vin,
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

  Widget _extraDocument(
    BuildContext context,
    InspectionScreenController controller, {
    required VehicleDocumentEnums documentType,
    required double imageWidth,
    required double imageHeight,
    required bool isTitleAtBottom,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InspectionImageWidget(
          width: imageWidth,
          height: imageHeight,
          documentTypeEnum: documentType,
          title: '${context.l10n.vin} #',
          imagePath: '',
          isTitleAtBottom: isTitleAtBottom,
          serverImagePath: controller
              .state
              .quoteToInspect!
              .vehicleConfiguration!
              .vehicleDocuments
              .where((x) => x.imageType == documentType.label)
              .first
              .path,
        ),
        if (controller.state.quoteToInspect?.vehicleDescription.vin !=
            null) ...{
          ValueListenableBuilder(
            valueListenable: controller.state.isVinValid,
            builder: (context, value, child) {
              if (value) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: Insets.gutter),
                    Text(
                      controller.state.quoteToInspect?.vehicleDescription.vin ??
                          '',
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
