class AdhocTemplate {
  AdhocTemplate({
    this.uuid,
    this.title,
    this.referenceId,
    this.clientId,
    this.isQuickTemplate,
    this.isDigitalSignatureRequired,
    this.validateBySignature,
    this.validateByWorkOrder,
    this.validateFrom,
    this.isEmailNotificationRequired,
    this.sendEmailOnFailedQuestions,
    this.emailIds,
    this.assignFailedQuestionToTeam,
    this.assignFailedQuestionToTeamId,
    this.isPublished,
  });

  AdhocTemplate.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'] as String;
    title = json['title'] as String;
    referenceId = json['referenceId'] as String;
    clientId = json['clientId'] as int;
    isQuickTemplate = json['isQuickTemplate'] as bool;
    isDigitalSignatureRequired = json['isDigitalSignatureRequired'] as bool;
    validateBySignature = json['validateBySignature'] as bool;
    validateByWorkOrder = json['validateByWorkOrder'] as bool;
    isEmailNotificationRequired = json['isEmailNotificationRequired'] as bool;
    sendEmailOnFailedQuestions = json['sendEmailOnFailedQuestions'] as bool;
    isPublished = json['isPublished'] as bool;
    emailIds = json['emailIds'] as String?;
    assignFailedQuestionToTeam = json['assignFailedQuestionToTeam'] as String?;
    assignFailedQuestionToTeamId =
        json['assignFailedQuestionToTeamId'] as String?;
    validateFrom = json['validateFrom'] == null
        ? null
        : DateTime.parse(json['validateFrom'] as String).toLocal();
  }

  String? uuid;
  String? title;
  String? referenceId;
  int? clientId;
  bool? isQuickTemplate;
  bool? isDigitalSignatureRequired;
  bool? validateBySignature;
  bool? validateByWorkOrder;
  DateTime? validateFrom;
  bool? isEmailNotificationRequired;
  bool? sendEmailOnFailedQuestions;
  bool? isPublished;
  String? emailIds;
  String? assignFailedQuestionToTeam;
  String? assignFailedQuestionToTeamId;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['title'] = title;
    data['referenceId'] = referenceId;
    data['clientId'] = clientId;
    data['isQuickTemplate'] = isQuickTemplate;
    data['isDigitalSignatureRequired'] = isDigitalSignatureRequired;
    data['validateBySignature'] = validateBySignature;
    data['validateByWorkOrder'] = validateByWorkOrder;
    data['validateFrom'] = validateFrom;
    data['isEmailNotificationRequired'] = isEmailNotificationRequired;
    data['sendEmailOnFailedQuestions'] = sendEmailOnFailedQuestions;
    data['emailIds'] = emailIds;
    data['assignFailedQuestionToTeam'] = assignFailedQuestionToTeam;
    data['assignFailedQuestionToTeamId'] = assignFailedQuestionToTeamId;
    data['isPublished'] = isPublished;
    return data;
  }
}
