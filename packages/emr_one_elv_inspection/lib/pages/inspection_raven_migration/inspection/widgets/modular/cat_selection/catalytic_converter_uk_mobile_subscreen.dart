import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_core/models/enums/part_type_enum.dart';
import 'package:emr_one_elv_core/widgets/flyout/elv_flyout_builder.dart';
import 'package:emr_one_elv_inspection/enums/device_type_enum.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/catalytic_converter_configuration.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/swipe_reveal.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/custom_widgets/inspection_image_with_card_info_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/modular/cat_selection/cat_uk_screens/manual_cat_lookup_list_mobile_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/modular/cat_selection/cat_us_screens/manage_cat_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatalyticConverterUKMobileSubScreen extends StatefulWidget {
  const CatalyticConverterUKMobileSubScreen({
    required this.isCatImageRequired,
    required this.deviceType,
    super.key,
  });

  final bool isCatImageRequired;
  final DeviceTypeEnum deviceType;

  @override
  State<CatalyticConverterUKMobileSubScreen> createState() =>
      _CatalyticConverterUKMobileSubScreenState();
}

class _CatalyticConverterUKMobileSubScreenState
    extends State<CatalyticConverterUKMobileSubScreen> {
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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                context.l10n.catalyticConverter,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            FilledButton(
              onPressed: () async {
                await elvStandardFlyout(
                  context: context,
                  heading: context.l10n.addCatalyticConverter,
                  body: ChangeNotifierProvider.value(
                    value: controller,
                    child: ManualCatLookupListMobileSubScreen(
                      isImageRequired: widget.isCatImageRequired,
                    ),
                  ),
                );
              },
              child: Text(context.l10n.addCAT),
            ),
          ],
        ),
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
              child: SwipeReveal(
                action: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () async {
                    unawaited(
                      EmrDialog.busy(
                        context,
                        titleText: context.l10n.inProgress,
                      ),
                    );
                    await controller.deleteCatalyticConverter(
                      catalyticConverter.partKey,
                    );
                    if (context.mounted) context.pop();
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Theme.of(context).colorScheme.error,
                    size: Insets.gutter * 1.5,
                  ),
                ),
                child: ColoredBox(
                  color: Theme.of(context).canvasColor,
                  child: EmrCard(
                    child: InspectionImageWithCardInfoWidget(
                      territory: ElvTerritory.uk,
                      catLocation: catalyticConverter.partInfo.partLocation,
                      catClassification: catalyticConverter.classification,
                      onDelete: null,
                      onEdit: () async {
                        await elvStandardFlyout(
                          heading: context.l10n.editCAT,
                          context: context,
                          body: ManageCatFormWidget(
                            controller: controller,
                            catalyticConverter: catalyticConverter,
                            deviceType: DeviceTypeEnum.mobile,
                          ),
                        );
                      },
                      catValue: partPrice.price,
                      sealNumber: catalyticConverter.techemetCat?.sealNo,
                      serialNumber: catalyticConverter.techemetCat?.serial,
                      imagePath: catalyticConverter.partPhotos.firstOrNull?.url,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
