import 'package:emr_one_inform/create_template/views/questions/template_question.dart';
import 'package:flutter/material.dart';

class PhoneTemplateQuestion extends TemplateQuestion {
  const PhoneTemplateQuestion({
    required super.component,
    required super.onStateChanged,
    super.key,
  });

  @override
  State<PhoneTemplateQuestion> createState() =>
      _PhoneTemplateQuestionTemplateQuestionState();
}

class _PhoneTemplateQuestionTemplateQuestionState
    extends TemplateQuestionState<PhoneTemplateQuestion> {
  @override
  Widget build(BuildContext context) => getDefaultParameterWidgets();
}
