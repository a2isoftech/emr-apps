class DoorPriorityState {
  DoorPriorityState({required this.priorityLevel, required this.doorAction});

  factory DoorPriorityState.fromJson(Map<String, dynamic> json) {
    return DoorPriorityState(
      priorityLevel: json['priorityLevel'] as String,
      doorAction: json['doorAction'] as String,
    );
  }
  final String priorityLevel;
  final String doorAction;

  Map<String, dynamic> toJson() {
    return {'priorityLevel': priorityLevel, 'doorAction': doorAction};
  }
}
