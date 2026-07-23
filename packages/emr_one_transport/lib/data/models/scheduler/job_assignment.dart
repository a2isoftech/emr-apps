class JobAssignment {

  JobAssignment({
    required this.jobNumber,
    required this.truckVrmOrHaulierCode,
    this.assignmentDuration,
  });
  final int jobNumber;
  final String truckVrmOrHaulierCode;
  final int? assignmentDuration;
}
