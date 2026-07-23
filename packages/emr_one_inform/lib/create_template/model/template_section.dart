import 'package:emr_one_inform/create_template/model/template_question.dart';

class TemplateSection {
  TemplateSection({
    this.title,
    this.questions,
  });

  factory TemplateSection.fromJson(Map<String, dynamic> json) =>
      _$TemplateSectionFromJson(json);

  String? title;
  List<TemplateQuestion>? questions;

  Map<String, dynamic> toJson() => _$TemplateSectionToJson(this);
}

TemplateSection _$TemplateSectionFromJson(Map<String, dynamic> json) =>
    TemplateSection(
      title: json['title'] as String?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => TemplateQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TemplateSectionToJson(TemplateSection instance) =>
    <String, dynamic>{
      'title': instance.title,
      'questions': instance.questions,
    };

class TemplateSectionModel {
  TemplateSectionModel({
    this.id,
    this.title,
    this.questions,
  });

  int? id;
  String? title;
  List<TemplateQuestionModel>? questions;
}
