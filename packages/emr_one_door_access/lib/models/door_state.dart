class DoorState {
  DoorState({required this.doorMode});

  factory DoorState.fromJson(Map<String, dynamic> json) {
    return DoorState(doorMode: json['doorMode'] as String);
  }
  final String doorMode;

  Map<String, dynamic> toJson() {
    return {'doorMode': doorMode};
  }
}
