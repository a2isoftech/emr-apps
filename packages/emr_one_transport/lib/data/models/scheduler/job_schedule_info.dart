class JobScheduleInfo {
  JobScheduleInfo({
    required this.jobNumber,
    required this.duration,
    required this.scheduledDate,
    required this.vrm,
  });
  int jobNumber;
  int duration;
  DateTime scheduledDate;
  String vrm;
}
