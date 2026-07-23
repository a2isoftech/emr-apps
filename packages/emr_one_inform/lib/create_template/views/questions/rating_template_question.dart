import 'package:emr_one_inform/create_template/views/questions/template_question.dart';
import 'package:flutter/material.dart';

class RatingTemplateQuestion extends TemplateQuestion {
  const RatingTemplateQuestion({
    required super.component,
    required super.onStateChanged,
    super.key,
  });

  @override
  State<RatingTemplateQuestion> createState() =>
      _RatingTemplateQuestionTemplateQuestionState();
}

class _RatingTemplateQuestionTemplateQuestionState
    extends TemplateQuestionState<RatingTemplateQuestion> {
  @override
  Widget build(BuildContext context) => getDefaultParameterWidgets();
}
