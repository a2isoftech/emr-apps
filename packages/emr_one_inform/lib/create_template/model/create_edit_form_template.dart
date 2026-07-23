class CreateEditFormTemplate {
  CreateEditFormTemplate({
    this.id,
    this.validateFrom,
    this.isEmailNotificationRequired,
    this.sendEmailOnFailedQuestions,
    this.emailIds,
    this.assignFailedQuestionToTeam,
    this.assignFailedQuestionToTeamId,
    this.uuid,
    this.title,
    this.referenceId,
    this.clientId,
    this.isQuickTemplate,
    this.isDigitalSignatureRequired,
    this.validateBySignature,
    this.validateByWorkOrder,
    this.template,
    this.isPublished,
  });

  CreateEditFormTemplate.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    validateFrom = json['validateFrom'] == null
        ? null
        : DateTime.parse(json['validateFrom'] as String);
    isEmailNotificationRequired = json['isEmailNotificationRequired'] as bool?;
    sendEmailOnFailedQuestions = json['sendEmailOnFailedQuestions'] as bool?;
    isPublished = json['isPublished'] as bool?;
    emailIds = json['emailIds'] as String?;
    assignFailedQuestionToTeam = json['assignFailedQuestionToTeam'] as String?;
    assignFailedQuestionToTeamId =
        json['assignFailedQuestionToTeamId'] as String?;
    uuid = json['uuid'] as String?;
    title = json['title'] as String?;
    referenceId = json['referenceId'] as String?;
    clientId = json['clientId'] as int?;
    isQuickTemplate = json['isQuickTemplate'] as bool?;
    isDigitalSignatureRequired = json['isDigitalSignatureRequired'] as bool?;
    validateBySignature = json['validateBySignature'] as bool?;
    validateByWorkOrder = json['validateByWorkOrder'] as bool?;
    template = json['template'] != null
        ? CreateEditFormTemplateInfo.fromJson(
            json['template'] as Map<String, dynamic>,
          )
        : null;
  }
  int? id;
  String? uuid;
  String? title;
  String? referenceId;
  int? clientId;
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
  bool? isQuickTemplate;
  CreateEditFormTemplateInfo? template;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['validateFrom'] = validateFrom?.toIso8601String();
    data['isEmailNotificationRequired'] = isEmailNotificationRequired;
    data['sendEmailOnFailedQuestions'] = sendEmailOnFailedQuestions;
    data['isPublished'] = isPublished;
    data['emailIds'] = emailIds;
    data['assignFailedQuestionToTeam'] = assignFailedQuestionToTeam;
    data['assignFailedQuestionToTeamId'] = assignFailedQuestionToTeamId;
    data['uuid'] = uuid;
    data['title'] = title;
    data['referenceId'] = referenceId;
    data['clientId'] = clientId;
    data['isQuickTemplate'] = isQuickTemplate;
    data['isDigitalSignatureRequired'] = isDigitalSignatureRequired;
    data['validateBySignature'] = validateBySignature;
    data['validateByWorkOrder'] = validateByWorkOrder;
    if (template != null) {
      data['template'] = template!.toJson();
    }
    return data;
  }
}

class CreateEditFormTemplateInfo {
  CreateEditFormTemplateInfo({this.title, this.uuid, this.sections});

  CreateEditFormTemplateInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'] as String?;
    uuid = json['uuid'] as String?;
    if (json['sections'] != null) {
      sections = (json['sections'] as List<Map<String, dynamic>>)
          .map(Section.fromJson)
          .toList();
    }
  }
  String? title;
  String? uuid;
  List<Section>? sections;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['uuid'] = uuid;
    if (sections != null) {
      data['sections'] = sections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Section {
  Section({this.id, this.header, this.components});

  Section.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    header = json['header'] as String?;
    if (json['components'] != null) {
      components = (json['components'] as List<Map<String, dynamic>>)
          .map(Component.fromJson)
          .toList();
    }
  }
  String? id;
  String? header;
  List<Component>? components;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['header'] = header;
    if (components != null) {
      data['components'] = components!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  bool isValid() {
    return (header?.isNotEmpty ?? false) &&
        components != null &&
        components!.isNotEmpty &&
        !components!.any((e) => !e.isValid());
  }
}

class Component {
  Component({
    this.id,
    this.url,
    this.isHTML,
    this.visibilityProvider,
    this.assetCounter,
    this.mroDataProvider,
    this.showWarningLabel,
    this.title,
    this.isRequired,
    this.validators,
    this.message,
    this.messageType,
    this.isSRRequired,
    this.isMultiline,
    this.dropdownDataProvider,
    this.type,
    this.faultTitle,
  });

  Component.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    url = json['url'] as String?;
    isHTML = json['isHTML'] as bool?;
    visibilityProvider = json['visibilityProvider'] != null
        ? DataProvider.fromJson(
            json['visibilityProvider'] as Map<String, dynamic>,
          )
        : null;
    assetCounter = json['assetCounter'] != null
        ? AssetCounter.fromJson(
            json['assetCounter'] as Map<String, dynamic>,
          )
        : null;
    mroDataProvider = json['mroDataProvider'] != null
        ? DataProvider.fromJson(
            json['mroDataProvider'] as Map<String, dynamic>,
          )
        : null;
    showWarningLabel = json['showWarningLabel'] as bool?;
    title = json['title'] as String?;
    isRequired = json['isRequired'] as bool?;
    if (json['validators'] != null) {
      validators = (json['validators'] as List<Map<String, dynamic>>)
          .map(Validator.fromJson)
          .toList();
    }
    message = json['message'] as String?;
    messageType = json['messageType'] as String?;
    isSRRequired = json['isSRRequired'] as bool?;
    isMultiline = json['isMultiline'] as bool?;
    dropdownDataProvider = json['dropdownDataProvider'] != null
        ? DataProvider.fromJson(
            json['dropdownDataProvider'] as Map<String, dynamic>,
          )
        : null;
    type = json['type'] as String?;
    faultTitle = json['faultTitle'] as String?;
  }
  String? id;
  String? url;
  bool? isHTML;
  DataProvider? visibilityProvider;
  AssetCounter? assetCounter;
  DataProvider? mroDataProvider;
  bool? showWarningLabel;
  String? title;
  bool? isRequired;
  List<Validator>? validators;
  String? message;
  String? messageType;
  bool? isSRRequired;
  bool? isMultiline;
  DataProvider? dropdownDataProvider;
  String? type;
  String? faultTitle;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['url'] = url;
    data['isHTML'] = isHTML;
    if (visibilityProvider != null) {
      data['visibilityProvider'] = visibilityProvider!.toJson();
    }
    if (assetCounter != null) {
      data['assetCounter'] = assetCounter!.toJson();
    }
    if (mroDataProvider != null) {
      data['mroDataProvider'] = mroDataProvider!.toJson();
    }
    data['showWarningLabel'] = showWarningLabel;
    data['title'] = title;
    data['isRequired'] = isRequired;
    if (validators != null) {
      data['validators'] = validators!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    data['messageType'] = messageType;
    data['isSRRequired'] = isSRRequired;
    data['isMultiline'] = isMultiline;
    if (dropdownDataProvider != null) {
      data['dropdownDataProvider'] = dropdownDataProvider!.toJson();
    }
    data['type'] = type;
    data['faultTitle'] = faultTitle;
    return data;
  }

  bool isValid() {
    return (type?.isNotEmpty ?? false) &&
        ((title?.isNotEmpty ?? false) || (message?.isNotEmpty ?? false));
  }
}

class Validator {
  Validator({this.type, this.message, this.minValue, this.maxValue});

  Validator.fromJson(Map<String, dynamic> json) {
    type = json['type'] as String?;
    message = json['message'] as String?;
    minValue = json['minValue'] as int?;
    maxValue = json['maxValue'] as int?;
  }
  String? type;
  String? message;
  int? minValue;
  int? maxValue;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['message'] = message;
    data['minValue'] = minValue;
    data['maxValue'] = maxValue;
    return data;
  }
}

class AssetCounter {
  AssetCounter({this.name});
  AssetCounter.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
  }

  String? name;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class DataProvider {
  DataProvider({
    this.id,
    this.type,
    this.values,
    this.value,
    this.lengthGreatorThan,
    this.url,
    this.query,
    this.objectName,
  });

  DataProvider.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    type = json['type'] as String?;
    if (json['values'] != null) {
      values = (json['values'] as List<Map<String, dynamic>>)
          .map(Values.fromJson)
          .toList();
    }
    value = json['value'] as String?;
    lengthGreatorThan = json['lengthGreatorThan'] as int?;
    url = json['url'] as String?;
    query = json['query'] as String?;
    objectName = json['objectName'] as String?;
  }
  String? id;
  String? type;
  List<Values>? values;
  String? value;
  int? lengthGreatorThan;
  String? url;
  String? query;
  String? objectName;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    if (values != null) {
      data['values'] = values!.map((v) => v.toJson()).toList();
    }
    data['value'] = value;
    data['lengthGreatorThan'] = lengthGreatorThan;
    data['url'] = url;
    data['query'] = query;
    data['objectName'] = objectName;
    return data;
  }
}

class Values {
  Values({this.id, this.value});

  Values.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    value = json['value'] as String?;
  }
  String? id;
  String? value;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['value'] = value;
    return data;
  }
}
