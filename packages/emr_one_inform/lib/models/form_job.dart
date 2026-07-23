import 'package:emr_one_inform/models/form_models.dart';

class FormJob {
  FormJob({this.jobInfo, this.instanceInfo});

  FormJob.fromJson(Map<String, dynamic> json) {
    jobInfo = json['jobInfo'] != null
        ? JobInfo.fromJson(json['jobInfo'] as Map<String, dynamic>)
        : null;
    instanceInfo = json['instanceInfo'] != null
        ? InstanceInfo.fromJson(json['instanceInfo'] as Map<String, dynamic>)
        : null;
  }
  JobInfo? jobInfo;
  InstanceInfo? instanceInfo;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (jobInfo != null) {
      data['jobInfo'] = jobInfo!.toJson();
    }
    if (instanceInfo != null) {
      data['instanceInfo'] = instanceInfo!.toJson();
    }
    return data;
  }
}

class JobInfo {
  JobInfo({
    this.createdDate,
    this.workOrderId,
    this.asset,
    this.jobType,
    this.jobTypeVariant,
    this.referenceId,
    this.uuid,
    this.referenceType,
    this.workOrderDescription,
    this.assignedTo,
    this.jobTrade,
    this.assignedToTeam,
    this.assignedToTeamId,
    this.templateId,
    this.status,
    this.expectedStartDate,
    this.expectedEndDate,
    this.yardCode,
    this.depotNo,
    this.notes,
    this.jobPriority,
    this.scheduleItemType,
    this.isDigitalSignatureRequired,
    this.template,
  });

  JobInfo.fromJson(Map<String, dynamic> json) {
    createdDate = json['createdDate'] == null
        ? null
        : DateTime.parse(json['createdDate'] as String);
    workOrderId = json['workOrderId'] as String?;
    asset = json['asset'] != null
        ? Asset.fromJson(json['asset'] as Map<String, dynamic>)
        : null;
    jobType = json['jobType'] as String?;
    jobTypeVariant = json['jobTypeVariant'] as String?;
    referenceId = json['referenceId'] as String?;
    uuid = json['uuid'] as String?;
    referenceType = json['referenceType'] as String?;
    workOrderDescription = json['workOrderDescription'] as String?;
    assignedTo = json['assignedTo'] as String?;
    jobTrade = json['jobTrade'] as String?;
    assignedToTeam = json['assignedToTeam'] as String?;
    assignedToTeamId = json['assignedToTeamId'] as String?;
    templateId = json['templateId'] as int?;
    status = json['status'] as String?;
    expectedStartDate = json['expectedStartDate'] == null
        ? null
        : DateTime.parse(json['expectedStartDate'] as String);
    expectedEndDate = json['expectedEndDate'] == null
        ? null
        : DateTime.parse(json['expectedEndDate'] as String);
    yardCode = json['yardCode'] as String?;
    depotNo = json['depotNo'] as String?;
    notes = json['notes'] as String?;
    jobPriority = json['jobPriority'] as String?;
    scheduleItemType = json['scheduleItemType'] as String?;
    isDigitalSignatureRequired = json['isDigitalSignatureRequired'] as bool?;
    template = json['template'] != null
        ? FormTemplate.fromJson(json['template'] as Map<String, dynamic>)
        : null;
  }
  DateTime? createdDate;
  String? workOrderId;
  Asset? asset;
  String? jobType;
  String? jobTypeVariant;
  String? referenceId;
  String? uuid;
  String? referenceType;
  String? workOrderDescription;
  String? assignedTo;
  String? jobTrade;
  String? assignedToTeam;
  String? assignedToTeamId;
  int? templateId;
  String? status;
  DateTime? expectedStartDate;
  DateTime? expectedEndDate;
  String? yardCode;
  String? depotNo;
  String? notes;
  String? jobPriority;
  String? scheduleItemType;
  bool? isDigitalSignatureRequired;
  FormTemplate? template;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['createdDate'] = createdDate?.toIso8601String();
    data['workOrderId'] = workOrderId;
    if (asset != null) {
      data['asset'] = asset!.toJson();
    }
    data['jobType'] = jobType;
    data['jobTypeVariant'] = jobTypeVariant;
    data['referenceId'] = referenceId;
    data['uuid'] = uuid;
    data['referenceType'] = referenceType;
    data['workOrderDescription'] = workOrderDescription;
    data['assignedTo'] = assignedTo;
    data['jobTrade'] = jobTrade;
    data['assignedToTeam'] = assignedToTeam;
    data['assignedToTeamId'] = assignedToTeamId;
    data['templateId'] = templateId;
    data['status'] = status;
    data['expectedStartDate'] = expectedStartDate?.toIso8601String();
    data['expectedEndDate'] = expectedEndDate?.toIso8601String();
    data['yardCode'] = yardCode;
    data['depotNo'] = depotNo;
    data['notes'] = notes;
    data['jobPriority'] = jobPriority;
    data['scheduleItemType'] = scheduleItemType;
    data['isDigitalSignatureRequired'] = isDigitalSignatureRequired;
    data['template'] = template?.toJson();
    return data;
  }
}

class InstanceInfo {
  InstanceInfo({
    this.uuid,
    this.createdDate,
    this.statusId,
    this.startedBy,
    this.startedDate,
    this.submittedBy,
    this.submittedDate,
  });

  InstanceInfo.fromJson(Map<String, dynamic> json) {
    createdDate = json['createdDate'] == null
        ? null
        : DateTime.parse(json['createdDate'] as String);
    uuid = json['uuid'] as String?;
    statusId = json['statusId'] as int?;
    startedBy = json['startedBy'] as String?;
    startedDate = json['startedDate'] == null
        ? null
        : DateTime.parse(json['startedDate'] as String);
    submittedBy = json['submittedBy'] as String?;
    submittedDate = json['submittedDate'] == null
        ? null
        : DateTime.parse(json['submittedDate'] as String);
  }
  String? uuid;
  DateTime? createdDate;
  int? statusId;
  String? startedBy;
  DateTime? startedDate;
  String? submittedBy;
  DateTime? submittedDate;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['createdDate'] = createdDate?.toIso8601String();
    data['uuid'] = uuid;
    data['statusId'] = statusId;
    data['startedBy'] = startedBy;
    data['startedDate'] = startedDate?.toIso8601String();
    data['submittedBy'] = submittedBy;
    data['submittedDate'] = submittedDate?.toIso8601String();
    return data;
  }
}
