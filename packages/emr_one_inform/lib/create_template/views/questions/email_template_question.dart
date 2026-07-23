import 'package:emr_one_inform/create_template/views/questions/template_question.dart';
import 'package:flutter/material.dart';

class EmailTemplateQuestion extends TemplateQuestion {
  const EmailTemplateQuestion({
    required super.component,
    required super.onStateChanged,
    super.key,
  });

  @override
  State<EmailTemplateQuestion> createState() =>
      _EmailTemplateQuestionTemplateQuestionState();
}

class _EmailTemplateQuestionTemplateQuestionState
    extends TemplateQuestionState<EmailTemplateQuestion> {
  @override
  Widget build(BuildContext context) => getDefaultParameterWidgets();
}
