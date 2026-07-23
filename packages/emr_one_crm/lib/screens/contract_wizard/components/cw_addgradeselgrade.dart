import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_one_crm/temp/grade_provider.dart';
import 'package:flutter/material.dart';

class CWAddGradeSelectGrade extends StatefulWidget {
  const CWAddGradeSelectGrade({
    required this.controller,
    required this.decoration,
    required this.onGradeSelected,
    required this.textController,
    this.filterOutSelectedGrades = true,
    super.key,
  });

  final ContractController controller;
  final InputDecoration decoration;
  final Grade Function(Grade) onGradeSelected;
  final TextEditingController textController;
  final bool filterOutSelectedGrades;

  @override
  State<CWAddGradeSelectGrade> createState() => _CWAddGradeSelectGradeState();
}

class _CWAddGradeSelectGradeState extends State<CWAddGradeSelectGrade> {
  @override
  Widget build(BuildContext context) {
    final gradeProvider = GradeProvider(
      widget.filterOutSelectedGrades
          ? widget.controller.grades
              .where(
                (grade) => !widget.controller.model!.gplGrades
                    .map((gplGrade) => gplGrade.gradeCode)
                    .contains(grade.gradeCode),
              )
              .toList()
          : widget.controller.grades.toList(),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        EmrPicker<Grade>(
          items: (query) async => gradeProvider.getSuggestions(query),
          initialValue: widget.textController.text,
          itemTitleText: (item) => item.gradeCode,
          itemSubtitleText: (item) => item.description,
          onItemSelected: (item) {
            setState(() {
              widget.onGradeSelected(item);
              widget.textController.text = item.gradeCode;
            });
          },
          mode: EmrPickerMode.inline,
          onCleared: (){
            setState(() {
              widget.textController.clear();
            });
          },
        ),
      ],
    );
  }
}
