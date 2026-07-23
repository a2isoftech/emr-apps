import 'package:emr_one_inform/models/base_root_form.dart';

class FormTemplate extends BaseRootForm {
  FormTemplate.fromLocalDB(
    super.currentJob,
    super.localJob,
  )   : templateId = currentJob.template?.templateId,
        version = currentJob.template?.version,
        title = currentJob.template?.title,
        description = currentJob.template?.description,
        referenceId = currentJob.template?.referenceId,
        isDigitalSignatureRequired =
            currentJob.template?.isDigitalSignatureRequired,
        validateBySignature = currentJob.template?.validateBySignature,
        validateByWorkOrder = currentJob.template?.validateByWorkOrder,
        validateFrom = currentJob.template?.validateFrom,
        isEmailNotificationRequired =
            currentJob.template?.isEmailNotificationRequired,
        sendEmailOnFailedQuestions =
            currentJob.template?.sendEmailOnFailedQuestions,
        emailIds = currentJob.template?.emailIds,
        assignFailedQuestionToTeam =
            currentJob.template?.assignFailedQuestionToTeam,
        assignFailedQuestionToTeamId =
            currentJob.template?.assignFailedQuestionToTeamId,
        super.fromLocalDB();

  FormTemplate.fromJson(super.json)
      : templateId = json['templateId'] as String?,
        version = json['version'] as int?,
        title = json['title'] as String?,
        description = json['description'] as String?,
        referenceId = json['referenceId'] as String?,
        isDigitalSignatureRequired =
            json['isDigitalSignatureRequired'] as bool?,
        validateBySignature = json['validateBySignature'] as bool?,
        validateByWorkOrder = json['validateByWorkOrder'] as bool?,
        isEmailNotificationRequired =
            json['isEmailNotificationRequired'] as bool?,
        sendEmailOnFailedQuestions =
            json['sendEmailOnFailedQuestions'] as bool?,
        emailIds = json['emailIds'] as String?,
        assignFailedQuestionToTeam =
            json['assignFailedQuestionToTeam'] as String?,
        assignFailedQuestionToTeamId =
            json['assignFailedQuestionToTeamId'] as String?,
        validateFrom = json['validateFrom'] == null
            ? null
            : DateTime.parse(json['validateFrom'] as String).toLocal(),
        super.fromJson();
  final String? templateId;
  final int? version;
  final String? title;
  final String? description;
  final String? referenceId;
  final bool? isDigitalSignatureRequired;
  final bool? validateBySignature;
  final bool? validateByWorkOrder;
  final DateTime? validateFrom;
  final bool? isEmailNotificationRequired;
  final bool? sendEmailOnFailedQuestions;
  final String? emailIds;
  final String? assignFailedQuestionToTeam;
  final String? assignFailedQuestionToTeamId;

  @override
  Map<String, dynamic> toJson() => _$FormTemplateToJson(this);
}

Map<String, dynamic> _$FormTemplateToJson(FormTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'document': instance.document,
      'templateId': instance.templateId,
      'version': instance.version,
      'title': instance.title,
      'description': instance.description,
      'referenceId': instance.referenceId,
      'isDigitalSignatureRequired': instance.isDigitalSignatureRequired,
      'validateBySignature': instance.validateBySignature,
      'validateByWorkOrder': instance.validateByWorkOrder,
      'validateFrom': instance.validateFrom?.toIso8601String(),
      'isEmailNotificationRequired': instance.isEmailNotificationRequired,
      'sendEmailOnFailedQuestions': instance.sendEmailOnFailedQuestions,
      'emailIds': instance.emailIds,
      'assignFailedQuestionToTeam': instance.assignFailedQuestionToTeam,
      'assignFailedQuestionToTeamId': instance.assignFailedQuestionToTeamId,
    };
