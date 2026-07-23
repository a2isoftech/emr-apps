class DoorPriorityAction {
  DoorPriorityAction({required this.priorityLevel, required this.doorAction});

  factory DoorPriorityAction.fromJson(Map<String, dynamic> json) {
    return DoorPriorityAction(
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
