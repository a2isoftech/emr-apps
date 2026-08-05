import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class PriorityConfigurationForm extends StatelessWidget {
  const PriorityConfigurationForm({required this.controller, super.key});
  final PriorityConfigurationController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EmrTextFormField(
          labelText: 'External Id',
          binding: controller.externalId,
          validator: Validators.required,
        ),
        const SizedBox(height: Insets.gutter),

        EmrTextFormField(
          labelText: 'Name',
          binding: controller.name,
          validator: Validators.required,
        ),
        const SizedBox(height: Insets.gutter),

        EmrPickerFormField(
          labelText: 'Default Priority',
          items: (_) => priorities(),
          itemTitleText: (item) => item,
          binding: controller.defaultPriority,
          validator: Validators.required,
        ),

        const SizedBox(height: Insets.gutter),

        /// Dynamic list
        ValueListenableBuilder<List<DoorPriorityActionModel>>(
          valueListenable: controller.actions,
          builder: (_, actions, __) {
            return Column(
              children: [
                ...List.generate(actions.length, (index) {
                  final item = actions[index];

                  return Card(
                    margin: const EdgeInsets.only(bottom: Insets.gutter),
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: Row(
                        children: [
                          Expanded(
                            child: EmrPickerFormField(
                              labelText: 'Priority Level',
                              items: (_) => priorities(),
                              itemTitleText: (e) => e,
                              binding: item.priorityLevel,
                              validator: Validators.required,
                            ),
                          ),
                          const SizedBox(width: Insets.gutter / 2),

                          Expanded(
                            child: EmrPickerFormField(
                              labelText: 'Door Action',
                              items: (_) => doorActions(),
                              itemTitleText: (e) => e,
                              binding: item.doorAction,
                              validator: Validators.required,
                            ),
                          ),

                          const SizedBox(width: Insets.gutter / 2),

                          if (actions.length > 1)
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                final updated = [...actions]..removeAt(index);
                                controller.actions.value = updated;
                              },
                            ),
                        ],
                      ),
                    ),
                  );
                }),

                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton.icon(
                    onPressed: () {
                      controller.actions.value = [
                        ...actions,
                        DoorPriorityActionModel(),
                      ];
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Add Action'),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
