class DoorScheduledState {
  DoorScheduledState({required this.scheduleToken, required this.enterAction});

  factory DoorScheduledState.fromJson(Map<String, dynamic> json) {
    return DoorScheduledState(
      scheduleToken: List<String>.from(json['scheduleToken'] as List<dynamic>),
      enterAction: json['enterAction'] as String,
    );
  }

  final List<String> scheduleToken;
  final String enterAction;

  Map<String, dynamic> toJson() {
    return {'scheduleToken': scheduleToken, 'enterAction': enterAction};
  }
}
