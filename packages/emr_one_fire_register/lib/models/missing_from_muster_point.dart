class MissingFromRollCall {
  MissingFromRollCall({
    required this.subjectName,
    required this.missingOnDate,
    required this.yardCode,
    required this.isMissing,
    required this.subjectType,
    this.id,
    this.punchId,
    this.visitorHost,
    this.visitorPhoneNo,
  });

  final String subjectName;
  final DateTime missingOnDate;
  final String yardCode;
  final bool isMissing;
  final int subjectType;
  final int? id;
  final int? punchId;
  final String? visitorHost;
  final String? visitorPhoneNo;
}
