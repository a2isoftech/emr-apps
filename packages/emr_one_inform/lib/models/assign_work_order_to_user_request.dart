class AssignWorkOrderToUserRequest {
  AssignWorkOrderToUserRequest({
    required this.yardCode,
    required this.workOrders,
    this.assignedTo,
    this.assignedBy,
    this.assignedTypeId,
    this.inProgressFormInstances,
    this.teamId,
    this.appVersion,
  });

  AssignWorkOrderToUserRequest.fromJson(Map<String, dynamic> json)
      : yardCode = json['yardCode'] as String,
        assignedTo = json['assignedTo'] as String,
        assignedBy = json['assignedBy'] as String,
        assignedTypeId = json['assignedTypeId'] as int,
        teamId = json['teamId'] as String?,
        workOrders = json['workOrders'] as List<String>,
        inProgressFormInstances =
            json['inProgressFormInstances'] as List<String>?,
        appVersion = json['appVersionNo'] as String?;

  String yardCode;
  String? assignedTo;
  String? assignedBy;
  int? assignedTypeId;
  String? teamId;
  List<String> workOrders = [];
  List<String>? inProgressFormInstances = [];
  String? appVersion;

  Map<String, dynamic> toJson() => {
        'yardCode': yardCode,
        'assignedTo': assignedTo,
        'assignedBy': assignedBy,
        'assignedTypeId': assignedTypeId,
        'workOrders': workOrders,
        'inProgressFormInstances': inProgressFormInstances,
        'teamId': teamId,
      };
}
