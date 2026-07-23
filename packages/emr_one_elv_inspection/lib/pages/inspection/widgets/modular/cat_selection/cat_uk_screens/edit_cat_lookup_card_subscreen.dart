import 'dart:async';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/extensions/mod10_validator_extension.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class EditCatLookupCardSubScreen extends StatefulWidget {
  const EditCatLookupCardSubScreen({
    required this.vehicleCatDetailModel,
    required this.controller,
    required this.appConfig,
    this.isImageRequired = false,
    this.deviceType = DeviceTypeEnum.desktop,
    super.key,
  });

  final VehicleCatDetailModel vehicleCatDetailModel;
  final bool isImageRequired;
  final InspectionScreenController controller;
  final AppConfig appConfig;
  final DeviceTypeEnum deviceType;

  @override
  State<EditCatLookupCardSubScreen> createState() =>
      _EditCatLookupCardSubScreenState();
}

class _EditCatLookupCardSubScreenState
    extends State<EditCatLookupCardSubScreen> {
  late TextEditingController txtSerialNumberController;
  late TextEditingController txtSealNumberController;
  late String? location;
  late String? catClassification;
  late String? sealNumber;
  late String? serialNumber;
  late double catValue;

  late final String mediaApi;

  @override
  void initState() {
    super.initState();
    txtSealNumberController = TextEditingController(
      text: widget.vehicleCatDetailModel.sealNumber,
    );
    txtSerialNumberController = TextEditingController(
      text: widget.vehicleCatDetailModel.serialNumber,
    );
    location = widget.vehicleCatDetailModel.location;
    catClassification = widget.vehicleCatDetailModel.catClassification;
    sealNumber = widget.vehicleCatDetailModel.sealNumber;
    serialNumber = widget.vehicleCatDetailModel.serialNumber;
    catValue = widget.vehicleCatDetailModel.catValue ?? 0.00;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.controller.isSealNumberValid.value =
          (widget.vehicleCatDetailModel.sealNumber ?? '').isValidMod10Value();
      mediaApi = widget.appConfig.mediaApi;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.deviceType == DeviceTypeEnum.mobile) ...{
          Expanded(child: getEditCatView()),
        } else ...{
          getEditCatView(),
        },
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                widget.controller.isSealNumberUsed.value = false;
                if (Navigator.of(context).canPop()) {
                  context.pop();
                }
              },
              child: Text(context.l10n.cancel),
            ),
            Watch((ctx) {
              return TextButton(
                onPressed: widget.controller.isSealNumberValid.value
                    ? () async {
                        unawaited(
                          EmrDialog.busy(
                            context,
                            titleText: context.l10n.inProgress,
                          ),
                        );

                        final error = await widget.controller.updateUKCat(
                          selectedCat: widget.vehicleCatDetailModel,
                          catClassification: catClassification ?? '',
                          catValue: catValue,
                          location: location ?? '',
                          sealNumber: sealNumber ?? '',
                          serialNumber: serialNumber ?? '',
                          imageBaseUrl: mediaApi,
                          isImageRequired: widget.isImageRequired,
                        );

                        if (error.isNotEmpty) {
                          if (error.contains('SEAL_NUMBER_IS_USED')) {
                            widget.controller.isSealNumberUsed.value = true;
                          }
                          if (context.mounted) context.pop();
                          return;
                        }

                        if (context.mounted && Navigator.of(context).canPop()) {
                          context.pop();
                          context.pop();
                        }
                      }
                    : null,
                child: Text(context.l10n.save),
              );
            }),
          ],
        ),
      ],
    );
  }

  Widget getEditCatView() {
    return GridView(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.deviceType == DeviceTypeEnum.mobile ? 1 : 2,
        crossAxisSpacing: Insets.gutter / 2,
        mainAxisSpacing: Insets.gutter / 2,
        mainAxisExtent: 70,
      ),
      children: [
        InspectionDropDownButton(
          onChanged: (p0) {
            location = p0;
          },
          placeholder: context.l10n.select,
          selectedItem: widget.vehicleCatDetailModel.location,
          items: widget.controller.state.catLocationList.entries
              .map(
                (x) => DropdownMenuItem(
                  value: x.value,
                  child: Text(
                    x.value,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              )
              .toList(),
          header: context.l10n.catLocation,
        ),
        InspectionDropDownButton(
          onChanged: (p0) {
            catClassification = p0;
          },
          placeholder: context.l10n.select,
          selectedItem: widget.vehicleCatDetailModel.catClassification,
          items: widget.controller.state.catClassificationList.entries
              .map(
                (x) => DropdownMenuItem(
                  value: x.value,
                  child: Text(
                    x.value,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              )
              .toList(),
          header: context.l10n.catClassification,
        ),
        Watch((ctx) {
          return InspectionTextForm(
            txtController: txtSealNumberController,
            header: context.l10n.sealNumber,
            isDisabled: widget.vehicleCatDetailModel.isManual,
            placeholder: context.l10n.sealNumber,
            errorText: widget.controller.isSealNumberUsed.value
                ? context.l10n.sealNumberIsUsed
                : widget.controller.isSealNumberValid.value
                ? null
                : context.l10n.invalidSealNumber,
            validator: (p0) {
              return null;
            },
            onChanged: (p0) {
              sealNumber = p0;
              widget.controller.isSealNumberValid.value = p0
                  .isValidMod10Value();
              widget.controller.isSealNumberUsed.value = false;
            },
          );
        }),
        InspectionTextForm(
          txtController: txtSerialNumberController,
          header: context.l10n.serialNumber,
          placeholder: context.l10n.serialNumber,
          validator: (p0) {
            return null;
          },
          onChanged: (p0) {
            serialNumber = p0;
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    txtSerialNumberController.dispose();
    txtSealNumberController.dispose();
    super.dispose();
  }
}
