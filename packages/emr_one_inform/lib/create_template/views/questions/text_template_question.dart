import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_template/model/create_edit_form_template.dart';
import 'package:emr_one_inform/create_template/views/questions/template_question.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class TextInputTemplateQuestion extends TemplateQuestion {
  const TextInputTemplateQuestion({
    required super.component,
    required super.onStateChanged,
    super.key,
  });

  @override
  State<TextInputTemplateQuestion> createState() =>
      _TextInputTemplateQuestionTemplateQuestionState();
}

class _TextInputTemplateQuestionTemplateQuestionState
    extends TemplateQuestionState<TextInputTemplateQuestion> {
  final _minValue = TextEditingController();
  final _maxValue = TextEditingController();

  @override
  void initState() {
    super.initState();

    _minValue.text =
        widget.component.validators?.firstOrNull?.minValue?.toString() ?? '1';
    _maxValue.text =
        widget.component.validators?.firstOrNull?.maxValue?.toString() ?? '10';
  }

  @override
  Widget build(BuildContext context) => Column(
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
                      label: const Text('Is Multiline'),
                      selected: widget.component.isMultiline ?? false,
                      onSelected: (value) {
                        widget.component.isMultiline = value;
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
                      label: const Text('Text'),
                      selected: widget.component.validators
                              ?.any((e) => e.type == 'Text') ??
                          false,
                      onSelected: (value) {
                        widget.component.validators?.clear();
                        if (value) {
                          widget.component.validators = [
                            Validator(type: 'Text'),
                          ];
                        }
                        stateChanged();
                      },
                      selectedColor: FormAppColors.success,
                    ),
                    InputChip(
                      label: const Text('Number'),
                      selected: widget.component.validators
                              ?.any((e) => e.type == 'Number') ??
                          false,
                      onSelected: (value) {
                        widget.component.validators?.clear();
                        if (value) {
                          widget.component.validators = [
                            Validator(type: 'Number'),
                          ];
                        }
                        stateChanged();
                      },
                      selectedColor: FormAppColors.success,
                    ),
                    InputChip(
                      label: const Text('NumberRange'),
                      selected: widget.component.validators
                              ?.any((e) => e.type == 'NumberRange') ??
                          false,
                      onSelected: (value) {
                        widget.component.validators?.clear();
                        if (value) {
                          widget.component.validators = [
                            Validator(
                              type: 'NumberRange',
                              minValue: 1,
                              maxValue: 10,
                            ),
                          ];
                          _minValue.text = '1';
                          _maxValue.text = '10';
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
          if (widget.component.validators
                  ?.any((e) => e.type == 'NumberRange') ??
              false) ...[
            const SizedBox(height: 5),
            ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  xs: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: InformTextBox(
                      hintText: 'Min Value',
                      labelText: 'Min Value',
                      keyboardType: TextInputType.number,
                      controller: _minValue,
                      onChanged: (value) => widget.component.validators!.first
                          .minValue = int.parse(value ?? '1'),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: InformTextBox(
                      hintText: 'Max Value',
                      labelText: 'Max Value',
                      keyboardType: TextInputType.number,
                      controller: _maxValue,
                      onChanged: (value) => widget.component.validators!.first
                          .maxValue = int.parse(value ?? '10'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      );
}
