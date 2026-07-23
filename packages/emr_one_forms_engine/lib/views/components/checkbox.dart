import 'package:emr_one_forms_engine/core/store/components/checkbox_component.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_forms_engine/views/components/component.dart';
import 'package:flutter/material.dart';

class CheckboxWidget extends FormComponentWidget<CheckboxComponent> {
  const CheckboxWidget({super.key, required super.model});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState
    extends FormComponentState<CheckboxComponent, CheckboxWidget> {
  bool isChecked = false;
  late String _question;

  @override
  void initState() {
    super.initState();
    initialiseDropdown();
  }

  void initialiseDropdown() async {
    _question = _getQuestionText(currentModel);
    isChecked = currentModel.answerText.toString().toLowerCase() == 'true';
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool differentUser =
        FormsEngine().isPreview ||
        (currentModel.answeredBy !=
                ServiceContainer().get<IFormConfiguration>().userName &&
            (isChecked));

    return AbsorbPointer(
      absorbing: differentUser,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: currentModel.isValid
                ? FormColors.componentBorderColor
                : FormColors.error,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(7.0)),
          color: differentUser ? FormColors.componentBorderColor : null,
        ),
        child: CheckboxListTile(
          contentPadding: const EdgeInsets.only(left: 5.0, right: 2.0),
          controlAffinity: ListTileControlAffinity.trailing,
          dense: false,
          value: isChecked,
          onChanged: _onChanged,
          shape: FormDecorations.checkboxTileBorder,
          title: Text(
            _question,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
              color: differentUser
                  ? FormColors.white
                  : currentModel.isValid
                  ? FormColors.componentBorderColor
                  : FormColors.error,
            ),
          ),
        ),
      ),
    );
  }

  void _onChanged(dynamic value) {
    setState(() {
      isChecked = value!;
      if (currentModel.isRequired && value == 'false') {
        currentModel.isValid = false;
      } else {
        currentModel.isValid = true;
      }
    });
    changeValue(isChecked.toString());
  }

  String _getQuestionText(CheckboxComponent currentModel) =>
      (currentModel.isRequired)
      ? '${currentModel.questionText} *'
      : currentModel.questionText;
}
