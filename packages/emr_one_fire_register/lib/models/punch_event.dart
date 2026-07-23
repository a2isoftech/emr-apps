class PunchEvent {
  PunchEvent({
    required this.id,
    required this.subjectName,
    required this.subjectType,
    required this.punchTime,
    required this.punchType,
    required this.badgeNo,
    this.visitorHost,
    this.visitorCmpName,
    this.visitorPhoneNo,
    this.visitorVehicleReg,
    this.note,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'subjectName': subjectName,
      'badgeNo': badgeNo,
      'punchTime': punchTime.toString(),
      'subjectType': subjectType.toString(),
      'punchType': punchType.toString(),
      'note': note ?? '',
      'visitorHost': visitorHost ?? '',
    };
  }

  final int id;
  final String subjectName;
  final int subjectType;
  final DateTime punchTime;
  final int punchType;
  final String badgeNo;
  final String? visitorHost;
  final String? visitorCmpName;
  final String? visitorPhoneNo;
  final String? visitorVehicleReg;
  String? note;
}
