import 'package:emr_flutter_theme/controls/emr_button.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/enums/inspection_image_enum.dart';
import 'package:emr_one_elv_inspection/enums/non_conforming_part_enum.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_dropdown_button_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/custom_widgets/inspection_non_conforming_part_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class NonConformingPartsSubScreen extends StatefulWidget {
  const NonConformingPartsSubScreen({super.key});

  @override
  State<NonConformingPartsSubScreen> createState() =>
      _NonConformingPartsSubScreenState();
}

class _NonConformingPartsSubScreenState
    extends State<NonConformingPartsSubScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(context);
    final nonConformingParts = controller
        .state
        .vehicleQuote
        .vehicleInfo
        .configuration
        .nonConformingParts;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.nonConformingParts,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: Insets.gutter),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(nonConformingParts.length, (index) {
            final selectedPart = nonConformingParts.elementAt(index);
            return InspectionNonConformingPartCardWidget(
              selectedPart: selectedPart,
              onDeletePart: () {
                controller.deleteNonConformingPart(selectedPart.partKey);
              },
            );
          }),
        ),
        const SizedBox(height: Insets.gutter),
        SizedBox(
          width: 220,
          child: EmrButton(
            label: context.l10n.addNonConformingPart,
            onPressed: () {
              NonConformingPartEnum? selectedNonConformingPartType;
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
                          if (selectedNonConformingPartType == null) {
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

                              await controller.setNonConformingPart(
                                imageType: InspectionImageEnum.values
                                    .firstWhere(
                                      (v) =>
                                          v.name ==
                                          selectedNonConformingPartType!.name,
                                    ),
                                file: image,
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
                            const SizedBox(height: Insets.gutter / 2),
                            Text(
                              context.l10n.addNonConformingPart,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(height: Insets.gutter),
                            InspectionDropDownButton<NonConformingPartEnum>(
                              header: context.l10n.nonConformingPart,
                              items: NonConformingPartEnum.values
                                  .map(
                                    (x) =>
                                        DropdownMenuItem<NonConformingPartEnum>(
                                          value: x,
                                          child: Text(x.name.toUpperCase()),
                                        ),
                                  )
                                  .toList(),
                              onChanged: (partType) {
                                if (partType != null) {
                                  selectedNonConformingPartType = partType;
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
