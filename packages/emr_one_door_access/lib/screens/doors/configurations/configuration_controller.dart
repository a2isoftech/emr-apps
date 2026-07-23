import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class ConfigurationController {
  ConfigurationController({
    required this.priorityConfigurationController,
    required this.scheduleConfigurationController,
    required this.doorAccessService,
    required this.formKey,
  });

  final PriorityConfigurationController priorityConfigurationController;
  final ScheduleConfigurationController scheduleConfigurationController;
  final DoorAccessService doorAccessService;
  final GlobalKey<FormState> formKey;

  final ValueNotifier<List<String>> validationErrors = ValueNotifier([]);
  String accessControllerId = '';
  Door? door;

  void init(String accessControllerId, Door? door, List<Schedule> schedules) {
    this.door = door;
    this.accessControllerId = accessControllerId;
    if (door != null) {
      final priorityConfiguration =
          door.priorityConfiguration ??
          priorityConfigurationController.getDefault();
      priorityConfigurationController.name.value = priorityConfiguration.name;
      priorityConfigurationController.defaultPriority.value =
          priorityConfiguration.defaultPriority;
      priorityConfigurationController.externalId.value =
          priorityConfiguration.externalId;
      priorityConfigurationController.actions.value = priorityConfiguration
          .doorPriorityActions
          .map((a) {
            final pam = DoorPriorityActionModel();
            pam.doorAction.value = a.doorAction;
            pam.priorityLevel.value = a.priorityLevel;
            return pam;
          })
          .toList();

      final scheduleConfiguration =
          door.scheduleConfiguration ??
          scheduleConfigurationController.getDefault();
      scheduleConfigurationController.name.value = scheduleConfiguration.name;
      scheduleConfigurationController.description.value =
          scheduleConfiguration.description;
      scheduleConfigurationController.externalId.value =
          scheduleConfiguration.externalId;
      scheduleConfigurationController.schedules.value = scheduleConfiguration
          .doorSchedule
          .map((a) {
            final pam = DoorScheduleModel();
            pam.priorityLevel.value = a.priorityLevel;
            pam.states.value = a.scheduledState.map((x) {
              final s = ScheduledStateModel();
              s.enterAction.value = x.enterAction;
              s.scheduleTokens.value = schedules
                  .where((s) => x.scheduleToken.contains(s.token))
                  .toList();
              return s;
            }).toList();
            return pam;
          })
          .toList();
    }
  }

  Future<(bool, String)> update() async {
    final errors = <String>[];

    final isValid = formKey.currentState?.validate() ?? false;

    /// Custom deep validation (important)
    if (priorityConfigurationController.actions.value.isEmpty) {
      errors.add('At least one priority action is required');
    }

    if (scheduleConfigurationController.schedules.value.isEmpty) {
      errors.add('At least one door schedule is required');
    }

    validationErrors.value = errors;

    if (isValid && errors.isEmpty && door != null) {
      final result = await doorAccessService.accessControllersService
          .upsertFullDoorConfiguration(
            input: Input$UpsertFullDoorConfigurationInput(
              accessControllerId: accessControllerId,
              doorExternalId: door!.externalId,
              doorPriorityConfiguration: Input$DoorPriorityConfigurationInput(
                externalId:
                    priorityConfigurationController.externalId.value ?? '',
                name: priorityConfigurationController.name.value ?? '',
                defaultPriority:
                    priorityConfigurationController.defaultPriority.value ?? '',
                doorPriorityAction: priorityConfigurationController
                    .actions
                    .value
                    .map(
                      (a) => Input$DoorPriorityActionInput(
                        priorityLevel: a.priorityLevel.value ?? '',
                        doorAction: a.doorAction.value ?? '',
                      ),
                    )
                    .toList(),
              ),
              doorScheduleConfiguration: Input$DoorScheduleConfigurationInput(
                externalId:
                    scheduleConfigurationController.externalId.value ?? '',
                name: scheduleConfigurationController.name.value ?? '',
                description:
                    scheduleConfigurationController.description.value ?? '',
                doorSchedule: scheduleConfigurationController.schedules.value
                    .map(
                      (s) => Input$DoorScheduleItemInput(
                        priorityLevel: s.priorityLevel.value ?? '',
                        scheduledState: s.states.value
                            .map(
                              (x) => Input$DoorScheduledStateInput(
                                scheduleToken: x.scheduleTokens.value
                                    .map((s) => s.token)
                                    .toList(),
                                enterAction: x.enterAction.value ?? '',
                              ),
                            )
                            .toList(),
                      ),
                    )
                    .toList(),
              ),
            ),
          );

      return (result, '');
    }

    return (false, errors.join(','));
  }
}
