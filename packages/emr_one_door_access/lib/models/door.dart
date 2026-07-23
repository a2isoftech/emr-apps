import 'package:emr_one_door_access/models/door_priority_configuration.dart';
import 'package:emr_one_door_access/models/door_schedule_configuration.dart';

class Door {
  Door({
    required this.externalId,
    required this.name,
    required this.description,
    required this.accessTime,
    required this.openTooLongTime,
    required this.preAlarmTime,
    required this.extendedAccessTime,
    required this.extendedOpenTooLongTime,
    required this.heartbeatInterval,
    required this.defaultPriority,
    this.priorityConfiguration,
    this.scheduleConfiguration,
  });

  factory Door.fromJson(Map<String, dynamic> json) {
    return Door(
      externalId: json['externalId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      accessTime: json['accessTime'] as String,
      openTooLongTime: json['openTooLongTime'] as String,
      preAlarmTime: json['preAlarmTime'] as String,
      extendedAccessTime: json['extendedAccessTime'] as String,
      extendedOpenTooLongTime: json['extendedOpenTooLongTime'] as String,
      heartbeatInterval: json['heartbeatInterval'] as String,
      defaultPriority: json['defaultPriority'] as String,
      priorityConfiguration: json['priorityConfiguration'] != null
          ? DoorPriorityConfiguration.fromJson(
              json['priorityConfiguration'] as Map<String, dynamic>,
            )
          : null,
      scheduleConfiguration: json['scheduleConfiguration'] != null
          ? DoorScheduleConfiguration.fromJson(
              json['scheduleConfiguration'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  final String externalId;
  final String name;
  final String description;
  final String accessTime;
  final String openTooLongTime;
  final String preAlarmTime;
  final String extendedAccessTime;
  final String extendedOpenTooLongTime;
  final String heartbeatInterval;
  final DoorPriorityConfiguration? priorityConfiguration;
  final String defaultPriority;
  final DoorScheduleConfiguration? scheduleConfiguration;

  Map<String, dynamic> toJson() {
    return {
      'externalId': externalId,
      'name': name,
      'description': description,
      'accessTime': accessTime,
      'openTooLongTime': openTooLongTime,
      'preAlarmTime': preAlarmTime,
      'extendedAccessTime': extendedAccessTime,
      'extendedOpenTooLongTime': extendedOpenTooLongTime,
      'heartbeatInterval': heartbeatInterval,
      'defaultPriority': defaultPriority,
      'priorityConfiguration': priorityConfiguration?.toJson(),
      'scheduleConfiguration': scheduleConfiguration?.toJson(),
    };
  }
}
