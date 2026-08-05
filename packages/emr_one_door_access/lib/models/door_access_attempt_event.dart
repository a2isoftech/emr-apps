class DoorAccessAttemptEvent {
  DoorAccessAttemptEvent({
    required this.rowId,
    required this.accessControllerId,
    required this.utcTime,
    this.topic0,
    this.topic1,
    this.topic2,
    this.accessPointId,
    this.accessPointName,
    this.userId,
    this.email,
    this.cardNumber,
    this.rawCardNumber,
    this.userFullName,
    this.accessResponse,
    this.siteId,
    this.siteName,
    this.accessPointRestricted,
    this.snapshotUrl,
    this.snapshotReason,
  });

  factory DoorAccessAttemptEvent.fromJson(Map<String, dynamic> json) {
    return DoorAccessAttemptEvent(
      rowId: json['rowId'] as int? ?? 0,
      accessControllerId: json['accessControllerId'] as String? ?? '',
      utcTime: DateTime.parse(json['utcTime'] as String),
      topic0: json['topic0'] as String?,
      topic1: json['topic1'] as String?,
      topic2: json['topic2'] as String?,
      accessPointId: json['accessPointId'] as String?,
      accessPointName: json['accessPointName'] as String?,
      userId: json['userId'] as String?,
      email: json['email'] as String?,
      cardNumber: json['cardNumber'] as String?,
      userFullName: json['name'] as String?,
      accessResponse: json['accessResponse'] as String?,
      siteId: json['siteId'] as String?,
      siteName: json['siteName'] as String?,
      accessPointRestricted: json['accessPointRestricted'] as bool?,
      snapshotUrl: json['snapshotUrl'] as String?,
      snapshotReason: json['snapshotReason'] as String?,
    );
  }
  final int rowId;
  final String accessControllerId;
  final DateTime utcTime;

  final String? topic0;
  final String? topic1;
  final String? topic2;
  final String? accessPointId;
  final String? accessPointName;
  final bool? accessPointRestricted;
  final String? userId;
  final String? email;
  final String? cardNumber;
  final String? rawCardNumber;
  final String? userFullName;
  final String? accessResponse;
  final String? siteId;
  final String? siteName;
  final String? snapshotUrl;
  final String? snapshotReason;

  Map<String, dynamic> toJson() {
    return {
      'rowId': rowId,
      'accessControllerId': accessControllerId,
      'utcTime': utcTime.toIso8601String(),
      'topic0': topic0,
      'topic1': topic1,
      'topic2': topic2,
      'accessPointId': accessPointId,
      'accessPointName': accessPointName,
      'userId': userId,
      'email': email,
      'cardNumber': cardNumber,
      'name': userFullName,
      'accessResponse': accessResponse,
      'siteId': siteId,
      'siteName': siteName,
      'accessPointRestricted': accessPointRestricted,
      'snapshotUrl': snapshotUrl,
      'snapshotReason': snapshotReason,
    };
  }

  DoorAccessAttemptEvent copyWith({
    int? rowId,
    String? accessControllerId,
    DateTime? utcTime,
    String? topic0,
    String? topic1,
    String? topic2,
    String? accessPointId,
    String? accessPointName,
    String? userId,
    String? email,
    String? cardNumber,
    String? userFullName,
    String? accessResponse,
    String? siteId,
    String? siteName,
    bool? accessPointRestricted,
    String? snapshotUrl,
    String? snapshotReason,
  }) {
    return DoorAccessAttemptEvent(
      rowId: rowId ?? this.rowId,
      accessControllerId: accessControllerId ?? this.accessControllerId,
      utcTime: utcTime ?? this.utcTime,
      topic0: topic0 ?? this.topic0,
      topic1: topic1 ?? this.topic1,
      topic2: topic2 ?? this.topic2,
      accessPointId: accessPointId ?? this.accessPointId,
      accessPointName: accessPointName ?? this.accessPointName,
      userId: userId ?? this.userId,
      email: email ?? this.email,
      cardNumber: cardNumber ?? this.cardNumber,
      userFullName: userFullName ?? this.userFullName,
      accessResponse: accessResponse ?? this.accessResponse,
      siteId: siteId ?? this.siteId,
      siteName: siteName ?? this.siteName,
      accessPointRestricted:
          accessPointRestricted ?? this.accessPointRestricted,
      snapshotUrl: snapshotUrl ?? this.snapshotUrl,
      snapshotReason: snapshotReason ?? this.snapshotReason,
    );
  }
}
