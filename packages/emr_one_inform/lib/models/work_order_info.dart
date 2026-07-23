import 'package:emr_one_inform/models/asset.dart';

class WorkOrderInfo {
  WorkOrderInfo({
    this.workOrderId,
    this.asset,
    this.expectedStartDate,
    this.expectedEndDate,
    this.jobType,
    this.jobTrade,
    this.jobTypeVariant,
    this.workOrderDescription,
    this.assignedTo,
    this.assignedToTeam,
    this.assignedToTeamId,
    this.yardCode,
    this.depotNo,
    this.isDigitalSignatureRequired,
    this.scheduleItemType,
    this.category,
    this.jobPriority,
    this.notes,
    this.originalDescription,
  });

  factory WorkOrderInfo.fromJson(Map<String, dynamic> json) =>
      _$WorkOrderInfoFromJson(json);

  final String? workOrderId;
  final Asset? asset;
  final DateTime? expectedStartDate;
  final DateTime? expectedEndDate;
  final String? jobType;
  final String? jobTrade;
  final String? jobTypeVariant;
  final String? workOrderDescription;
  final String? assignedTo;
  final String? assignedToTeam;
  final String? assignedToTeamId;
  final String? yardCode;
  final String? depotNo;
  final String? scheduleItemType;
  final bool? isDigitalSignatureRequired;
  final String? category;
  final String? jobPriority;
  final String? notes;
  final String? originalDescription;

  Map<String, dynamic> toJson() => _$WorkOrderInfoToJson(this);
}

WorkOrderInfo _$WorkOrderInfoFromJson(Map<String, dynamic> json) =>
    WorkOrderInfo(
      workOrderId: json['workOrderId'] as String?,
      asset: json['asset'] == null
          ? null
          : Asset.fromJson(json['asset'] as Map<String, dynamic>),
      expectedStartDate: json['expectedStartDate'] == null
          ? null
          : DateTime.parse(json['expectedStartDate'] as String),
      expectedEndDate: json['expectedEndDate'] == null
          ? null
          : DateTime.parse(json['expectedEndDate'] as String),
      jobType: json['jobType'] as String?,
      jobTrade: json['jobTrade'] as String?,
      jobTypeVariant: json['jobTypeVariant'] as String?,
      workOrderDescription: json['workOrderDescription'] as String?,
      assignedTo: json['assignedTo'] as String?,
      assignedToTeam: json['assignedToTeam'] as String?,
      assignedToTeamId: json['assignedToTeamId'] as String?,
      yardCode: json['yardCode'] as String?,
      depotNo: json['depotNo'] as String?,
      scheduleItemType: json['scheduleItemType'] as String?,
      isDigitalSignatureRequired: json['isDigitalSignatureRequired'] as bool?,
      category: json['category'] as String?,
      jobPriority: json['jobPriority'] as String?,
      notes: json['notes'] as String?,
      originalDescription: json['originalDescription'] as String?,
    );

Map<String, dynamic> _$WorkOrderInfoToJson(WorkOrderInfo instance) =>
    <String, dynamic>{
      'workOrderId': instance.workOrderId,
      'asset': instance.asset,
      'expectedStartDate': instance.expectedStartDate?.toIso8601String(),
      'expectedEndDate': instance.expectedEndDate?.toIso8601String(),
      'jobType': instance.jobType,
      'jobTrade': instance.jobTrade,
      'jobTypeVariant': instance.jobTypeVariant,
      'workOrderDescription': instance.workOrderDescription,
      'assignedTo': instance.assignedTo,
      'yardCode': instance.yardCode,
      'depotNo': instance.depotNo,
      'scheduleItemType': instance.scheduleItemType,
      'isDigitalSignatureRequired': instance.isDigitalSignatureRequired,
      'category': instance.category,
      'jobPriority': instance.jobPriority,
      'notes': instance.notes,
      'assignedToTeam': instance.assignedToTeam,
      'assignedToTeamId': instance.assignedToTeamId,
      'originalDescription': instance.originalDescription,
    };
