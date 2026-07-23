class ScheduleUpdateEvent {
  ScheduleUpdateEvent({
    required this.rowId,
    required this.accessControllerId,
    required this.accessControllerName,
    required this.scheduleToken,
    required this.utcTime,
    this.topic2,
    this.siteId,
    this.siteName,
  });

  factory ScheduleUpdateEvent.fromJson(Map<String, dynamic> json) {
    return ScheduleUpdateEvent(
      rowId: json['rowId'] as int? ?? 0,
      accessControllerId: json['accessControllerId'] as String? ?? '',
      accessControllerName: json['accessControllerName'] as String? ?? '',
      scheduleToken: json['scheduleToken'] as String? ?? '',
      utcTime: DateTime.parse(json['utcTime'] as String),
      topic2: json['topic2'] as String?,
      siteId: json['siteId'] as String?,
      siteName: json['siteName'] as String?,
    );
  }
  final int rowId;
  final String accessControllerId;
  final String accessControllerName;
  final DateTime utcTime;
  final String? topic2;
  final String? siteId;
  final String? siteName;
  final String? scheduleToken;

  Map<String, dynamic> toJson() {
    return {
      'rowId': rowId,
      'accessControllerId': accessControllerId,
      'accessControllerName': accessControllerName,
      'utcTime': utcTime.toIso8601String(),
      'topic2': topic2,
      'siteId': siteId,
      'siteName': siteName,
      'scheduleToken': scheduleToken,
    };
  }

  ScheduleUpdateEvent copyWith({
    int? rowId,
    String? accessControllerId,
    String? accessControllerName,
    String? scheduleToken,
    DateTime? utcTime,
    String? topic2,
    String? siteId,
    String? siteName,
  }) {
    return ScheduleUpdateEvent(
      rowId: rowId ?? this.rowId,
      accessControllerId: accessControllerId ?? this.accessControllerId,
      accessControllerName: accessControllerName ?? this.accessControllerName,
      utcTime: utcTime ?? this.utcTime,
      topic2: topic2 ?? this.topic2,
      scheduleToken: scheduleToken ?? this.scheduleToken,
      siteId: siteId ?? this.siteId,
      siteName: siteName ?? this.siteName,
    );
  }
}
