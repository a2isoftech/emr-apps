class Category {
  Category({
    required this.id,
    this.title,
    this.isEditable,
    this.isD365,
    this.isActive,
    this.defaultWorkRequestType,
    this.canSchedule,
    this.defaultLifeCycleState,
    this.isDigitalSignatureRequired,
    this.validateBySignature,
    this.validateByWorkOrder,
    this.validateFrom,
    this.isEmailNotificationRequired,
    this.sendEmailOnFailedQuestions,
    this.emailIds,
    this.assignFailedQuestionToTeam,
    this.assignFailedQuestionToTeamId,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$ClientFromJson(json);
  final int id;
  final String? title;
  final bool? isEditable;
  final bool? isD365;
  final bool? isActive;
  final String? defaultWorkRequestType;
  final bool? canSchedule;
  final String? defaultLifeCycleState;

  final bool? isDigitalSignatureRequired;
  final bool? validateBySignature;
  final bool? validateByWorkOrder;
  final String? validateFrom;
  final bool? isEmailNotificationRequired;
  final bool? sendEmailOnFailedQuestions;
  final String? emailIds;
  final String? assignFailedQuestionToTeam;
  final String? assignFailedQuestionToTeamId;
  Map<String, dynamic> toJson() => _$ClientToJson(this);
}

Category _$ClientFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as int,
      title: json['title'] as String?,
      isEditable: json['isEditable'] as bool?,
      isD365: json['isD365'] as bool?,
      isActive: json['isActive'] as bool?,
      defaultWorkRequestType: json['defaultWorkRequestType'] as String?,
      defaultLifeCycleState: json['defaultLifeCycleState'] as String?,
      canSchedule: json['canSchedule'] as bool?,
      isDigitalSignatureRequired: json['isDigitalSignatureRequired'] as bool?,
      validateBySignature: json['validateBySignature'] as bool?,
      validateByWorkOrder: json['validateByWorkOrder'] as bool?,
      validateFrom: json['validateFrom'] as String?,
      isEmailNotificationRequired: json['isEmailNotificationRequired'] as bool?,
      sendEmailOnFailedQuestions: json['sendEmailOnFailedQuestions'] as bool?,
      emailIds: json['emailIds'] as String?,
      assignFailedQuestionToTeam: json['assignFailedQuestionToTeam'] as String?,
      assignFailedQuestionToTeamId:
          json['assignFailedQuestionToTeamId'] as String?,
    );

Map<String, dynamic> _$ClientToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isEditable': instance.isEditable,
      'isD365': instance.isD365,
      'isActive': instance.isActive,
      'defaultWorkRequestType': instance.defaultWorkRequestType,
      'canSchedule': instance.canSchedule,
      'defaultLifeCycleState': instance.defaultLifeCycleState,
      'isDigitalSignatureRequired': instance.isDigitalSignatureRequired,
      'validateBySignature': instance.validateBySignature,
      'validateByWorkOrder': instance.validateByWorkOrder,
      'validateFrom': instance.validateFrom,
      'isEmailNotificationRequired': instance.isEmailNotificationRequired,
      'sendEmailOnFailedQuestions': instance.sendEmailOnFailedQuestions,
      'emailIds': instance.emailIds,
      'assignFailedQuestionToTeam': instance.assignFailedQuestionToTeam,
      'assignFailedQuestionToTeamId': instance.assignFailedQuestionToTeamId,
    };
