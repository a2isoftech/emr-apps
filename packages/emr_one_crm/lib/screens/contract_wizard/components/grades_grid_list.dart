import 'package:emr_one_crm/screens/contract_wizard/components/cw_gradeselectgrid.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/grades_content.dart';
import 'package:flutter/material.dart';

class GradesGridList extends StatelessWidget {
  const GradesGridList({
    required this.widget,
    required this.isDark,
    required this.searchText,
    super.key,
  });

  final CWGradeSelectGrid widget;
  final bool isDark;
  final String searchText;

  @override
  Widget build(BuildContext context) {
    final search = searchText.toLowerCase();

    final grades = widget.controller.model!.gplGrades.where((grade) {
      final code = grade.gradeCode.toLowerCase();
      final desc = grade.description.toLowerCase();
      return code.contains(search) || desc.contains(search);
    }).toList()
      ..sort((a, b) => a.gradeCode.compareTo(b.gradeCode));
    return GridView.count(
      padding: EdgeInsets.zero,
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: widget.controller.appConfig.isWeb ? 8 : 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      childAspectRatio: 2.5,
      children: List.generate(grades.length, (index) {
        final gradeCode = grades[index].gradeCode;
        final brokerReference = grades[index].brokerReference ?? '';
        final searchGradeIndex = widget.controller.model!.gplGrades.indexWhere(
          (g) =>
              g.gradeCode == gradeCode &&
              (g.brokerReference ?? '') == brokerReference,
        );
        return GestureDetector(
          onTap: () {
            widget.controller.isGradeSelected(gradeCode, brokerReference)
                ? widget.controller.setGradeSelected(
                    gradeCode,
                    brokerReference,
                    selected: false,
                  )
                : widget.controller.setGradeSelected(
                    gradeCode,
                    brokerReference,
                  );
          },
          child: Container(
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color:
                  widget.controller.isGradeSelected(gradeCode, brokerReference)
                      ? Theme.of(context).brightness == Brightness.dark
                          ? Theme.of(context).colorScheme.tertiary
                          : Theme.of(context).colorScheme.secondary
                      : Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: isDark
                    ? Theme.of(context).colorScheme.onSurface
                    : Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
            padding: EdgeInsets.zero,
            child: GradesContent(
              controller: widget.controller,
              index: searchGradeIndex,
              searchText: searchText,
            ),
          ),
        );
      }),
    );
  }
}
