import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_inspection/enums/device_type_enum.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/inspection_modular_widgets.dart';
import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
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
              gridItemHeight: imageHeight + (Insets.gutter * 1.2),
              children: controller.activeTerritory == ElvTerritory.uk
                  ? _ukDocuments(
                      context,
                      controller,
                      imageHeight: imageHeight,
                      imageWidth: imageWidth,
                      isTitleAtBottom: deviceType == DeviceTypeEnum.mobile,
                    )
                  : _usDocuments(
                      context,
                      controller,
                      imageHeight: imageHeight,
                      imageWidth: imageWidth,
                      isTitleAtBottom: deviceType == DeviceTypeEnum.mobile,
                    ),
            ),
          ),
          InspectionFooterButtons(
            backText: context.l10n.back,
            saveText: context.l10n.save,
            deviceType: deviceType,
            nextText: '${context.l10n.next}: ${context.l10n.vehicle} '
                '${context.l10n.parts}',
            onNext: () => controller.changeTab(InspectionTabs.vehicleParts),
            onBack: () => controller.changeTab(InspectionTabs.vehiclePictures),
            isLoadingNotifier: ValueNotifier(false),
          ),
        ],
      ),
    );
  }

  List<Widget> _usDocuments(
    BuildContext context,
    InspectionScreenController controller, {
    required double imageWidth,
    required double imageHeight,
    required bool isTitleAtBottom,
  }) {
    return [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          InspectionImageWidget(
            documentTypeEnum: VehicleDocumentEnums.vin,
            title: '${context.l10n.vin} #',
            height: imageHeight,
            width: imageWidth,
            isTitleAtBottom: isTitleAtBottom,
            serverImagePath: controller
                .state.quoteToInspect!.vehicleConfiguration!.vehicleDocuments
                .where(
                  (x) => x.imageType == VehicleDocumentEnums.vin.label,
                )
                .first
                .path,
          ),
          ValueListenableBuilder(
            valueListenable: controller.state.isVinValid,
            builder: (context, value, child) {
              if (value) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: Insets.gutter,
                    ),
                    Text(
                      controller.state.quoteToInspect?.vehicleDescription.vin ??
                          '',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
    ];
  }

  List<Widget> _ukDocuments(
    BuildContext context,
    InspectionScreenController controller, {
    required double imageWidth,
    required double imageHeight,
    required bool isTitleAtBottom,
  }) {
    return [
      if (controller.activeTerritory == ElvTerritory.uk) ...{
        InspectionImageWidget(
          documentTypeEnum: VehicleDocumentEnums.v5,
          title: '${context.l10n.title} (${context.l10n.v5LogBook})',
          height: imageHeight,
          width: imageWidth,
          isTitleAtBottom: isTitleAtBottom,
          serverImagePath: controller
              .state.quoteToInspect!.vehicleConfiguration!.vehicleDocuments
              .where(
                (x) => x.imageType == VehicleDocumentEnums.v5.label,
              )
              .first
              .path,
        ),
      },
      if (controller.state.proofOfAddressImageRequired) ...{
        InspectionImageWidget(
          documentTypeEnum: VehicleDocumentEnums.proofOfAddress,
          title: '${context.l10n.proofOfAddress} #',
          height: imageHeight,
          width: imageWidth,
          isTitleAtBottom: isTitleAtBottom,
          serverImagePath: controller
              .state.quoteToInspect!.vehicleConfiguration!.vehicleDocuments
              .where(
                (x) => x.imageType == VehicleDocumentEnums.proofOfAddress.label,
              )
              .first
              .path,
        ),
      },
      if (controller.state.identificationImageRequired) ...{
        InspectionImageWidget(
          documentTypeEnum: VehicleDocumentEnums.identification,
          title: '${context.l10n.documentIdentification} #',
          height: imageHeight,
          width: imageWidth,
          isTitleAtBottom: isTitleAtBottom,
          serverImagePath: controller
              .state.quoteToInspect!.vehicleConfiguration!.vehicleDocuments
              .where(
                (x) => x.imageType == VehicleDocumentEnums.identification.label,
              )
              .first
              .path,
        ),
      },
    ];
  }
}
