import 'package:emr_flutter_theme/controls/emr_button.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_image_with_card_info_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/inspection_modular_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatalyticConverterUSSubScreen extends StatelessWidget {
  const CatalyticConverterUSSubScreen({
    required this.isCatImageRequired,
    required this.deviceType,
    super.key,
  });
  final bool isCatImageRequired;
  final DeviceTypeEnum deviceType;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);
    final appConfig = Provider.of<AppConfig>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.catalyticConverter,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: Insets.gutter),
        SizedBox(
          width: 220,
          child: EmrButton(
            label: context.l10n.addCAT,
            onPressed: () async {
              await showDialog<void>(
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      context.l10n.addCAT,
                      style: EmrOneConstants.kLargeHeadingTextStyle.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    content: SingleChildScrollView(
                      child: SizedBox(
                        width: 500,
                        child: AddCatFormWidget(
                          controller: controller,
                          vehicleCat: VehicleCatDetailModel(),
                          appConfig: appConfig,
                          isImageRequired: isCatImageRequired,
                          deviceType: deviceType,
                          editCat: false,
                        ),
                      ),
                    ),
                  );
                },
                context: context,
              );
            },
          ),
        ),
        const SizedBox(height: Insets.gutter),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount:
              controller
                  .state
                  .quoteToInspect
                  ?.vehicleConfiguration
                  ?.catDetails
                  .length ??
              0,
          itemBuilder: (context, index) {
            final selectedCat = controller
                .state
                .quoteToInspect!
                .vehicleConfiguration!
                .catDetails[index];
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                EmrCard(
                  child: InspectionImageWithCardInfoWidget(
                    showImage: isCatImageRequired,
                    territory: ElvTerritory.usa,
                    catLocation: selectedCat.location ?? '',
                    catClassification: selectedCat.catClassification ?? '',
                    catImage: selectedCat.imagePath ?? '',
                    onDelete: () {
                      controller.deleteCat(selectedCat);
                    },
                    vehicleCatId: selectedCat.vehicleCatId ?? 0,
                    onEdit: () async {
                      await showDialog<void>(
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              context.l10n.editCAT,
                              style: EmrOneConstants.kLargeHeadingTextStyle
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                            content: SingleChildScrollView(
                              child: SizedBox(
                                width: 500,
                                child: AddCatFormWidget(
                                  controller: controller,
                                  vehicleCat: selectedCat,
                                  appConfig: appConfig,
                                  isImageRequired: isCatImageRequired,
                                  deviceType: deviceType,
                                ),
                              ),
                            ),
                          );
                        },
                        context: context,
                      );
                    },
                  ),
                ),
                const SizedBox(height: Insets.gutter),
              ],
            );
          },
        ),
      ],
    );
  }
}
