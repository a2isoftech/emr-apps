class UnassignUserTeamFromWorkOrderRequest {
  UnassignUserTeamFromWorkOrderRequest({
    required this.yardCode,
    required this.workOrderId,
    required this.unassignTypeId,
  });

  UnassignUserTeamFromWorkOrderRequest.fromJson(Map<String, dynamic> json)
      : yardCode = json['yardCode'] as String,
        workOrderId = json['workOrderId'] as String,
        unassignTypeId = json['unassignTypeId'] as int;

  String yardCode;
  String workOrderId;
  int unassignTypeId;

  Map<String, dynamic> toJson() => {
        'yardCode': yardCode,
        'workOrderId': workOrderId,
        'unassignTypeId': unassignTypeId,
      };
}
