class WorkRequest {
  WorkRequest({
    required this.companyCode,
    required this.workRequestId,
    required this.requestType,
    required this.serviceLevel,
    required this.assetId,
    required this.assetCode,
    required this.requestState,
    required this.isActive,
    this.description,
    this.additionalDescription,
    this.workGroupId,
    this.actualStartDate,
    this.actualEndDate,
    this.productionStopDate,
    this.startedByPersonnelNumber,
    this.notes,
    this.workOrderId,
    this.jobType,
    this.jobTradeId,
    this.faultSymptoms,
    this.depotNo,
    this.yardCode,
    this.createdDate,
    this.modifiedDate,
    this.jobTypeVariant,
  });

  factory WorkRequest.fromJson(Map<String, dynamic> json) =>
      _$WorkRequestFromJson(json);

  final String companyCode;
  final String workRequestId;
  final String? description;
  final String? additionalDescription;
  final String requestType;
  final String serviceLevel;
  final String assetId;
  final String assetCode;
  final String? workGroupId;
  final DateTime? actualStartDate;
  final DateTime? actualEndDate;
  final DateTime? productionStopDate;
  final String requestState;
  final String? startedByPersonnelNumber;
  final String? notes;
  final String? workOrderId;
  final String? jobType;
  final String? jobTradeId;
  final String? faultSymptoms;
  final String? depotNo;
  final String? yardCode;
  final DateTime? createdDate;
  final DateTime? modifiedDate;
  final bool isActive;
  final String? jobTypeVariant;

  Map<String, dynamic> toJson() => _$WorkRequestToJson(this);
}

WorkRequest _$WorkRequestFromJson(Map<String, dynamic> json) => WorkRequest(
      companyCode: json['companyCode'] as String,
      workRequestId: json['workRequestId'] as String,
      description: json['description'] as String?,
      additionalDescription: json['additionalDescription'] as String?,
      requestType: json['requestType'] as String,
      serviceLevel: json['serviceLevel'] as String,
      assetId: json['assetId'] as String,
      assetCode: json['assetCode'] as String,
      workGroupId: json['workGroupId'] as String?,
      actualStartDate: json['actualStartDate'] as DateTime?,
      actualEndDate: json['actualEndDate'] as DateTime?,
      productionStopDate: json['productionStopDate'] as DateTime?,
      requestState: json['requestState'] as String,
      startedByPersonnelNumber: json['startedByPersonnelNumber'] as String?,
      notes: json['notes'] as String?,
      workOrderId: json['workOrderId'] as String?,
      jobType: json['jobType'] as String?,
      jobTradeId: json['jobTradeId'] as String?,
      faultSymptoms: json['faultSymptoms'] as String?,
      depotNo: json['depotNo'] as String?,
      yardCode: json['yardCode'] as String?,
      createdDate: json['createdDate'] as DateTime?,
      modifiedDate: json['modifiedDate'] as DateTime?,
      isActive: json['isActive'] as bool,
      jobTypeVariant: json['jobTypeVariant'] as String?,
    );

Map<String, dynamic> _$WorkRequestToJson(
  WorkRequest instance,
) =>
    <String, dynamic>{
      'companyCode': instance.companyCode,
      'workRequestId': instance.workRequestId,
      'description': instance.description,
      'additionalDescription': instance.additionalDescription,
      'requestType': instance.requestType,
      'serviceLevel': instance.serviceLevel,
      'assetId': instance.assetId,
      'assetCode': instance.assetCode,
      'workGroupId': instance.workGroupId,
      'actualStartDate': instance.actualStartDate,
      'actualEndDate': instance.actualEndDate,
      'productionStopDate': instance.productionStopDate,
      'requestState': instance.requestState,
      'startedByPersonnelNumber': instance.startedByPersonnelNumber,
      'notes': instance.notes,
      'workOrderId': instance.workOrderId,
      'jobType': instance.jobType,
      'jobTradeId': instance.jobTradeId,
      'faultSymptoms': instance.faultSymptoms,
      'depotNo': instance.depotNo,
      'yardCode': instance.yardCode,
      'createdDate': instance.createdDate,
      'modifiedDate': instance.modifiedDate,
      'isActive': instance.isActive,
      'jobTypeVariant': instance.jobTypeVariant,
    };
