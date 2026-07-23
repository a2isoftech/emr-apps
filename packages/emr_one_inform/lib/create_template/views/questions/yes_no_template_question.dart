import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_template/model/create_edit_form_template.dart';
import 'package:emr_one_inform/create_template/views/questions/template_question.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

enum ValidatorType { exitOnNo, warningOnNo }

class YesNoTemplateQuestion extends TemplateQuestion {
  const YesNoTemplateQuestion({
    required super.component,
    required super.onStateChanged,
    super.key,
  });

  @override
  State<YesNoTemplateQuestion> createState() => _YesNoTemplateQuestionState();
}

class _YesNoTemplateQuestionState
    extends TemplateQuestionState<YesNoTemplateQuestion> {
  final _controller = TextEditingController();
  final _warningTextController = TextEditingController();
  final _exitOnNoextController = TextEditingController();
  ValidatorType? _selectedValidator;

  @override
  void initState() {
    super.initState();
    _controller.text = widget.component.faultTitle ?? '';
   setInitialValidatorState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveGridRow(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ResponsiveGridCol(
              sm: 2,
              child: const Text('Options'),
            ),
            ResponsiveGridCol(
              sm: 10,
              child: Wrap(
                spacing: 10,
                children: [
                  InputChip(
                    label: const Text('NA'),
                    selected: !(widget.component.isRequired ?? true),
                    onSelected: (value) {
                      widget.component.isRequired = !value;
                      stateChanged();
                    },
                    selectedColor: FormAppColors.success,
                  ),
                  InputChip(
                    label: const Text('SR'),
                    selected: widget.component.isSRRequired ?? false,
                    onSelected: (value) {
                      widget.component.isSRRequired = value;
                      stateChanged();
                    },
                    selectedColor: FormAppColors.success,
                  ),
                   InputChip(
                    label: const Text('Show Warning'),
                    selected: widget.component.showWarningLabel ?? false,

                    onSelected: (value) {
                      widget.component.showWarningLabel = value;
                      stateChanged();
                    },
                    selectedColor: FormAppColors.success,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        ResponsiveGridRow(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ResponsiveGridCol(
              sm: 2,
              child: const Text('Validators'),
            ),
            ResponsiveGridCol(
              sm: 10,
              child: Wrap(
                spacing: 10,
                children: [
                  InputChip(
                    label: const Text('ExitOnNo'),
                    selected: widget.component.validators
                            ?.any((e) => e.type == 'ExitOnNo') ?? false,
                    onSelected: (value) {
                     
                      widget.component.validators?.clear();
                      if (value) {
                        _selectedValidator = ValidatorType.exitOnNo;
                        widget.component.validators = [
                          Validator(type: 'ExitOnNo',),
                        ];
                      }
                      else
                      {
                        _selectedValidator = null;
                      }
                      stateChanged();
                    },
                    selectedColor: FormAppColors.success,
                  ),
                   InputChip(
                    label: const Text('WarningOnNo'),
                    selected: widget.component.validators
                              ?.any((e) => e.type == 'WarningOnNo') ?? false,

                    onSelected: (value) {
                      widget.component.validators?.clear();
                      if (value) {
                        _selectedValidator = ValidatorType.warningOnNo;
                        widget.component.validators = [
                          Validator(type: 'WarningOnNo',),
                        ];
                      }
                      else
                      {
                        _selectedValidator = null;
                      }
                      stateChanged();

                    },
                    selectedColor: FormAppColors.success,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        getWarningText(),
        const SizedBox(height: 10),
        InformTextBox(
          controller: _controller,
          onChanged: (value) => widget.component.faultTitle = value,
          labelText: 'Fault title on No',
          hintText: 'Fault title on No',
        ),
      ],
    );
  }

  Widget getWarningText() {
    if(_selectedValidator == null)
    {
      return const SizedBox(height: 5);
    }
   
    switch(_selectedValidator!)
    {
      case ValidatorType.exitOnNo:
      return InformTextBox(
              controller: _exitOnNoextController,
              onChanged: (value) => {
                setWarningText(value, _selectedValidator),
              }, 
              labelText: 'Warning Text',
              hintText: 'Warning Text',
            );
      case ValidatorType.warningOnNo:
      return InformTextBox(
              controller: _warningTextController,
              onChanged: (value) => {
                setWarningText(value, _selectedValidator),
              }, 
              labelText: 'Warning Text',
              hintText: 'Warning Text',
            );
    }
  }

  void setWarningText(String? value, ValidatorType? validator) 
  {
    if(validator != null)
    {
      final validatorText = getValidatorText(validator);
      
      if(widget.component.validators
      ?.any((e) => e.type == validatorText) 
      != null)
      {
        widget.component.validators!.firstWhere(
          (element) => element.type == validatorText,).message = value; 
      }
    }
  }

  void setInitialValidatorState()
  {
    _exitOnNoextController.text = '';
    _warningTextController.text = '';

    final warning = widget.component.validators?.where(
      (element) => element.type == 'WarningOnNo',).firstOrNull;
    final exit = widget.component.validators?.where(
      (element) => element.type == 'ExitOnNo',).firstOrNull;

    if(exit!= null )
    {
      _selectedValidator = ValidatorType.exitOnNo;

      _exitOnNoextController.text = exit.message ?? '';
    }
    else if (warning != null)
    {
      _selectedValidator = ValidatorType.warningOnNo;
      _warningTextController.text = warning.message ?? '';
    }   
  }

  String getValidatorText(ValidatorType type)
  {
    switch(type)
    {
      case ValidatorType.exitOnNo:
      return 'ExitOnNo';
      case ValidatorType.warningOnNo:
      return 'WarningOnNo';
    }
  }
}

 
