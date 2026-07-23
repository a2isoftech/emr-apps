class SchedulePlan {
  SchedulePlan({
    required this.haulierCode,
    required this.haulierName,
    required this.haulierType,
    required this.loads,
    this.jobDetail = const [],
    this.haulierDeleteReason,
    this.haulierDeleteComment,
  });
  String haulierCode;
  String haulierName;
  String haulierType;
  int loads;
  List<SchedulePlanJobDetail> jobDetail;
  String? haulierDeleteReason;
  String? haulierDeleteComment;
}

class SchedulePlanJobDetail {
  SchedulePlanJobDetail({
    required this.jobNumber,
    required this.jobStatus,
    this.deleteReason,
    this.deleteComment,
  });
  int jobNumber;
  String jobStatus;
  String? deleteReason;
  String? deleteComment;
}
