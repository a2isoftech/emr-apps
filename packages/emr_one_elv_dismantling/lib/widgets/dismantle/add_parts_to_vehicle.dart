import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/widgets/dialog/elv_dialog.dart';
import 'package:emr_one_elv_dismantling/extensions/enum_part_type_extension.dart';
import 'package:emr_one_elv_dismantling/styles/part_box_color.dart';
import 'package:emr_one_elv_dismantling/widgets/dismantle/responsive_wrap_boxes.dart';
import 'package:flutter/material.dart';

class AddPartsToVehicle extends StatefulWidget {
  const AddPartsToVehicle({
    required this.groupedPartTypes,
    required this.onSave,
    required this.enabled,
    super.key,
  });

  final Map<String, List<Enum$PartType>> groupedPartTypes;
  final Future<void> Function(
    List<Enum$PartType> partsToAdd,
  ) onSave;
  final bool enabled;

  @override
  State<AddPartsToVehicle> createState() => _AddPartsToVehicleState();
}

class _AddPartsToVehicleState extends State<AddPartsToVehicle> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: !widget.enabled
          ? null
          : () {
              final partsToAdd = <Enum$PartType>[];

              ElvDialog.action(
                context,
                titleText: context.l10n.addNewPart,
                content: StatefulBuilder(
                  builder: (context, setState) {
                    return SizedBox(
                      width: 550,
                      height: 475,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widget.groupedPartTypes.entries.map((entry) {
                          final category = entry.key;
                          final partTypes = entry.value;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: Insets.gutter / 2,
                              ),
                              Text(
                                category,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              const SizedBox(
                                height: Insets.gutter / 2,
                              ),
                              ResponsiveWrapBoxes(
                                children: partTypes
                                    .map(
                                      (partType) => InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (partsToAdd.contains(partType)) {
                                              partsToAdd.remove(partType);
                                            } else {
                                              partsToAdd.add(partType);
                                            }
                                          });
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(
                                            Insets.gutter / 2,
                                          ),
                                          decoration: BoxDecoration(
                                            color: partBoxColor(
                                              isSelected: partsToAdd.contains(
                                                partType,
                                              ),
                                              context: context,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              Insets.gutter / 4,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                partType.formattedName,
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    );
                  },
                ),
                actions: [
                  DialogAction(
                    context.l10n.cancel,
                    Navigator.of(context).pop,
                  ),
                  DialogAction(context.l10n.save, () {
                    widget.onSave(partsToAdd);
                    Navigator.of(context).pop();
                  }),
                ],
              );
            },
      child: Text(context.l10n.addNewPart),
    );
  }
}
