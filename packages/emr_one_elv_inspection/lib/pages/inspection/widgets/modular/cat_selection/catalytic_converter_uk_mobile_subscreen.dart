import 'dart:async';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/swipe_reveal.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/cat_selection/cat_uk_screens/edit_cat_lookup_card_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/inspection_modular_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

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
  late Signal<String> selectedMenuSignal;
  late List<String> menuItems = [context.l10n.lookup, context.l10n.manual];

  @override
  void initState() {
    super.initState();
    selectedMenuSignal = Signal('');
  }

  @override
  void dispose() {
    selectedMenuSignal.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);
    final appConfig = Provider.of<AppConfig>(context);
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
                final controller = Provider.of<InspectionScreenController>(
                  context,
                  listen: false,
                );
                await elvStandardFlyout(
                  context: context,
                  heading: context.l10n.addCatalyticConverter,
                  body: ChangeNotifierProvider.value(
                    value: controller,
                    child: Watch((_) {
                      if (!controller.state.allowAutoCatLookup) {
                        return ManualCatLookupListMobileSubScreen(
                          isImageRequired: widget.isCatImageRequired,
                        );
                      }

                      return RoundedTabSelectorWidget(
                        tabs: menuItems,
                        widgets: [
                          CatLookupListSubScreen(
                            deviceType: widget.deviceType,
                            isImageRequired: widget.isCatImageRequired,
                          ),
                          ManualCatLookupListMobileSubScreen(
                            isImageRequired: widget.isCatImageRequired,
                          ),
                        ],
                        activeTab: selectedMenuSignal.value,
                        onChanged: (index) {
                          selectedMenuSignal.value = menuItems[index];
                        },
                      );
                    }),
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
                          territory: ElvTerritory.uk,
                          catLocation: x.location ?? '',
                          catClassification: x.catClassification ?? '',
                          onDelete: null,
                          onEdit: () async {
                            await elvStandardFlyout(
                              heading: context.l10n.editCAT,
                              context: context,
                              body: EditCatLookupCardSubScreen(
                                vehicleCatDetailModel: x,
                                controller: controller,
                                appConfig: appConfig,
                                deviceType: DeviceTypeEnum.mobile,
                                isImageRequired: widget.isCatImageRequired,
                              ),
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
