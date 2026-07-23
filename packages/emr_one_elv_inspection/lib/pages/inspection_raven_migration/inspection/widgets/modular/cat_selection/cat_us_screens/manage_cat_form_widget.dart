import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:emr_one_elv_inspection/enums/catalytic_converter_classification_enum.dart';
import 'package:emr_one_elv_inspection/enums/device_type_enum.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/catalytic_converter_configuration.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_dropdown_button_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ManageCatFormWidget extends StatefulWidget {
  const ManageCatFormWidget({
    required this.controller,
    this.catalyticConverter,
    this.deviceType = DeviceTypeEnum.desktop,
    this.isImageRequired = false,
    super.key,
  });

  final bool isImageRequired;
  final DeviceTypeEnum deviceType;
  final InspectionController controller;
  final CatalyticConverterConfiguration? catalyticConverter;

  @override
  State<ManageCatFormWidget> createState() => _ManageCatFormWidgetState();
}

class _ManageCatFormWidgetState extends State<ManageCatFormWidget> {
  late GlobalKey<FormState> formKey;
  late ValueNotifier<PartLocationEnum?> textCatLocationNotifier;
  late ValueNotifier<CatalyticConverterClassificationEnum?>
  textCatClassificationNotifier;

  @override
  void dispose() {
    textCatClassificationNotifier.dispose();
    textCatLocationNotifier.dispose();
    formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    textCatLocationNotifier = ValueNotifier(
      widget.catalyticConverter?.partInfo.partLocation,
    );
    textCatClassificationNotifier = ValueNotifier(
      widget.catalyticConverter?.classification,
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

                  if (widget.catalyticConverter == null) {
                    await widget.controller.addCatalyticConverter(
                      textCatClassificationNotifier.value!,
                      textCatLocationNotifier.value!,
                      file: file,
                    );
                  } else {
                    await widget.controller.updateCatalyticConverter(
                      widget.catalyticConverter!.partKey,
                      textCatClassificationNotifier.value!,
                      textCatLocationNotifier.value!,
                    );
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
        InspectionDropDownButton<PartLocationEnum>(
          onChanged: (partLocationEnum) {
            textCatLocationNotifier.value = partLocationEnum;
          },
          placeholder: context.l10n.select,
          selectedItem: textCatLocationNotifier.value,
          items: PartLocationEnum.values
              .where((p) => p != PartLocationEnum.unspecified)
              .map(
                (partLocationEnum) => DropdownMenuItem(
                  value: partLocationEnum,
                  child: Text(
                    partLocationEnum.label,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              )
              .toList(),
          header: context.l10n.catLocation,
          validator: (partLocationEnum) {
            if (partLocationEnum == null) {
              return context.l10n.enterCatLocation;
            }
            return null;
          },
        ),
        InspectionDropDownButton<CatalyticConverterClassificationEnum>(
          onChanged: (catClassification) {
            textCatClassificationNotifier.value = catClassification;
          },
          placeholder: context.l10n.select,
          selectedItem: textCatClassificationNotifier.value,
          items: CatalyticConverterClassificationEnum.values
              .where((p) => p != CatalyticConverterClassificationEnum.unknown)
              .map(
                (catClassification) => DropdownMenuItem(
                  value: catClassification,
                  child: Text(
                    catClassification.label,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              )
              .toList(),
          header: context.l10n.catClassification,
          validator: (catClassification) {
            if (catClassification == null) {
              return context.l10n.enterCatClassification;
            }
            return null;
          },
        ),
      ],
    );
  }
}
