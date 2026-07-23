class PlanHaulierJob {
  PlanHaulierJob({
    required this.haulierCode,
    required this.haulierType,
    required this.haulierName,
    required this.loads,
    required this.jobStatus,
    this.jobNumber,
  });
  String haulierCode;
  String haulierType;
  String haulierName;
  int loads;
  String jobStatus;
  int? jobNumber;
}
