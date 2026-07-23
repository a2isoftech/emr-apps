import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_core/models/enums/part_type_enum.dart';
import 'package:emr_one_elv_core/widgets/widgets.dart';
import 'package:emr_one_elv_inspection/enums/device_type_enum.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/catalytic_converter_configuration.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/swipe_reveal.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/custom_widgets/inspection_image_with_card_info_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/modular/cat_selection/cat_us_screens/manage_cat_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatalyticConverterUSMobileSubScreen extends StatelessWidget {
  const CatalyticConverterUSMobileSubScreen({
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
                  heading: context.l10n.addCAT,
                  body: ManageCatFormWidget(
                    controller: controller,
                    isImageRequired: isCatImageRequired,
                    deviceType: deviceType,
                  ),
                  context: context,
                );
              },
              child: Text(context.l10n.addCAT),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: catalyticConverters
              .map(
                (catalyticConverter) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: Insets.gutter / 2,
                  ),
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
                          territory: ElvTerritory.usa,
                          catLocation: catalyticConverter.partInfo.partLocation,
                          catClassification:
                              (catalyticConverter
                                      as CatalyticConverterConfiguration)
                                  .classification,
                          imagePath:
                              catalyticConverter.partPhotos.firstOrNull?.url,
                          onDelete: null,
                          onEdit: () async {
                            await elvStandardFlyout(
                              heading: context.l10n.editCAT,
                              body: ManageCatFormWidget(
                                controller: controller,
                                catalyticConverter: catalyticConverter,
                                deviceType: deviceType,
                              ),
                              context: context,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
