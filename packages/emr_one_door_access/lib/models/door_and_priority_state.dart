import 'package:emr_one_door_access/models/models.dart';

class DoorAndPriorityState {
  DoorAndPriorityState({required this.doorState, required this.priorityStates});

  factory DoorAndPriorityState.fromJson(Map<String, dynamic> json) {
    return DoorAndPriorityState(
      doorState: DoorState.fromJson(json['doorState'] as Map<String, dynamic>),
      priorityStates: (json['priorityStates'] as List<dynamic>? ?? [])
          .map((e) => DoorPriorityState.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
  final DoorState doorState;
  final List<DoorPriorityState> priorityStates;

  Map<String, dynamic> toJson() {
    return {
      'doorState': doorState.toJson(),
      'priorityStates': priorityStates.map((e) => e.toJson()).toList(),
    };
  }
}
