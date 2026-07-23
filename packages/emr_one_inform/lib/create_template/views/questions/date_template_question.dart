import 'package:emr_one_inform/create_template/views/questions/template_question.dart';
import 'package:flutter/material.dart';

class DateTemplateQuestion extends TemplateQuestion {
  const DateTemplateQuestion({
    required super.component,
    required super.onStateChanged,
    super.key,
  });

  @override
  State<DateTemplateQuestion> createState() =>
      _DateTemplateQuestionTemplateQuestionState();
}

class _DateTemplateQuestionTemplateQuestionState
    extends TemplateQuestionState<DateTemplateQuestion> {
  @override
  void initState() {
    super.initState();
    widget.component.isRequired ??= true;
  }

  @override
  Widget build(BuildContext context) => getDefaultParameterWidgets();
}
