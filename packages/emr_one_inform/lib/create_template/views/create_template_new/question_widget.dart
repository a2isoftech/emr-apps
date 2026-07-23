import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/create_template/model/create_edit_form_template.dart';
import 'package:emr_one_inform/create_template/views/questions/check_box_template_question.dart';
import 'package:emr_one_inform/create_template/views/questions/date_template_question.dart';
import 'package:emr_one_inform/create_template/views/questions/email_template_question.dart';
import 'package:emr_one_inform/create_template/views/questions/label_template_question.dart';
import 'package:emr_one_inform/create_template/views/questions/list_template_question.dart';
import 'package:emr_one_inform/create_template/views/questions/phone_template_question.dart';
import 'package:emr_one_inform/create_template/views/questions/rating_template_question.dart';
import 'package:emr_one_inform/create_template/views/questions/template_question.dart';
import 'package:emr_one_inform/create_template/views/questions/text_template_question.dart';
import 'package:emr_one_inform/create_template/views/questions/url_template_question.dart';
import 'package:emr_one_inform/create_template/views/questions/yes_no_template_question.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({
    required this.section,
    required this.component,
    required this.onStateChanged,
    super.key,
  });

  final Section section;
  final Component component;
  final void Function() onStateChanged;

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  final TextEditingController _questionController = TextEditingController();
  final TextEditingController _questionTypeController = TextEditingController();

  String questionTitle = '';

  late final TemplateQuestion? actualComponent;

  @override
  void initState() {
    super.initState();
    if( widget.component.id == 'do-not-use-warning')
    {
      _questionController.text = widget.component.message ?? '';
    }
    else
    {
    _questionController.text = questionTitle =
        widget.component.title ?? widget.component.message ?? '';
    }
    
    _questionTypeController.text = widget.component.type!;
    actualComponent = _getActualComponent();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 5,
      children: [
        _textFormFieldQuestionType(context),
        _textFormFieldQuestionTitle(context),
        if (actualComponent != null) actualComponent!,
      ],
    );
  }

  Widget _textFormFieldQuestionTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Focus(
          onFocusChange: (value) {
            if (!value) {
              widget.onStateChanged();
            }
          },
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _questionController,
            decoration: FormStyles.textFieldDecoration(context)
                .copyWith(labelText: context.l10n.question),
            onChanged: (value) {
              questionTitle = value;
              _updateQuestionTitle();
            },
            validator: (value) => (value == null || value.isEmpty)
                ? context.l10n.adhocQuestionValidation
                : null,
          ),
        ),
      ],
    );
  }

  Widget _textFormFieldQuestionType(BuildContext context) {
    return AbsorbPointer(
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: _questionTypeController,
        decoration: FormStyles.textFieldDecoration(context)
            .copyWith(labelText: 'Question Type'),
      ),
    );
  }

  TemplateQuestion? _getActualComponent() {
    try {
      switch (widget.component.type) {
        case 'YesNoQuestion':
          return YesNoTemplateQuestion(
            component: widget.component,
            onStateChanged: widget.onStateChanged,
          );
        case 'Checkbox':
          return CheckboxTemplateQuestion(
            component: widget.component,
            onStateChanged: widget.onStateChanged,
          );
        case 'Date':
          return DateTemplateQuestion(
            component: widget.component,
            onStateChanged: widget.onStateChanged,
          );
        case 'Phone':
          return PhoneTemplateQuestion(
            component: widget.component,
            onStateChanged: widget.onStateChanged,
          );
        case 'Rating':
          return RatingTemplateQuestion(
            component: widget.component,
            onStateChanged: widget.onStateChanged,
          );
        case 'Email':
          return EmailTemplateQuestion(
            component: widget.component,
            onStateChanged: widget.onStateChanged,
          );
        case 'Url':
          return UrlTemplateQuestion(
            component: widget.component,
            onStateChanged: widget.onStateChanged,
          );
        case 'Label':
          return LabelTemplateQuestion(
            component: widget.component,
            onStateChanged: widget.onStateChanged,
          );
        case 'TextInput':
          return TextInputTemplateQuestion(
            component: widget.component,
            onStateChanged: widget.onStateChanged,
          );
        case 'SingleChoice':
          return ListTemplateQuestion(
            component: widget.component,
            onStateChanged: widget.onStateChanged,
          );
        default:
          return null;
      }
    } finally {
      setState(() {});
    }
  }

  void _updateQuestionTitle() {
    if (widget.component.type == 'Label' ||
        widget.component.type == 'Declaration') {
      widget.component.message = questionTitle;
    } else {
      widget.component.title = questionTitle;
    }
  }
}
