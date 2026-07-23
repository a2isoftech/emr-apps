import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddCatFormWidget extends StatefulWidget {
  const AddCatFormWidget({
    required this.controller,
    required this.appConfig,
    required this.vehicleCat,
    this.deviceType = DeviceTypeEnum.desktop,
    this.editCat = true,
    this.isImageRequired = false,
    super.key,
  });

  final InspectionScreenController controller;
  final AppConfig appConfig;
  final VehicleCatDetailModel vehicleCat;
  final DeviceTypeEnum deviceType;
  final bool editCat;
  final bool isImageRequired;

  @override
  State<AddCatFormWidget> createState() => _AddCatFormWidgetState();
}

class _AddCatFormWidgetState extends State<AddCatFormWidget> {
  late GlobalKey<FormState> formKey;
  late ValueNotifier<String?> textCatLocationNotifier;
  late ValueNotifier<String?> textCatClassificationNotifier;

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    textCatLocationNotifier = ValueNotifier(widget.vehicleCat.location);
    textCatClassificationNotifier = ValueNotifier(
      widget.vehicleCat.catClassification,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.deviceType == DeviceTypeEnum.mobile) ...{
            Expanded(child: getCATForm()),
          } else ...{
            getCATForm(),
          },
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(context.l10n.cancel),
              ),
              TextButton(
                onPressed: () async {
                  if (!(formKey.currentState?.validate() ?? false)) return;

                  if (context.mounted) {
                    context.pop();
                  }

                  XFile? file;
                  if (widget.isImageRequired) {
                    file = await ImagePicker().pickImage(
                      source: ImageSource.camera,
                    );
                    if (file == null) return; // User cancelled image capture
                  }

                  await widget.controller.selectUSCats(
                    selectedCat: VehicleCatDetailModel(
                      vehicleCatId: widget.vehicleCat.vehicleCatId,
                      location: textCatLocationNotifier.value,
                      catClassification: textCatClassificationNotifier.value,
                    ),
                    imageBaseUrl: widget.appConfig.mediaApi,
                    file: file,
                  );

                  if (context.mounted) {
                    context.pop();
                  }
                },
                child: Text(
                  widget.isImageRequired
                      ? context.l10n.takePhotoAndSave
                      : context.l10n.save,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getCATForm() {
    return GridView(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.deviceType == DeviceTypeEnum.mobile ? 1 : 2,
        crossAxisSpacing: Insets.gutter / 2,
        mainAxisSpacing: Insets.gutter / 2,
        mainAxisExtent: 60,
      ),
      children: [
        InspectionDropDownButton(
          onChanged: (catLocation) {
            textCatLocationNotifier.value = catLocation;
          },
          placeholder: context.l10n.select,
          selectedItem: textCatLocationNotifier.value,
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
          validator: (value) {
            if ((value ?? '').isEmpty) {
              return context.l10n.enterCatLocation;
            }
            if (value!.length < 3) {
              return context.l10n.catLocationTextValidation;
            }
            return null;
          },
        ),
        InspectionDropDownButton(
          onChanged: (catClassification) {
            textCatClassificationNotifier.value = catClassification;
          },
          placeholder: context.l10n.select,
          selectedItem: textCatClassificationNotifier.value,
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
          validator: (value) {
            if ((value ?? '').isEmpty) {
              return context.l10n.enterCatClassification;
            }
            if (value!.length < 3) {
              return context.l10n.catClassificationTextValidation;
            }
            return null;
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    textCatClassificationNotifier.dispose();
    textCatLocationNotifier.dispose();
    formKey.currentState?.dispose();
    super.dispose();
  }
}
