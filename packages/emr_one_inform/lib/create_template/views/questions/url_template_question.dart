import 'package:emr_one_inform/create_template/views/questions/template_question.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';

class UrlTemplateQuestion extends TemplateQuestion {
  const UrlTemplateQuestion({
    required super.component,
    required super.onStateChanged,
    super.key,
  });

  @override
  State<UrlTemplateQuestion> createState() =>
      _UrlTemplateQuestionTemplateQuestionState();
}

class _UrlTemplateQuestionTemplateQuestionState
    extends TemplateQuestionState<UrlTemplateQuestion> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.component.url ?? '';
  }

  @override
  Widget build(BuildContext context) => InformTextBox(
        controller: _controller,
        onChanged: (value) => widget.component.url = value,
        hintText: 'Please enter a valid URL',
        labelText: 'Url to navigate',
      );
}
