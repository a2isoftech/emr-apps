import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class ScheduleConfigurationForm extends StatelessWidget {
  const ScheduleConfigurationForm({
    required this.controller,
    required this.availableSchedules,
    super.key,
  });
  final ScheduleConfigurationController controller;
  final List<Schedule> availableSchedules;

  @override
  Widget build(BuildContext context) {
    return Column(
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

        EmrTextFormField(
          labelText: 'Description',
          binding: controller.description,
        ),
        const SizedBox(height: Insets.gutter),

        ValueListenableBuilder<List<DoorScheduleModel>>(
          valueListenable: controller.schedules,
          builder: (_, schedules, __) {
            return Column(
              children: [
                ...List.generate(schedules.length, (i) {
                  final schedule = schedules[i];

                  return Card(
                    margin: const EdgeInsets.only(bottom: Insets.gutter),
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: Column(
                        children: [
                          EmrPickerFormField(
                            labelText: 'Priority Level',
                            items: (_) => priorities(),
                            itemTitleText: (e) => e,
                            binding: schedule.priorityLevel,
                            validator: Validators.required,
                          ),

                          const SizedBox(height: Insets.gutter / 2),

                          /// Scheduled States
                          ValueListenableBuilder<List<ScheduledStateModel>>(
                            valueListenable: schedule.states,
                            builder: (_, states, __) {
                              return Column(
                                children: [
                                  ...List.generate(states.length, (j) {
                                    final state = states[j];

                                    return Card(
                                      margin: const EdgeInsets.only(
                                        bottom: Insets.gutter / 2,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(
                                          Insets.gutter / 2,
                                        ),
                                        child: Column(
                                          children: [
                                            /// Schedule Tokens (Multi Select)
                                            EmrMultiPickerFormField(
                                              labelText: 'Schedule Tokens',
                                              items: (_) => Future.value(
                                                availableSchedules,
                                              ),
                                              itemTitleText: (e) => e.name,
                                              binding: state.scheduleTokens,
                                              validator: Validators.required,
                                            ),

                                            const SizedBox(
                                              height: Insets.gutter / 2,
                                            ),

                                            EmrPickerFormField(
                                              labelText: 'Enter Action',
                                              items: (_) => doorActions(),
                                              itemTitleText: (e) => e,
                                              binding: state.enterAction,
                                              validator: Validators.required,
                                            ),

                                            if (states.length > 1)
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: IconButton(
                                                  icon: const Icon(
                                                    Icons.delete,
                                                  ),
                                                  onPressed: () {
                                                    final updated = [...states]
                                                      ..removeAt(j);
                                                    schedule.states.value =
                                                        updated;
                                                  },
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),

                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: TextButton(
                                      onPressed: () {
                                        schedule.states.value = [
                                          ...states,
                                          ScheduledStateModel(),
                                        ];
                                      },
                                      child: const Text('Add State'),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),

                          if (schedules.length > 1)
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  final updated = [...schedules]..removeAt(i);
                                  controller.schedules.value = updated;
                                },
                              ),
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
                      controller.schedules.value = [
                        ...schedules,
                        DoorScheduleModel(),
                      ];
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Add Door Schedule'),
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
