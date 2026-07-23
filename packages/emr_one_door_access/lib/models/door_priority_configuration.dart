import 'package:emr_one_door_access/models/door_priority_action.dart';

class DoorPriorityConfiguration {
  DoorPriorityConfiguration({
    required this.externalId,
    required this.name,
    required this.defaultPriority,
    required this.doorPriorityActions,
  });

  factory DoorPriorityConfiguration.fromJson(Map<String, dynamic> json) {
    return DoorPriorityConfiguration(
      externalId: json['externalId'] as String,
      name: json['name'] as String,
      defaultPriority: json['defaultPriority'] as String,
      doorPriorityActions: (json['doorPriorityAction'] as List<dynamic>? ?? [])
          .map((e) => DoorPriorityAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  final String externalId;
  final String name;
  final String defaultPriority;
  final List<DoorPriorityAction> doorPriorityActions;

  Map<String, dynamic> toJson() {
    return {
      'externalId': externalId,
      'name': name,
      'defaultPriority': defaultPriority,
      'doorPriorityAction': doorPriorityActions.map((e) => e.toJson()).toList(),
    };
  }
}
