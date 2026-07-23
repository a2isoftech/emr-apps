import 'package:emr_one_forms_engine/core/constants/colors.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_template/views/questions/template_question.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class LabelTemplateQuestion extends TemplateQuestion {
  const LabelTemplateQuestion({
    required super.component,
    required super.onStateChanged,
    super.key,
  });

  @override
  State<LabelTemplateQuestion> createState() =>
      _LabelTemplateQuestionTemplateQuestionState();
}

class _LabelTemplateQuestionTemplateQuestionState
    extends TemplateQuestionState<LabelTemplateQuestion> {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          ResponsiveGridRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ResponsiveGridCol(
                sm: 2,
                child: const Text('Label Type'),
              ),
              ResponsiveGridCol(
                sm: 10,
                child: Wrap(
                  spacing: 10,
                  children: [
                    SizedBox(
                      width: 135,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InputChip(
                            label: const SizedBox(
                              width: 90,
                              child: Text('Information'),
                            ),
                            selected:
                                widget.component.messageType == 'information',
                            onPressed: () {
                              widget.component.messageType = 'information';
                              stateChanged();
                            },
                            selectedColor: FormAppColors.success,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            color: FormColors.information,
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InputChip(
                            label: const SizedBox(
                              width: 90,
                              child: Text('Advisory'),
                            ),
                            selected:
                                widget.component.messageType == 'Advisory',
                            onPressed: () {
                              widget.component.messageType = 'Advisory';
                              stateChanged();
                            },
                            selectedColor: FormAppColors.success,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            color: FormColors.warning,
                            height: 10,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InputChip(
                            label: const SizedBox(
                              width: 90,
                              child: Text('Warning'),
                            ),
                            selected: widget.component.messageType == 'Warning',
                            onPressed: () {
                              widget.component.messageType = 'Warning';
                              stateChanged();
                            },
                            selectedColor: FormAppColors.success,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            color: FormColors.error,
                            height: 10,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
}
