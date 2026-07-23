class InstanceJobData {
  late final String workOrderId;
  late final String assetCode;
  late final String jobType;
  late final String depotNo;
  late final String territoryCode;
  late final String workOrderDescription;

  InstanceJobData({
    required this.workOrderId,
    required this.assetCode,
    required this.jobType,
    required this.depotNo,
    required this.territoryCode,
    required this.workOrderDescription,
  });

  InstanceJobData.fromJson(Map<String, dynamic> json) {
    workOrderId = json['workOrderId'];
    assetCode = json['assetCode'];
    jobType = json['jobType'];
    depotNo = json['depotNo'];
    territoryCode = json['territoryCode'];
    workOrderDescription = json['workOrderDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['workOrderId'] = workOrderId;
    data['assetCode'] = assetCode;
    data['jobType'] = jobType;
    data['depotNo'] = depotNo;
    data['territoryCode'] = territoryCode;
    data['workOrderDescription'] = workOrderDescription;
    return data;
  }
}
