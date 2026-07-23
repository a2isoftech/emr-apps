import 'package:emr_flutter_theme/controls/emr_button.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:emr_one_elv_inspection/enums/device_type_enum.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/catalytic_converter_configuration.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/custom_widgets/inspection_image_with_card_info_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/modular/cat_selection/cat_us_screens/manage_cat_form_widget.dart';
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
    final controller = Provider.of<InspectionController>(context);
    final catalyticConverters = controller
        .state
        .vehicleQuote
        .vehicleInfo
        .configuration
        .parts
        .where((p) => p.partInfo.partType == PartTypeEnum.catalyticConverter)
        .toList();

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
                        child: ManageCatFormWidget(
                          controller: controller,
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
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: catalyticConverters.length,
          itemBuilder: (context, index) {
            final selectedCat =
                catalyticConverters.elementAt(index)
                    as CatalyticConverterConfiguration;
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                EmrCard(
                  child: InspectionImageWithCardInfoWidget(
                    showImage: isCatImageRequired,
                    territory: ElvTerritory.usa,
                    catLocation: selectedCat.partInfo.partLocation,
                    catClassification: selectedCat.classification,
                    imagePath: selectedCat.partPhotos.firstOrNull?.url,
                    onDelete: () {
                      controller.deleteCatalyticConverter(selectedCat.partKey);
                    },
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
                                child: ManageCatFormWidget(
                                  controller: controller,
                                  catalyticConverter: selectedCat,
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
