import 'dart:async';
import 'dart:typed_data';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart' hide InspectionTabs;
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/inspection_modular_widgets.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/subscreens/inspection_subscreens_widgets.dart';
import 'package:emr_one_elv_quote_api/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class VehiclePartsSubScreenMobile extends StatefulWidget {
  const VehiclePartsSubScreenMobile({
    this.deviceType = DeviceTypeEnum.mobile,
    super.key,
  });

  final DeviceTypeEnum deviceType;

  @override
  State<VehiclePartsSubScreenMobile> createState() =>
      _VehiclePartsSubScreenMobileState();
}

class _VehiclePartsSubScreenMobileState
    extends State<VehiclePartsSubScreenMobile> {
  late ValueNotifier<bool> isLoadingNotifier;
  late ValueNotifier<Uint8List?> batteryFileNotifier;

  late final bool isSaveButtonVisible;

  @override
  void initState() {
    super.initState();
    isLoadingNotifier = ValueNotifier(false);
    batteryFileNotifier = ValueNotifier(null);
    final config = Provider.of<AppConfig>(context, listen: false);
    final controller = Provider.of<InspectionScreenController>(
      context,
      listen: false,
    );
    isSaveButtonVisible = config.elvConfigs.any(
      (f) =>
          f ==
          (controller.activeTerritory == ElvTerritory.usa
              ? InspectionElvConfigConstants.usaInspectionSaveButtonVisible
              : InspectionElvConfigConstants.ukInspectionSaveButtonVisible),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);
    final config = Provider.of<AppConfig>(context, listen: false);
    final vehicle = controller.state.quoteToInspect;
    final loaderNotifier = ValueNotifier(false);

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
                        vehicle?.vehicleConfiguration?.alloyWheels ?? -1,
                      },
                      onSelected: (Set<int?> newSelection) async {
                        await controller.updateAlloys(newSelection.first);
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
                        vehicle?.vehicleConfiguration?.steelWheels ?? -1,
                      },
                      onSelected: (Set<int?> newSelection) async {
                        await controller.updateSteels(newSelection.first);
                      },
                    ),
                  ),
                  if (controller.activeTerritory.canShowChrome(
                    ukAllowChromeWheels: controller.state.ukAllowChromeWheels,
                    usaAllowChromeWheels: controller.state.usaAllowChromeWheels,
                  )) ...[
                    const SizedBox(height: Insets.gutter / 2),
                    _vehiclePartItemWidget(
                      title: '${context.l10n.chromes} ${context.l10n.wheels}',
                      child: InspectionMultiSelectorButton(
                        buttons: List.generate(6, (index) => index.toString()),
                        enabledFunction: controller.chromeSegmentEnabled,
                        selected: <int>{
                          vehicle?.vehicleConfiguration?.chromeWheels ?? -1,
                        },
                        onSelected: (Set<int?> newSelection) async {
                          await controller.updateChromes(newSelection.first);
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
                        vehicle?.vehicleConfiguration?.hasBattery,
                      },
                      onSelected: (Set<bool?> newSelection) async {
                        XFile? image;

                        if (controller.state.batteryImageRequired) {
                          image = await ImagePicker().pickImage(
                            source: ImageSource.camera,
                          );
                          if (image == null) return;
                        }

                        await controller.updateBattery(
                          value: newSelection.first,
                          file: image,
                          imageBaseUrl: config.mediaApi,
                        );

                        if (image != null) {
                          batteryFileNotifier.value = await image.readAsBytes();
                        }

                        loaderNotifier.value = false;
                      },
                    ),
                  ),
                  if (controller.activeTerritory == ElvTerritory.uk) ...[
                    if (controller.state.batteryImageRequired) ...{
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(context.l10n.photos),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: FutureBuilder(
                          future: controller.getDocument(
                            documentType: VehicleDocumentEnums.battery,
                            serverImagePath: controller
                                .state
                                .quoteToInspect!
                                .vehicleConfiguration!
                                .batteryImage,
                          ),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState !=
                                ConnectionState.done) {
                              return const SizedBox(
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          color: Theme.of(
                                            context,
                                          ).disabledColor,
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
                    const Divider(),
                    CatalyticConverterUKMobileSubScreen(
                      isCatImageRequired: controller.state.catImageRequired,
                      deviceType: DeviceTypeEnum.mobile,
                    ),
                    const Divider(),
                    const NonConformingPartsMobileSubScreen(),
                  ],
                  const SizedBox(height: Insets.gutter / 2),
                  if (controller.activeTerritory == ElvTerritory.usa) ...[
                    if (controller.state.batteryImageRequired) ...{
                      Text(context.l10n.photos),
                      FutureBuilder(
                        future: controller.getDocument(
                          documentType: VehicleDocumentEnums.battery,
                          serverImagePath: controller
                              .state
                              .quoteToInspect!
                              .vehicleConfiguration!
                              .batteryImage,
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
                    },
                    CatalyticConverterUSMobileSubScreen(
                      isCatImageRequired: controller.state.catImageRequired,
                      deviceType: widget.deviceType,
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
              deviceType: widget.deviceType,
              backText: context.l10n.back,
              nextText: context.l10n.complete,
              saveText: isSaveButtonVisible ? context.l10n.save : '',
              isLoadingNotifier: isLoadingNotifier,
              onNext: _doSomething,
              onSave: !isSaveButtonVisible
                  ? null
                  : () {
                      EmrDialog.busy(context, titleText: context.l10n.saving);
                      controller
                          .saveInspection()
                          .then((value) {
                            if (context.mounted) {
                              if (!value.isOk) {
                                EmrLogger.error(value.errorMessage);
                              }
                              EmrDialog.ok(
                                context,
                                titleText: value.isOk
                                    ? context.l10n.success
                                    : context.l10n.error,
                                contentText: value.isOk
                                    ? context
                                          .l10n
                                          .inspectionProgressSavedSuccessfully
                                    : context.l10n.errSomethingWentWrong,
                                onOk: () {
                                  Navigator.of(
                                    context,
                                    rootNavigator: true,
                                  ).pop();
                                },
                              );
                            }
                          })
                          .catchError((Object error, StackTrace stackTrace) {
                            if (context.mounted) {
                              Navigator.of(context, rootNavigator: true).pop();
                            }
                            if (context.mounted) {
                              EmrLogger.error(
                                error.toString(),
                                stackTrace: stackTrace,
                              );
                              EmrDialog.ok(
                                context,
                                titleText: context.l10n.failed,
                                contentText:
                                    context.l10n.inspectionFailedToSave,
                              );
                            }
                          });
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

  Future<void> _doSomething() async {
    final controller = Provider.of<InspectionScreenController>(
      context,
      listen: false,
    );

    final message =
        '''#${controller.activeTerritory == ElvTerritory.uk ? '${context.l10n.vrn} ${controller.state.quoteToInspect!.vehicleDescription.vehicleReg!}' : '${context.l10n.vin} ${controller.state.quoteToInspect!.vehicleDescription.vin!}'}''';

    final canSubmit = await controller.canSubmit();
    if (canSubmit != null && mounted) {
      switch (canSubmit) {
        case CanSubmitStateEnum.hasBattery:
          await EmrDialog.ok(
            context,
            titleText: context.l10n.batterySelectionRequired,
            contentText:
                context.l10n.pleaseSelectYesNoForTheBatteryBeforeProceeding,
          );

        case CanSubmitStateEnum.wheels:
          await EmrDialog.ok(
            context,
            titleText: context.l10n.requiredField,
            contentText: context.l10n.pleaseSelectWheels,
          );
        case CanSubmitStateEnum.vehicleIdentificationDocument:
          {
            controller.changeTab(InspectionTabs.vehiclePictures);
            await EmrDialog.ok(
              context,
              titleText: controller.activeTerritory == ElvTerritory.uk
                  ? context.l10n.uploadVRNDocumentAlertMessage
                  : context.l10n.uploadVINDocumentAlertMessage,
            );
          }
        case CanSubmitStateEnum.vehicleFrontAndBackDocument:
          {
            controller.changeTab(InspectionTabs.vehiclePictures);
            await EmrDialog.ok(
              context,
              titleText: context.l10n.pleaseAddVehicleFrontAndBackImages,
            );
          }
      }
    } else {
      if (!mounted) return;

      await EmrDialog.noYes(
        context,
        titleText: context.l10n.completeInspection,
        contentText: context.l10n.areYouSure,     
        onYes: () async {
          final response = await controller.completeInspection();

          if (response && mounted) {
            await EmrDialog.ok(
              context,
              titleText: context.l10n.inspectionComplete,
              contentText: context.l10n.inspectionHasBeenSuccessfullyCompleted(
                message,
              ),
              onOk: () {
                if (!mounted) return;
                context.pop();
              },
            );
          }
        },
      );
    }
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
}
