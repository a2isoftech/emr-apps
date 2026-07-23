import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/widgets/flyout/elv_flyout_builder.dart';
import 'package:emr_one_elv_inspection/enums/inspection_image_enum.dart';
import 'package:emr_one_elv_inspection/enums/non_conforming_part_enum.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_dropdown_button_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/custom_widgets/inspection_non_conforming_part_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class NonConformingPartsMobileSubScreen extends StatefulWidget {
  const NonConformingPartsMobileSubScreen({super.key});

  @override
  State<NonConformingPartsMobileSubScreen> createState() =>
      _NonConformingPartsMobileSubScreenState();
}

class _NonConformingPartsMobileSubScreenState
    extends State<NonConformingPartsMobileSubScreen> {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                context.l10n.nonConformingParts,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            FilledButton(
              onPressed: () async {
                NonConformingPartEnum? selectedNonConformingPartType;

                await elvStandardFlyout(
                  context: context,
                  body: Column(
                    children: [
                      InspectionDropDownButton<NonConformingPartEnum>(
                        header: context.l10n.nonConformingPart,
                        items: NonConformingPartEnum.values
                            .map(
                              (x) => DropdownMenuItem<NonConformingPartEnum>(
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
                      const Spacer(),
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
                              unawaited(
                                EmrDialog.busy(
                                  context,
                                  titleText: context.l10n.inProgress,
                                ),
                              );

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
                                              selectedNonConformingPartType!
                                                  .name,
                                        ),
                                    file: image,
                                  );
                                }
                                // hide busy dialog
                                if (context.mounted) context.pop();
                              }
                            },
                            child: Text(context.l10n.takePhotoAndSave),
                          ),
                        ],
                      ),
                    ],
                  ),
                  heading: context.l10n.addNonConformingPart,
                );
              },
              child: Text(context.l10n.addPart),
            ),
          ],
        ),
        Wrap(
          spacing: Insets.gutter / 2,
          runSpacing: Insets.gutter / 2,
          children: nonConformingParts.map((part) {
            final selectedPart = part;
            return InspectionNonConformingPartCardWidget(
              selectedPart: selectedPart,
              onDeletePart: () async {
                unawaited(
                  EmrDialog.busy(context, titleText: context.l10n.inProgress),
                );
                await controller.deleteNonConformingPart(selectedPart.partKey);

                // hide busy dialog
                if (context.mounted) context.pop();
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
