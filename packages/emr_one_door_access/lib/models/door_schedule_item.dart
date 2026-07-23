import 'package:emr_one_door_access/models/door_schedule_state.dart';

class DoorScheduleItem {
  DoorScheduleItem({required this.priorityLevel, required this.scheduledState});

  factory DoorScheduleItem.fromJson(Map<String, dynamic> json) {
    return DoorScheduleItem(
      priorityLevel: json['priorityLevel'] as String,
      scheduledState: (json['scheduledState'] as List<dynamic>? ?? [])
          .map((e) => DoorScheduledState.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  final String priorityLevel;
  final List<DoorScheduledState> scheduledState;

  Map<String, dynamic> toJson() {
    return {
      'priorityLevel': priorityLevel,
      'scheduledState': scheduledState.map((e) => e.toJson()).toList(),
    };
  }
}
