import 'dart:async';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_image_with_card_info_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/swipe_reveal.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/inspection_modular_widgets.dart';
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
    final controller = Provider.of<InspectionScreenController>(context);
    final appConfig = Provider.of<AppConfig>(context);

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
                  body: AddCatFormWidget(
                    controller: controller,
                    vehicleCat: VehicleCatDetailModel(),
                    appConfig: appConfig,
                    isImageRequired: isCatImageRequired,
                    deviceType: deviceType,
                    editCat: false,
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
          children: controller
              .state
              .quoteToInspect!
              .vehicleConfiguration!
              .catDetails
              .map(
                (x) => Padding(
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
                        await controller.deleteCat(x);
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
                          catLocation: x.location ?? '',
                          catClassification: x.catClassification ?? '',
                          onDelete: null,
                          onEdit: () async {
                            await elvStandardFlyout(
                              heading: context.l10n.editCAT,
                              body: AddCatFormWidget(
                                controller: controller,
                                vehicleCat: x,
                                appConfig: appConfig,
                                isImageRequired: isCatImageRequired,
                                deviceType: deviceType,
                              ),
                              context: context,
                            );
                          },
                          amount: x.catValue,
                          sealNumber: x.sealNumber,
                          serialNo: x.serialNumber,
                          catImage: x.imagePath ?? '',
                          vehicleCatId: x.vehicleCatId ?? 0,
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
