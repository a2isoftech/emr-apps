import 'dart:async';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_core/models/enums/part_type_enum.dart';
import 'package:emr_one_elv_inspection/enums/device_type_enum.dart';
import 'package:emr_one_elv_inspection/enums/inspection_image_enum.dart';
import 'package:emr_one_elv_inspection/enums/inspection_tabs.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/vehicle_part_configuration.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_footer_button_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_multi_selector.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/parts/vehicle_part_bool_selector.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/modular/cat_selection/catalytic_converter_uk_mobile_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/modular/cat_selection/catalytic_converter_us_mobile_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/subscreens/non_conforming_parts_mobile_subscreen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class VehiclePartsSubScreenMobile extends StatefulWidget {
  const VehiclePartsSubScreenMobile({super.key});

  @override
  State<VehiclePartsSubScreenMobile> createState() =>
      _VehiclePartsSubScreenMobileState();
}

class _VehiclePartsSubScreenMobileState
    extends State<VehiclePartsSubScreenMobile> {
  late ValueNotifier<Uint8List?> batteryFileNotifier;
  late ValueNotifier<bool> isLoadingNotifier;

  @override
  void initState() {
    super.initState();
    batteryFileNotifier = ValueNotifier(null);
    isLoadingNotifier = ValueNotifier(false);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(context);
    final parts = controller.state.vehicleQuote.vehicleInfo.configuration.parts;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
              child: Column(
                children: [
                  _vehiclePartItemWidget(
                    title: '${context.l10n.alloys} ${context.l10n.wheels}',
                    child: InspectionMultiSelectorButton(
                      buttons: List.generate(6, (index) => index.toString()),
                      enabledFunction: controller.alloySegmentEnabled,
                      selected: <int>{
                        parts
                            .where(
                              (p) =>
                                  p.partInfo.partType ==
                                  PartTypeEnum.alloyWheel,
                            )
                            .length,
                      },
                      onSelected: (Set<int?> newSelection) async {
                        //await controller.updateAlloys(newSelection.first);
                      },
                    ),
                  ),
                  const SizedBox(height: Insets.gutter / 2),
                  _vehiclePartItemWidget(
                    title: '${context.l10n.steels} ${context.l10n.wheels}',
                    child: InspectionMultiSelectorButton(
                      buttons: List.generate(6, (index) => index.toString()),
                      enabledFunction: controller.steelSegmentEnabled,
                      selected: <int>{
                        parts
                            .where(
                              (p) =>
                                  p.partInfo.partType ==
                                  PartTypeEnum.steelWheel,
                            )
                            .length,
                      },
                      onSelected: (Set<int?> newSelection) async {
                        //await controller.updateSteels(newSelection.first);
                      },
                    ),
                  ),
                  if (controller.activeTerritory.canShowChrome(
                    ukAllowChromeWheels: controller.config.ukAllowChromeWheels,
                    usaAllowChromeWheels:
                        controller.config.usaAllowChromeWheels,
                  )) ...[
                    const SizedBox(height: Insets.gutter / 2),
                    _vehiclePartItemWidget(
                      title: '${context.l10n.chromes} ${context.l10n.wheels}',
                      child: InspectionMultiSelectorButton(
                        buttons: List.generate(6, (index) => index.toString()),
                        enabledFunction: controller.chromeSegmentEnabled,
                        selected: <int>{
                          parts
                              .where(
                                (p) =>
                                    p.partInfo.partType ==
                                    PartTypeEnum.chromeWheel,
                              )
                              .length,
                        },
                        onSelected: (Set<int?> newSelection) async {
                          //await controller.updateChromes(newSelection.first);
                        },
                      ),
                    ),
                  ],
                  const SizedBox(height: Insets.gutter / 2),
                  _vehiclePartItemWidget(
                    title: context.l10n.battery,
                    child: VehiclePartBoolSelector(
                      enabledFunction: (int i) {
                        return true;
                      },
                      selected: <bool?>{
                        _getBatterySelectedStatus(
                          controller.config.batteryImageRequired,
                          parts.firstWhereOrNull(
                            (p) => p.partInfo.partType == PartTypeEnum.battery,
                          ),
                          controller
                              .state
                              .vehicleQuote
                              .vehicleInfo
                              .configuration
                              .hasBattery,
                        ),
                      },
                      onSelected: (Set<bool?> newSelection) async {
                        XFile? image;

                        if (controller.config.batteryImageRequired) {
                          image = await ImagePicker().pickImage(
                            source: ImageSource.camera,
                          );

                          if (image == null) {
                            return;
                          }
                        }

                        final response = await controller.updateBatteryStatus(
                          hasBattery: newSelection.single ?? false,
                          file: image,
                        );

                        if (response) {
                          batteryFileNotifier.value = await image
                              ?.readAsBytes();
                        }
                      },
                    ),
                  ),
                  if (controller.config.batteryImageRequired) ...{
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(context.l10n.photos),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FutureBuilder(
                        future: controller.getDocument(
                          imageType: InspectionImageEnum.battery,
                          serverImagePath: parts
                              .firstWhereOrNull(
                                (p) =>
                                    p.partInfo.partType == PartTypeEnum.battery,
                              )
                              ?.partPhotos
                              .firstOrNull
                              ?.url,
                        ),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState !=
                              ConnectionState.done) {
                            return const SizedBox(
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            batteryFileNotifier.value = snapshot.data;
                          }
                          return ValueListenableBuilder(
                            valueListenable: batteryFileNotifier,
                            builder: (context, value, child) {
                              if (value == null) {
                                return Text(
                                  context.l10n.noPhotosAdded,
                                  style: Theme.of(context).textTheme.bodySmall!
                                      .copyWith(
                                        color: Theme.of(context).disabledColor,
                                      ),
                                );
                              }
                              return SizedBox(
                                width: 150,
                                height: 150,
                                child: Image.memory(value),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  },
                  if (controller.activeTerritory == ElvTerritory.uk) ...[
                    const Divider(),
                    CatalyticConverterUKMobileSubScreen(
                      isCatImageRequired: controller.config.catImageRequired,
                      deviceType: DeviceTypeEnum.mobile,
                    ),
                    const Divider(),
                    const NonConformingPartsMobileSubScreen(),
                  ],
                  const SizedBox(height: Insets.gutter / 2),
                  if (controller.activeTerritory == ElvTerritory.usa) ...[
                    CatalyticConverterUSMobileSubScreen(
                      isCatImageRequired: controller.config.catImageRequired,
                      deviceType: DeviceTypeEnum.mobile,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
          child: Align(
            alignment: Alignment.bottomRight,
            child: InspectionFooterButtons(
              deviceType: DeviceTypeEnum.mobile,
              backText: context.l10n.back,
              nextText: context.l10n.complete,
              saveText: controller.config.saveButtonVisible
                  ? context.l10n.save
                  : '',
              isLoadingNotifier: isLoadingNotifier,
              onNext: _completeInspection,
              onSave: !controller.config.saveButtonVisible
                  ? null
                  : () async {
                      unawaited(
                        EmrDialog.busy(context, titleText: context.l10n.saving),
                      );
                      await _saveInspection();
                    },
              onBack: () => controller.changeTab(
                controller.activeTerritory == ElvTerritory.uk
                    ? InspectionTabs.documents
                    : InspectionTabs.vehiclePictures,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _vehiclePartItemWidget({
    required String title,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: Insets.gutter / 3),
        child,
      ],
    );
  }

  bool? _getBatterySelectedStatus(
    bool batteryImageRequired,
    VehiclePartConfiguration? batteryPart,
    bool hasBattery,
  ) {
    if (batteryPart == null) {
      return null;
    }
    if (batteryImageRequired && batteryPart.partPhotos.isEmpty) {
      return null;
    }
    return hasBattery;
  }

  Future<void> _completeInspection() async {}
  Future<void> _saveInspection() async {}
}
