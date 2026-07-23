import 'dart:async';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class NonConformingPartsMobileSubScreen extends StatelessWidget {
  const NonConformingPartsMobileSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);
    final config = Provider.of<AppConfig>(context);
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
                MapEntry<String, VehicleNonConformingPartModel>?
                selectedNonConforming;

                await elvStandardFlyout(
                  context: context,
                  body: Column(
                    children: [
                      InspectionDropDownButton<
                        MapEntry<String, VehicleNonConformingPartModel>
                      >(
                        header: context.l10n.nonConformingPart,
                        items: controller.state.nonConformingParts.entries
                            .map(
                              (x) =>
                                  DropdownMenuItem<
                                    MapEntry<
                                      String,
                                      VehicleNonConformingPartModel
                                    >
                                  >(value: x, child: Text(x.value.partName)),
                            )
                            .toList(),
                        onChanged: (selectedPart) {
                          if (selectedPart != null) {
                            selectedNonConforming = selectedPart;
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
          children: controller.state.selectedNonConformingParts.entries.map((
            x,
          ) {
            final selectedPart = x.value;
            return InspectionNonConformingPartCardWidget(
              selectedPart: selectedPart,
              onDeletePart: () async {
                unawaited(
                  EmrDialog.busy(context, titleText: context.l10n.inProgress),
                );
                await controller.deleteNonConformingParts(
                  selectedPart.partName,
                );

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
