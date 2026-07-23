import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
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
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/widgets/inform_app_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  String questionTitle = '';
  String questionType = '';
  List<KeyValuePair<String, String>> questionTypes = [
    KeyValuePair(key: 'Checkbox', value: 'Checkbox'),
    KeyValuePair(key: 'Date', value: 'Date'),
    KeyValuePair(key: 'Email', value: 'Email'),
    KeyValuePair(key: 'Label', value: 'Label'),
    KeyValuePair(key: 'Rating', value: 'Rating'),
    KeyValuePair(key: 'SingleChoice', value: 'List'),
    KeyValuePair(key: 'Phone', value: 'Phone'),
    KeyValuePair(key: 'TextInput', value: 'Text Input'),
    KeyValuePair(key: 'Url', value: 'Url'),
    KeyValuePair(key: 'YesNoQuestion', value: 'Yes No'),
  ];

  TemplateQuestion? actualComponent;

  @override
  void initState() {
    super.initState();
    _questionController.text = questionTitle =
        widget.component.title ?? widget.component.message ?? '';
    questionType = widget.component.type ?? '';
    _getActualComponent();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: EmrColours.primaryBlue),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(5),
      child: Wrap(
        runSpacing: 5,
        children: [
          _textFormFieldQuestionTitle(context),
          _addDropDownQuestionType(context),
          if (actualComponent != null) actualComponent!,
        ],
      ),
    );
  }

  Widget _textFormFieldQuestionTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InformAppLabel(
              labelText: context.l10n.adhocQuestionLabel,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: InkWell(
                onTap: () {
                  widget.section.components?.remove(widget.component);
                  widget.onStateChanged();
                },
                child: SvgPicture.asset(
                  FormAppAssetsPath.remove,
                  package: FormAppStringLiteral.PackageName,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    FormAppColors.lightGrey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider(color: FormAppColors.lighterGrey, height: 5),
        const SizedBox(height: 5),
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

  Widget _addDropDownQuestionType(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        DropdownButtonFormField<String>(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: FormStyles.textFieldDecoration(context)
              .copyWith(labelText: context.l10n.question),
          hint: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              context.l10n.adhocQuestionTypeHint,
            ),
          ),
          icon: FormAppIcons.dropdownList,
          iconSize: 30,
          items: questionTypes.map((questionTypes) {
            return DropdownMenuItem<String>(
              value: questionTypes.key,
              child: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(
                  questionTypes.value,
                ),
              ),
            );
          }).toList(),
          onChanged: (String? value) {
            questionType = value ?? '';
            _questionTypeChanged();
            _getActualComponent();
            widget.onStateChanged();
          },
          validator: (value) {
            return (value == null)
                ? context.l10n.adhocQuestionTypeValidation
                : null;
          },
          initialValue: questionType == '' ? null : questionType,
        ),
      ],
    );
  }

  void _getActualComponent() {
    switch (questionType) {
      case 'YesNoQuestion':
        actualComponent = YesNoTemplateQuestion(
          component: widget.component,
          onStateChanged: widget.onStateChanged,
        );
      case 'Checkbox':
        actualComponent = CheckboxTemplateQuestion(
          component: widget.component,
          onStateChanged: widget.onStateChanged,
        );
      case 'Date':
        actualComponent = DateTemplateQuestion(
          component: widget.component,
          onStateChanged: widget.onStateChanged,
        );
      case 'Phone':
        actualComponent = PhoneTemplateQuestion(
          component: widget.component,
          onStateChanged: widget.onStateChanged,
        );
      case 'Rating':
        actualComponent = RatingTemplateQuestion(
          component: widget.component,
          onStateChanged: widget.onStateChanged,
        );
      case 'Email':
        actualComponent = EmailTemplateQuestion(
          component: widget.component,
          onStateChanged: widget.onStateChanged,
        );
      case 'Url':
        actualComponent = UrlTemplateQuestion(
          component: widget.component,
          onStateChanged: widget.onStateChanged,
        );
      case 'Label':
        actualComponent = LabelTemplateQuestion(
          component: widget.component,
          onStateChanged: widget.onStateChanged,
        );
      case 'TextInput':
        actualComponent = TextInputTemplateQuestion(
          component: widget.component,
          onStateChanged: widget.onStateChanged,
        );
      case 'SingleChoice':
        actualComponent = ListTemplateQuestion(
          component: widget.component,
          onStateChanged: widget.onStateChanged,
        );
      default:
        actualComponent = null;
    }
    setState(() {});
  }

  void _questionTypeChanged() {
    widget.component.assetCounter = null;
    widget.component.dropdownDataProvider = null;
    widget.component.faultTitle = null;
    widget.component.isHTML = null;
    widget.component.isMultiline = null;
    widget.component.isRequired = null;
    widget.component.isSRRequired = null;
    widget.component.message = null;
    widget.component.messageType = null;
    widget.component.mroDataProvider = null;
    widget.component.showWarningLabel = null;
    widget.component.title = null;
    widget.component.type = questionType;
    widget.component.url = null;
    widget.component.validators = null;
    widget.component.visibilityProvider = null;
    _updateQuestionTitle();
  }

  void _updateQuestionTitle() {
    if (widget.component.type == 'Label') {
      widget.component.message = questionTitle;
    } else {
      widget.component.title = questionTitle;
    }
  }
}
