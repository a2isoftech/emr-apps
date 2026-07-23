import 'package:emr_flutter_theme/controls/emr_button.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_core/models/enums/part_type_enum.dart';
import 'package:emr_one_elv_inspection/enums/device_type_enum.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/catalytic_converter_configuration.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/custom_widgets/inspection_image_with_card_info_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/modular/cat_selection/cat_uk_screens/manual_cat_lookup_list_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/modular/cat_selection/cat_us_screens/manage_cat_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatalyticConverterUKSubScreen extends StatelessWidget {
  const CatalyticConverterUKSubScreen({
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
        .map((p) => p as CatalyticConverterConfiguration)
        .toList();
    final partPrices = controller
        .state
        .vehicleQuote
        .vehiclePriceDetail
        .partPrices
        .where((p) => p.partInfo.partType == PartTypeEnum.catalyticConverter);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.catalyticConverter,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: Insets.gutter),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: catalyticConverters.map((catalyticConverter) {
            final partPrice = partPrices.firstWhere(
              (price) =>
                  price.vehiclePartKeys.contains(catalyticConverter.partKey),
            );
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
              child: EmrCard(
                child: InspectionImageWithCardInfoWidget(
                  showImage: isCatImageRequired,
                  territory: ElvTerritory.uk,
                  catLocation: catalyticConverter.partInfo.partLocation,
                  catClassification: catalyticConverter.classification,
                  imagePath: catalyticConverter.partPhotos.firstOrNull?.url,
                  onDelete: () {
                    controller.deleteCatalyticConverter(
                      catalyticConverter.partKey,
                    );
                  },
                  onEdit: () {
                    showDialog<void>(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Center(
                            child: Text(
                              context.l10n.editCAT,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                          content: SingleChildScrollView(
                            child: SizedBox(
                              width: 500,
                              child: ManageCatFormWidget(
                                controller: controller,
                                catalyticConverter: catalyticConverter,
                                deviceType: deviceType,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  catValue: partPrice.price,
                  sealNumber: catalyticConverter.techemetCat?.sealNo,
                  serialNumber: catalyticConverter.techemetCat?.serial,
                ),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: Insets.gutter),
        SizedBox(
          width: 220,
          child: EmrButton(
            label: context.l10n.addCAT,
            onPressed: () {
              showDialog<void>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: SizedBox(
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: Insets.gutter / 2,
                        ),
                        child: ChangeNotifierProvider.value(
                          value: controller,
                          child: Column(
                            children: [
                              Text(
                                context.l10n.addCAT,
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineSmall,
                              ),
                              const SizedBox(height: Insets.gutter),
                              Expanded(
                                child: ManualCatLookupListSubScreen(
                                  isImageRequired: isCatImageRequired,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            backgroundColour: EmrColours.primaryBlue,
          ),
        ),
      ],
    );
  }
}
