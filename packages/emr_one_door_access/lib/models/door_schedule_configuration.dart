import 'package:emr_one_door_access/models/door_schedule_item.dart';

class DoorScheduleConfiguration {
  DoorScheduleConfiguration({
    required this.externalId,
    required this.name,
    required this.description,
    required this.doorSchedule,
  });

  factory DoorScheduleConfiguration.fromJson(Map<String, dynamic> json) {
    return DoorScheduleConfiguration(
      externalId: json['externalId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      doorSchedule: (json['doorSchedule'] as List<dynamic>? ?? [])
          .map((e) => DoorScheduleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  final String externalId;
  final String name;
  final String description;
  final List<DoorScheduleItem> doorSchedule;

  Map<String, dynamic> toJson() {
    return {
      'externalId': externalId,
      'name': name,
      'description': description,
      'doorSchedule': doorSchedule.map((e) => e.toJson()).toList(),
    };
  }
}
