import 'package:emr_flutter_theme/controls/emr_button.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/cat_selection/cat_uk_screens/edit_cat_lookup_card_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/inspection_modular_widgets.dart';
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
    final controller = Provider.of<InspectionScreenController>(context);
    final appConfig = Provider.of<AppConfig>(context);
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
                  child: EmrCard(
                    child: InspectionImageWithCardInfoWidget(
                      showImage: isCatImageRequired,
                      territory: ElvTerritory.uk,
                      catLocation: x.location ?? '',
                      catClassification: x.catClassification ?? '',
                      onDelete: () => controller.deleteCat(x),
                      onEdit: () {
                        showDialog<void>(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Center(
                                child: Text(
                                  context.l10n.editCAT,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                ),
                              ),
                              content: SingleChildScrollView(
                                child: SizedBox(
                                  width: 500,
                                  child: EditCatLookupCardSubScreen(
                                    vehicleCatDetailModel: x,
                                    controller: controller,
                                    isImageRequired: isCatImageRequired,
                                    appConfig: appConfig,
                                    deviceType: deviceType,
                                  ),
                                ),
                              ),
                            );
                          },
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
              )
              .toList(),
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
                              if (controller.state.allowAutoCatLookup)
                                Expanded(
                                  child: InspectionTabWidget(
                                    onTap: (p0) async {
                                      switch (p0) {
                                        case 0:
                                          await controller
                                              .getAllAvailableCats();
                                      }
                                    },
                                    selectedIndex: 0,
                                    tabs: [
                                      Text(context.l10n.lookup),
                                      Text(context.l10n.manual),
                                    ],
                                    tabItems: [
                                      CatLookupListSubScreen(
                                        isImageRequired: isCatImageRequired,
                                        deviceType: deviceType,
                                      ),
                                      ManualCatLookupListSubScreen(
                                        isImageRequired: isCatImageRequired,
                                      ),
                                    ],
                                  ),
                                )
                              else
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
