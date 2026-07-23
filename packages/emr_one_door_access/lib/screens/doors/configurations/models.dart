import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/models/door_schedule_state.dart';
import 'package:flutter/material.dart';

Future<List<String>> priorities() =>
    Future.value(['Highest', 'High', 'Medium', 'Low', 'Lowest']);
Future<List<String>> doorActions() =>
    Future.value(['Release', 'Lock', 'Unlock']);

class DoorPriorityActionModel {
  ValueNotifier<String?> priorityLevel = ValueNotifier(null);
  ValueNotifier<String?> doorAction = ValueNotifier(null);
}

class PriorityConfigurationController {
  ValueNotifier<String?> externalId = ValueNotifier(null);
  ValueNotifier<String?> name = ValueNotifier(null);
  ValueNotifier<String?> defaultPriority = ValueNotifier(null);
  ValueNotifier<List<DoorPriorityActionModel>> actions = ValueNotifier([
    DoorPriorityActionModel(),
  ]);

  DoorPriorityConfiguration getDefault() {
    return DoorPriorityConfiguration(
      defaultPriority: 'Medium',
      externalId: 'EmrStandardPriorityConfiguration_Dummy',
      name: 'Emr Standard Priority Configuration',
      doorPriorityActions: [
        DoorPriorityAction(priorityLevel: 'High', doorAction: 'Release'),
        DoorPriorityAction(priorityLevel: 'Medium', doorAction: 'Lock'),
      ],
    );
  }
}

class ScheduledStateModel {
  ValueNotifier<List<Schedule>> scheduleTokens = ValueNotifier(<Schedule>[]);
  ValueNotifier<String?> enterAction = ValueNotifier(null);
}

class DoorScheduleModel {
  ValueNotifier<String?> priorityLevel = ValueNotifier(null);
  ValueNotifier<List<ScheduledStateModel>> states = ValueNotifier([
    ScheduledStateModel(),
  ]);
}

class ScheduleConfigurationController {
  ValueNotifier<String?> externalId = ValueNotifier(null);
  ValueNotifier<String?> name = ValueNotifier(null);
  ValueNotifier<String?> description = ValueNotifier(null);

  ValueNotifier<List<DoorScheduleModel>> schedules = ValueNotifier([
    DoorScheduleModel(),
  ]);

  DoorScheduleConfiguration getDefault() {
    return DoorScheduleConfiguration(
      externalId: 'externalId',
      name: 'name',
      description: 'description',
      doorSchedule: [
        DoorScheduleItem(
          priorityLevel: 'Medium',
          scheduledState: [
            DoorScheduledState(scheduleToken: ['TG5'], enterAction: 'Unlock'),
            DoorScheduledState(
              scheduleToken: ['standard_always'],
              enterAction: 'Lock',
            ),
          ],
        ),
      ],
    );
  }
}
