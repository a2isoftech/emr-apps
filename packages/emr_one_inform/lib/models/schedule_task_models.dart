// class FormsTemplate {
//   FormsTemplate({
//     required this.id,
//     required this.title,
//     this.referenceId,
//     this.clientName,
//     this.createdBy,
//     this.createDate,
//   });

//   FormsTemplate.fromJson(Map<String, dynamic> json)
//       : id = json['id'] as String,
//         title = json['title'] as String,
//         referenceId = json['referenceId'] as String,
//         clientName = json['clientName'] as String,
//         createdBy = json['createdBy'] as String?,
//         createDate = json['createDate'] == null
//             ? null
//             : DateTime.parse(json['createDate'] as String);

//   final String id;
//   final String title;
//   final String? referenceId;
//   final String? clientName;
//   final String? createdBy;
//   final DateTime? createDate;

//   Map<String, dynamic> toJson() => <String, dynamic>{
//         'id': id,
//         'title': title,
//         'referenceId': referenceId,
//         'clientName': clientName,
//         'createdBy': createdBy,
//         'createdDate': createDate?.toIso8601String(),
//       };
// }

class FormsTemplate {
  FormsTemplate({
    required this.id,
    required this.title,
    required this.isDigitalSignatureRequired,
    required this.validateBySignature,
    required this.validateByWorkOrder,
    required this.isEmailNotificationRequired,
    required this.sendEmailOnFailedQuestions,
    required this.assignFailedQuestionToTeam,
    required this.assignFailedQuestionToTeamId,
    required this.isPublished,
    this.referenceId,
    this.clientName,
    this.createdBy,
    this.createDate,
    this.versions,
    this.validateFrom,
    this.emailIds,
    this.canSchedule,
  });
  factory FormsTemplate.fromJson(Map<String, dynamic> json) =>
      _$FormsTemplateFromJson(json);

  final String id;
  final String title;
  final String? referenceId;
  final String? clientName;
  final String? createdBy;
  final DateTime? createDate;
  bool isDigitalSignatureRequired;
  bool validateBySignature;
  bool validateByWorkOrder;
  bool isEmailNotificationRequired;
  bool sendEmailOnFailedQuestions;
  bool isPublished;
  String? emailIds;
  String? assignFailedQuestionToTeam;
  String? assignFailedQuestionToTeamId;
  final DateTime? validateFrom;
  final List<TemplateVersion>? versions;
  final bool? canSchedule;

  Map<String, dynamic> toJson() => _$FormsTemplateToJson(this);
}

FormsTemplate _$FormsTemplateFromJson(Map<String, dynamic> json) =>
    FormsTemplate(
      id: json['id'] as String,
      title: json['title'] as String,
      isDigitalSignatureRequired: json['isDigitalSignatureRequired'] as bool,
      validateBySignature: json['validateBySignature'] as bool,
      validateByWorkOrder: json['validateByWorkOrder'] as bool,
      isEmailNotificationRequired: json['isEmailNotificationRequired'] as bool,
      sendEmailOnFailedQuestions: json['sendEmailOnFailedQuestions'] as bool,
      isPublished: json['isPublished'] as bool,
      referenceId: json['referenceId'] as String?,
      clientName: json['clientName'] as String?,
      createdBy: json['createdBy'] as String?,
      emailIds: json['emailIds'] as String?,
      assignFailedQuestionToTeam: json['assignFailedQuestionToTeam'] as String?,
      assignFailedQuestionToTeamId:
          json['assignFailedQuestionToTeamId'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      validateFrom: json['validateFrom'] == null
          ? null
          : DateTime.parse(json['validateFrom'] as String).toLocal(),
      versions: (json['versions'] as List<dynamic>?)
          ?.map((e) => TemplateVersion.fromJson(e as Map<String, dynamic>))
          .toList(),
      canSchedule: json['canSchedule'] as bool?,
    );

Map<String, dynamic> _$FormsTemplateToJson(FormsTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isDigitalSignatureRequired': instance.isDigitalSignatureRequired,
      'validateBySignature': instance.validateBySignature,
      'validateByWorkOrder': instance.validateByWorkOrder,
      'validateFrom': instance.validateFrom,
      'referenceId': instance.referenceId,
      'clientName': instance.clientName,
      'createdBy': instance.createdBy,
      'createDate': instance.createDate?.toIso8601String(),
      'versions': instance.versions,
      'isEmailNotificationRequired': instance.isEmailNotificationRequired,
      'sendEmailOnFailedQuestions': instance.sendEmailOnFailedQuestions,
      'isPublished': instance.isPublished,
      'emailIds': instance.emailIds,
      'assignFailedQuestionToTeam': instance.assignFailedQuestionToTeam,
      'assignFailedQuestionToTeamId': instance.assignFailedQuestionToTeamId,
      'canSchedule': instance.canSchedule,
    };

class TemplateVersion {
  TemplateVersion({
    this.id,
    this.uuid,
    this.templateId,
    this.version,
    this.description,
    this.documentSchemaId,
    this.documentPath,
    this.isActive,
    this.createdBy,
    this.createdDate,
  });
  factory TemplateVersion.fromJson(Map<String, dynamic> json) =>
      _$TemplateVersionFromJson(json);

  final int? id;
  final String? uuid;
  final int? templateId;
  final int? version;
  final String? description;
  final int? documentSchemaId;
  final String? documentPath;
  final bool? isActive;
  final String? createdBy;
  final DateTime? createdDate;

  Map<String, dynamic> toJson() => _$TemplateVersionToJson(this);
}

TemplateVersion _$TemplateVersionFromJson(Map<String, dynamic> json) =>
    TemplateVersion(
      id: json['id'] as int?,
      uuid: json['uuid'] as String?,
      templateId: json['templateId'] as int?,
      version: json['version'] as int?,
      description: json['description'] as String?,
      documentSchemaId: json['documentSchemaId'] as int?,
      documentPath: json['documentPath'] as String?,
      isActive: json['isActive'] as bool?,
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$TemplateVersionToJson(TemplateVersion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'templateId': instance.templateId,
      'version': instance.version,
      'description': instance.description,
      'documentSchemaId': instance.documentSchemaId,
      'documentPath': instance.documentPath,
      'isActive': instance.isActive,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
    };

class User {
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String,
        firstName = json['firstName'] as String,
        surname = json['surname'] as String,
        email = json['email'] as String;
  final String? id;
  final String? firstName;
  final String? surname;
  final String? email;

  String get displayName => '$firstName $surname';
}

class SearchQueryFilter {
  SearchQueryFilter({
    required this.includeAll,
    this.searchText,
    this.clientNames,
    this.startDate,
    this.endDate,
    this.jobId,
    this.assetCode,
    this.createdBy,
  });

  factory SearchQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryFilterFromJson(json);

  final String? searchText;
  final List<String>? clientNames;
  final bool includeAll;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? jobId;
  final String? assetCode;
  final String? createdBy;

  Map<String, dynamic> toJson() => _$SearchQueryFilterToJson(this);
}

SearchQueryFilter _$SearchQueryFilterFromJson(Map<String, dynamic> json) =>
    SearchQueryFilter(
      searchText: json['searchText'] as String?,
      includeAll: json['includeAll'] as bool,
      clientNames: json['clientNames'] as List<String>?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      jobId: json['jobId'] as String?,
      assetCode: json['assetCode'] as String?,
      createdBy: json['createdBy'] as String?,
    );

Map<String, dynamic> _$SearchQueryFilterToJson(SearchQueryFilter instance) =>
    <String, dynamic>{
      'searchText': instance.searchText,
      'includeAll': instance.includeAll,
      'clientNames': instance.clientNames,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'jobId': instance.jobId,
      'assetCode': instance.assetCode,
      'createdBy': instance.createdBy,
    };

class ScheduleTaskByTemplateRequest {
  ScheduleTaskByTemplateRequest({
    required this.yardCodes,
    required this.depotNos,
    required this.templateId,
    required this.startDate,
    required this.isRepeatable,
    required this.workOrderDescription,
    required this.createInD365,
    required this.assignedTypeId,
    required this.createWithQuickTemplate,
    required this.isDigitalSignatureRequired,
    required this.jobPriority,
    this.workingDays = 0,
    this.assignedTo,
    this.assetCode,
    this.dueDate,
    this.repeatFrequency,
    this.repeatType,
    this.repeatEndDate,
    this.repeatAssignedTo,
    this.parentWorkOrderId,
    this.workOrderId,
    this.notes,
    this.assignedToTeam,
    this.assignedToTeamId,
    this.jobTrade,
  });

  factory ScheduleTaskByTemplateRequest.fromJson(Map<String, dynamic> json) =>
      _$ScheduleTaskByTemplateRequestFromJson(json);
  final List<String> yardCodes;
  final List<String> depotNos;
  final String templateId;
  final String? assignedTo;
  final String? assetCode;
  final DateTime startDate;
  final DateTime? dueDate;
  final bool isRepeatable;
  final int? repeatFrequency;
  final int? repeatType;
  final String? workOrderDescription;
  final bool createInD365;
  final int assignedTypeId;
  final DateTime? repeatEndDate;
  final String? repeatAssignedTo;
  final bool createWithQuickTemplate;
  final bool isDigitalSignatureRequired;
  final String? parentWorkOrderId;
  final String? workOrderId;
  final int? workingDays;
  final String? notes;
  final int jobPriority;
  final String? assignedToTeam;
  final String? assignedToTeamId;
  final String? jobTrade;

  Map<String, dynamic> toJson() => _$ScheduleTaskByTemplateRequestToJson(this);
}

ScheduleTaskByTemplateRequest _$ScheduleTaskByTemplateRequestFromJson(
  Map<String, dynamic> json,
) =>
    ScheduleTaskByTemplateRequest(
      yardCodes: json['yardCodes'] as List<String>,
      depotNos: json['depotNos'] as List<String>,
      templateId: json['templateId'] as String,
      assignedTo: json['assignedTo'] as String?,
      assetCode: json['assetCode'] as String?,
      startDate: DateTime.parse(json['startDate'] as String),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      isRepeatable: json['isRepeatable'] as bool,
      repeatFrequency: json['repeatFrequency'] as int?,
      workingDays: json['workingDays'] as int?,
      repeatType: json['repeatType'] as int?,
      createWithQuickTemplate: json['createWithQuickTemplate'] as bool,
      workOrderDescription: json['workOrderDescription'] as String,
      createInD365: json['createInD365'] as bool,
      assignedTypeId: json['assignedTypeId'] as int,
      repeatAssignedTo: json['repeatAssignedTo'] as String?,
      isDigitalSignatureRequired: json['isDigitalSignatureRequired'] as bool,
      parentWorkOrderId: json['parentWorkOrderId'] as String?,
      workOrderId: json['workOrderId'] as String?,
      jobPriority: json['jobPriority'] as int,
      notes: json['notes'] as String?,
      repeatEndDate: json['repeatEndDate'] == null
          ? null
          : DateTime.parse(json['repeatEndDate'] as String),
      assignedToTeam: json['assignedToTeam'] as String?,
      assignedToTeamId: json['assignedToTeamId'] as String?,
      jobTrade: json['jobTrade'] as String?,
    );

Map<String, dynamic> _$ScheduleTaskByTemplateRequestToJson(
  ScheduleTaskByTemplateRequest instance,
) =>
    <String, dynamic>{
      'yardCodes': instance.yardCodes,
      'depotNos': instance.depotNos,
      'templateId': instance.templateId,
      'assignedTo': instance.assignedTo,
      'assetCode': instance.assetCode,
      'startDate': instance.startDate.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'isRepeatable': instance.isRepeatable,
      'repeatFrequency': instance.repeatFrequency,
      'repeatType': instance.repeatType,
      'workOrderDescription': instance.workOrderDescription,
      'assignedTypeId': instance.assignedTypeId,
      'repeatAssignedTo': instance.repeatAssignedTo,
      'isDigitalSignatureRequired': instance.isDigitalSignatureRequired,
      'createWithQuickTemplate': instance.createWithQuickTemplate,
      'repeatEndDate': instance.repeatEndDate?.toIso8601String(),
      'parentWorkOrderId': instance.parentWorkOrderId,
      'workOrderId': instance.workOrderId,
      'workingDays': instance.workingDays,
      'jobPriority': instance.jobPriority,
      'notes': instance.notes,
      'assignedToTeam': instance.assignedToTeam,
      'assignedToTeamId': instance.assignedToTeamId,
      'jobTrade': instance.jobTrade,
    };

class RepeatOptions {
  RepeatOptions({required this.id, required this.name});
  final int id;
  final String name;
}

class RepeatInterval {
  RepeatInterval({required this.id, required this.intervalName});
  final int id;
  final String intervalName;
}

class JobsCount {
  JobsCount({
    this.canScheduleTask,
    this.canViewReport,
    this.workRequestsCount,
    this.unassignedJobsCount,
    this.userJobs,
    this.yardJobs,
  });

  JobsCount.fromJson(Map<String, dynamic> json) {
    canScheduleTask = json['canScheduleTask'] as bool?;
    canViewReport = json['canViewReport'] as bool?;
    workRequestsCount = json['workRequestsCount'] as int?;
    unassignedJobsCount = json['unassignedJobsCount'] as int?;
    userJobs = json['userJobs'] != null
        ? JobGroup.fromJson(json['userJobs'] as Map<String, dynamic>)
        : null;
    yardJobs = json['yardJobs'] != null
        ? JobGroup.fromJson(json['yardJobs'] as Map<String, dynamic>)
        : null;
  }
  bool? canScheduleTask;
  bool? canViewReport;
  int? workRequestsCount;
  int? unassignedJobsCount;
  JobGroup? userJobs;
  JobGroup? yardJobs;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['canScheduleTask'] = canScheduleTask;
    data['canViewReport'] = canViewReport;
    data['workRequestsCount'] = workRequestsCount;
    data['unassignedJobsCount'] = unassignedJobsCount;
    if (userJobs != null) {
      data['userJobs'] = userJobs!.toJson();
    }
    if (yardJobs != null) {
      data['yardJobs'] = yardJobs!.toJson();
    }
    return data;
  }
}

class JobGroup {
  JobGroup({this.newJobs, this.inProgressJobs, this.completedJobs});

  JobGroup.fromJson(Map<String, dynamic> json) {
    newJobs = json['newJobs'] != null
        ? JobDetails.fromJson(json['newJobs'] as Map<String, dynamic>)
        : null;
    inProgressJobs = json['inProgressJobs'] != null
        ? JobDetails.fromJson(json['inProgressJobs'] as Map<String, dynamic>)
        : null;
    completedJobs = json['completedJobs'] != null
        ? JobDetails.fromJson(json['completedJobs'] as Map<String, dynamic>)
        : null;
  }
  JobDetails? newJobs;
  JobDetails? inProgressJobs;
  JobDetails? completedJobs;

  int get count =>
      (newJobs?.count ?? 0) +
      (inProgressJobs?.count ?? 0) +
      (completedJobs?.count ?? 0);

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (newJobs != null) {
      data['newJobs'] = newJobs!.toJson();
    }
    if (inProgressJobs != null) {
      data['inProgressJobs'] = inProgressJobs!.toJson();
    }
    if (completedJobs != null) {
      data['completedJobs'] = completedJobs!.toJson();
    }
    return data;
  }
}

class JobDetails {
  JobDetails({this.count, this.recentActivities});

  JobDetails.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    recentActivities =
        (json['recentActivities'] as List<dynamic>).cast<String>();
  }
  int? count;
  List<String>? recentActivities;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['count'] = count;
    data['recentActivities'] = recentActivities;
    return data;
  }
}
