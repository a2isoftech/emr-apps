class TemplateQuestion {
  TemplateQuestion({
    this.question,
    this.questionType,
    this.validator,
    this.labelColourWarning,
    this.dropdownList,
    this.isNewList,
    this.url,
    this.faultName,
    this.isMultilineText,
  });

  factory TemplateQuestion.fromJson(Map<String, dynamic> json) =>
      _$TemplateQuestionFromJson(json);

  String? question;
  String? questionType;
  String? validator;
  String? labelColourWarning;
  String? dropdownList;
  bool? isNewList;
  String? url;
  String? faultName;
  String? isMultilineText;

  Map<String, dynamic> toJson() => _$TemplateQuestionToJson(this);
}

TemplateQuestion _$TemplateQuestionFromJson(Map<String, dynamic> json) =>
    TemplateQuestion(
      question: json['question'] as String?,
      questionType: json['questionType'] as String?,
      validator: json['validator'] as String?,
      labelColourWarning: json['labelColourWarning'] as String?,
      dropdownList: json['dropdownList'] as String?,
      isNewList: json['isNewList'] as bool?,
      url: json['url'] as String?,
      faultName: json['faultName'] as String?,
      isMultilineText: json['isMultilineText'] as String?,
    );

Map<String, dynamic> _$TemplateQuestionToJson(TemplateQuestion instance) =>
    <String, dynamic>{
      'question': instance.question,
      'questionType': instance.questionType,
      'validator': instance.validator,
      'labelColourWarning': instance.labelColourWarning,
      'dropdownList': instance.dropdownList,
      'isNewList': instance.isNewList,
      'url': instance.url,
      'faultName': instance.faultName,
      'isMultilineText': instance.isMultilineText,
    };

class TemplateQuestionModel {
  TemplateQuestionModel({
    this.id,
    this.sectionId,
    this.question,
    this.questionType,
    this.validator,
    this.labelColourWarning,
    this.dropdownList,
    this.isNewList,
    this.url,
    this.faultName,
    this.isMultilineText,
  });

  int? id;
  int? sectionId;
  String? question;
  String? questionType;
  String? validator;
  String? labelColourWarning;
  String? dropdownList;
  bool? isNewList;
  String? url;
  String? faultName;
  String? isMultilineText;
}
