import 'package:emr_one_inform/models/form_models.dart';

class CompletedJob {
  CompletedJob({
    this.workOrderId,
    this.workOrderDescription,
    this.startedBy,
    this.companyCode,
    this.assetCode,
    this.assetName,
    this.jobType,
    this.jobTrade,
    this.jobTypeVariant,
    this.submittedDate,
    this.yardCode,
    this.depotNo,
    this.template,
    this.isDigitalSignatureRequired,
    this.scheduledItemId,
    this.validations,
    this.scheduleItemType,
    this.jobPriority,
    this.notes,
    this.submittedBy,
    this.teamName,
    this.category,
  });

  CompletedJob.fromJson(Map<String, dynamic> json) {
    workOrderId = json['workOrderId'] as String;
    workOrderDescription = json['workOrderDescription'] as String;
    startedBy = json['startedBy'] as String;
    companyCode = json['companyCode'] as String;
    assetCode = json['assetCode'] as String;
    assetName = json['assetName'] as String;
    jobType = json['jobType'] as String;
    jobTrade = json['jobTrade'] as String;
    jobTypeVariant = json['jobTypeVariant'] as String;
    yardCode = json['yardCode'] as String;
    depotNo = json['depotNo'] as String;
    scheduledItemId = json['scheduledItemId'] as String;
    scheduleItemType = json['scheduleItemType'] as String;
    isDigitalSignatureRequired = json['isDigitalSignatureRequired'] as bool;
    template = json['template'] == null
        ? null
        : FormTemplate.fromJson(json['template'] as Map<String, dynamic>);
    submittedDate = json['submittedDate'] == null
        ? null
        : DateTime.parse(json['submittedDate'] as String);
    if (json['validations'] != null) {
      validations =
          (json['validations'] as List<Map<String, dynamic>>).map((v) {
        return JobValidation.fromJson(v);
      }).toList();
    }
    jobPriority = json['jobPriority'] as String?;
    notes = json['notes'] as String?;
    submittedBy = json['submittedBy'] as String?;
    teamName = json['teamName'] as String?;
    category = json['category'] as String?;
  }

  String? workOrderId;
  String? workOrderDescription;
  String? startedBy;
  String? companyCode;
  String? assetCode;
  String? assetName;
  String? jobType;
  String? jobTrade;
  String? jobTypeVariant;
  DateTime? submittedDate;
  String? yardCode;
  String? depotNo;
  FormTemplate? template;
  bool? isDigitalSignatureRequired;
  String? scheduledItemId;
  String? scheduleItemType;
  List<JobValidation>? validations;
  String? jobPriority;
  String? notes;
  String? submittedBy;
  String? teamName;
  String? category;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['workOrderId'] = workOrderId;
    data['workOrderDescription'] = workOrderDescription;
    data['startedBy'] = startedBy;
    data['companyCode'] = companyCode;
    data['assetCode'] = assetCode;
    data['assetName'] = assetName;
    data['jobType'] = jobType;
    data['jobTrade'] = jobTrade;
    data['jobTypeVariant'] = jobTypeVariant;
    data['yardCode'] = yardCode;
    data['depotNo'] = depotNo;
    data['template'] = template;
    data['scheduledItemId'] = scheduledItemId;
    data['scheduleItemType'] = scheduleItemType;
    data['submittedDate'] = submittedDate?.toIso8601String();
    data['isDigitalSignatureRequired'] = isDigitalSignatureRequired;
    if (validations != null) {
      data['validations'] = validations!.map((v) => v.toJson()).toList();
    }
    data['jobPriority'] = jobPriority;
    data['notes'] = notes;
    data['submittedBy'] = submittedBy;
    data['teamName'] = teamName;
    data['category'] = category;
    return data;
  }
}

class JobValidation {
  JobValidation({
    required this.validatedBy,
    required this.validatedOn,
    required this.status,
    this.notes,
    this.referenceId,
  });

  JobValidation.fromJson(Map<String, dynamic> json) {
    validatedBy = json['validatedBy'] as String;
    validatedOn = json['validatedOn'] as DateTime;
    status = json['status'] as String;
    notes = json['notes'] as String?;
    referenceId = json['referenceId'] as String?;
  }

  late String validatedBy;
  late DateTime validatedOn;
  late String status;
  late String? notes;
  late String? referenceId;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['validatedBy'] = validatedBy;
    data['validatedOn'] = validatedOn.toIso8601String();
    data['status'] = status;
    data['notes'] = notes;
    data['referenceId'] = referenceId;
    return data;
  }
}
