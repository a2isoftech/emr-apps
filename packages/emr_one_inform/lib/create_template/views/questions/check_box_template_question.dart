import 'package:emr_one_inform/create_template/views/questions/template_question.dart';
import 'package:flutter/material.dart';

class CheckboxTemplateQuestion extends TemplateQuestion {
  const CheckboxTemplateQuestion({
    required super.component,
    required super.onStateChanged,
    super.key,
  });

  @override
  State<CheckboxTemplateQuestion> createState() =>
      _CheckboxTemplateQuestionTemplateQuestionState();
}

class _CheckboxTemplateQuestionTemplateQuestionState
    extends TemplateQuestionState<CheckboxTemplateQuestion> {
  @override
  void initState() {
    super.initState();
    widget.component.isRequired ??= true;
  }

  @override
  Widget build(BuildContext context) => getDefaultParameterWidgets();
}
