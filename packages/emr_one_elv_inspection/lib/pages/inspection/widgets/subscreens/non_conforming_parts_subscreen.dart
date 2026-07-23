import 'package:emr_flutter_theme/controls/emr_button.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class NonConformingPartsSubScreen extends StatelessWidget {
  const NonConformingPartsSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);
    final config = Provider.of<AppConfig>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.nonConformingParts,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: Insets.gutter,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            controller.state.selectedNonConformingParts.length,
            (index) {
              final selectedPart = controller
                  .state.selectedNonConformingParts.values
                  .elementAt(index);
              return InspectionNonConformingPartCardWidget(
                selectedPart: selectedPart,
                onDeletePart: () {
                  controller.deleteNonConformingParts(
                    selectedPart.partName,
                  );
                },
              );
            },
          ),
        ),
        const SizedBox(
          height: Insets.gutter,
        ),
        SizedBox(
          width: 220,
          child: EmrButton(
            label: context.l10n.addNonConformingPart,
            onPressed: () {
              MapEntry<String, VehicleNonConformingPartModel>?
                  selectedNonConforming;
              showDialog<void>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: Text(context.l10n.cancel),
                      ),
                      TextButton(
                        onPressed: () async {
                          if (selectedNonConforming == null) {
                            if (context.mounted) {
                              await EmrModal.showMessageBar(
                                context,
                                context.l10n.selectNonConformingValue,
                                messageType: MessageBarTypes.error,
                              );
                            }
                          } else {
                            final image = await ImagePicker().pickImage(
                              source: ImageSource.camera,
                            );

                            if (image != null) {
                              if (context.mounted) {
                                context.pop();
                              }
                              await controller.setNonConformingParts(
                                item: selectedNonConforming!,
                                file: image,
                                baseImagePath: config.mediaApi,
                              );
                            }
                          }
                        },
                        child: Text(context.l10n.takePhotoAndSave),
                      ),
                    ],
                    content: SizedBox(
                      width: 450,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: Insets.gutter / 2,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              height: Insets.gutter / 2,
                            ),
                            Text(
                              context.l10n.addNonConformingPart,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(
                              height: Insets.gutter,
                            ),
                            InspectionDropDownButton<
                                MapEntry<String,
                                    VehicleNonConformingPartModel>>(
                              header: context.l10n.nonConformingPart,
                              items: controller.state.nonConformingParts.entries
                                  .map(
                                    (x) => DropdownMenuItem<
                                        MapEntry<String,
                                            VehicleNonConformingPartModel>>(
                                      value: x,
                                      child: Text(x.value.partName),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (p0) {
                                if (p0 != null) {
                                  selectedNonConforming = p0;
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            backgroundColour: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
