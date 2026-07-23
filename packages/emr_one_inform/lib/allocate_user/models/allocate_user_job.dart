class AllocateUserJob {
  AllocateUserJob({
    required this.workOrderDescription,
    required this.workOrderId,
    required this.assetCode,
    required this.jobType,
    required this.jobTrade,
    required this.jobTypeVariant,
    required this.dueDate,
    required this.assignedTo,
    required this.startedBy,
    required this.instanceId,
    required this.assignedToTeam,
    required this.assignedToTeamId,
    required this.yardCode,
    required this.scheduleItemType,
    required this.jobPriority,
    required this.depotNo,
  });
  final String workOrderDescription;
  final String workOrderId;
  final String assetCode;
  final String jobType;
  final String jobTrade;
  final String jobTypeVariant;
  final DateTime dueDate;
  final String assignedTo;
  final String startedBy;
  final String instanceId;
  final String assignedToTeam;
  final String assignedToTeamId;
  final String yardCode;
  final String scheduleItemType;
  final String jobPriority;
  final String depotNo;
}
