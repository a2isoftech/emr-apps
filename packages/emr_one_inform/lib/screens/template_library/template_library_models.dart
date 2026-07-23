import 'package:emr_one_inform/models/schedule_task_models.dart';

class PanelParent {
  PanelParent({
    required this.clientName,
    required this.clientTemplateCount,
    required this.totalTemplateCount,
    required this.panelChild,
    required this.expanded,
  });

  factory PanelParent.fromJson(Map<String, dynamic> json) =>
      _$PanelParentFromJson(json);
  final String clientName;
  final int clientTemplateCount;
  final int totalTemplateCount;
  final List<PanelChild> panelChild;
  bool expanded;

  Map<String, dynamic> toJson() => _$PanelParentToJson(this);
}

PanelParent _$PanelParentFromJson(Map<String, dynamic> json) => PanelParent(
      clientName: json['clientName'] as String,
      clientTemplateCount: json['clientTemplateCount'] as int,
      totalTemplateCount: json['totalTemplateCount'] as int,
      panelChild: (json['panelChild'] as List<dynamic>)
          .map((e) => PanelChild.fromJson(e as Map<String, dynamic>))
          .toList(),
      expanded: json['expanded'] as bool,
    );

Map<String, dynamic> _$PanelParentToJson(PanelParent instance) =>
    <String, dynamic>{
      'clientName': instance.clientName,
      'clientTemplateCount': instance.clientTemplateCount,
      'totalTemplateCount': instance.totalTemplateCount,
      'panelChild': instance.panelChild,
      'expanded': instance.expanded,
    };

class PanelChild {
  PanelChild({
    required this.templateId,
    required this.templateTitle,
    required this.referenceId,
    required this.clientName,
    required this.createdDate,
    required this.createdBy,
    required this.isDigitalSignatureRequired,
    required this.validateBySignature,
    required this.validateByWorkOrder,
    required this.validateFrom,
    required this.isEmailNotificationRequired,
    required this.sendEmailOnFailedQuestions,
    required this.isPublished,
    this.versions,
    this.emailIds,
    this.assignFailedQuestionToTeam,
    this.assignFailedQuestionToTeamId,
  });

  factory PanelChild.fromJson(Map<String, dynamic> json) =>
      _$PanelChildFromJson(json);
  final String templateId;
  final String templateTitle;
  final String referenceId;
  final String clientName;
  final DateTime createdDate;
  final String createdBy;
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

  Map<String, dynamic> toJson() => _$PanelChildToJson(this);
}

PanelChild _$PanelChildFromJson(Map<String, dynamic> json) => PanelChild(
      templateId: json['templateId'] as String,
      templateTitle: json['templateTitle'] as String,
      referenceId: json['referenceId'] as String,
      clientName: json['clientName'] as String,
      createdDate: DateTime.parse(json['createdDate'] as String),
      createdBy: json['createdBy'] as String,
      isDigitalSignatureRequired: json['isDigitalSignatureRequired'] as bool,
      validateBySignature: json['validateBySignature'] as bool,
      validateByWorkOrder: json['validateByWorkOrder'] as bool,
      isEmailNotificationRequired: json['isEmailNotificationRequired'] as bool,
      sendEmailOnFailedQuestions: json['sendEmailOnFailedQuestions'] as bool,
      isPublished: json['isPublished'] as bool,
      emailIds: json['emailIds'] as String?,
      assignFailedQuestionToTeam: json['assignFailedQuestionToTeam'] as String?,
      assignFailedQuestionToTeamId:
          json['assignFailedQuestionToTeamId'] as String?,
      validateFrom: json['validateFrom'] == null
          ? null
          : DateTime.parse(json['validateFrom'] as String).toLocal(),
      versions: (json['versions'] as List<dynamic>?)
          ?.map((e) => TemplateVersion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PanelChildToJson(PanelChild instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'templateTitle': instance.templateTitle,
      'referenceId': instance.referenceId,
      'clientName': instance.clientName,
      'createdDate': instance.createdDate.toIso8601String(),
      'createdBy': instance.createdBy,
      'versions': instance.versions,
      'isDigitalSignatureRequired': instance.isDigitalSignatureRequired,
      'validateBySignature': instance.validateBySignature,
      'validateByWorkOrder': instance.validateByWorkOrder,
      'validateFrom': instance.validateFrom,
      'isEmailNotificationRequired': instance.isEmailNotificationRequired,
      'sendEmailOnFailedQuestions': instance.sendEmailOnFailedQuestions,
      'isPublished': instance.isPublished,
      'emailIds': instance.emailIds,
      'assignFailedQuestionToTeam': instance.assignFailedQuestionToTeam,
      'assignFailedQuestionToTeamId': instance.assignFailedQuestionToTeamId,
    };

class PatchTemplate {
  PatchTemplate({
    required this.templateId,
    required this.isDigitalSignatureRequired,
    required this.validateBySignature,
    required this.validateByWorkOrder,
    required this.validateFrom,
    required this.isEmailNotificationRequired,
    required this.sendEmailOnFailedQuestions,
    required this.emailIds,
    required this.assignFailedQuestionToTeamId,
    required this.isPublished,
  });
  PatchTemplate.fromJson(Map<String, dynamic> json) {
    templateId = json['templateId'] as String;
    isDigitalSignatureRequired = json['isDigitalSignatureRequired'] as bool?;
    validateBySignature = json['validateBySignature'] as bool?;
    validateByWorkOrder = json['validateByWorkOrder'] as bool?;
    isEmailNotificationRequired = json['isEmailNotificationRequired'] as bool?;
    sendEmailOnFailedQuestions = json['sendEmailOnFailedQuestions'] as bool?;
    isPublished = json['isPublished'] as bool?;
    emailIds = json['emailIds'] as String?;
    assignFailedQuestionToTeamId =
        json['assignFailedQuestionToTeamId'] as String?;
    validateFrom = json['validateFrom'] == null
        ? null
        : DateTime.parse(json['validateFrom'] as String).toLocal();
  }

  late final String templateId;
  late final bool? isDigitalSignatureRequired;
  late final bool? validateBySignature;
  late final bool? validateByWorkOrder;
  late final bool? isEmailNotificationRequired;
  late final bool? sendEmailOnFailedQuestions;
  late final bool? isPublished;
  late final String? emailIds;
  late final String? assignFailedQuestionToTeamId;
  late final DateTime? validateFrom;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['templateId'] = templateId;
    data['isDigitalSignatureRequired'] = isDigitalSignatureRequired;
    data['validateBySignature'] = validateBySignature;
    data['validateByWorkOrder'] = validateByWorkOrder;
    data['isEmailNotificationRequired'] = isEmailNotificationRequired;
    data['isPublished'] = isPublished;
    data['sendEmailOnFailedQuestions'] = sendEmailOnFailedQuestions;
    data['emailIds'] = emailIds;
    data['assignFailedQuestionToTeamId'] = assignFailedQuestionToTeamId;
    data['validateFrom'] = validateFrom?.toIso8601String();
    return data;
  }
}

class DeleteTemplateRequest {
  DeleteTemplateRequest({
    this.uuid,
  });

  factory DeleteTemplateRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteTemplateRequestFromJson(json);
  String? uuid;

  Map<String, dynamic> toJson() => _$DeleteTemplateRequestToJson(this);
}

DeleteTemplateRequest _$DeleteTemplateRequestFromJson(
  Map<String, dynamic> json,
) =>
    DeleteTemplateRequest(
      uuid: json['uuid'] as String?,
    );

Map<String, dynamic> _$DeleteTemplateRequestToJson(
  DeleteTemplateRequest instance,
) =>
    <String, dynamic>{
      'uuid': instance.uuid,
    };

class DeleteTemplateResponse {
  DeleteTemplateResponse({
    this.errors = const [],
    this.success = false,
  });

  final bool success;
  final List<String> errors;
}
