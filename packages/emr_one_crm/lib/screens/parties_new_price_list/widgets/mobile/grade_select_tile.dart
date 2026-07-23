import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:flutter/material.dart';

class GradeSelectTile extends StatelessWidget {
  const GradeSelectTile({
    required this.controller,
    required this.grade,
    required this.unselectWidgetIcon,
    required this.selectWidgetIcon,
    super.key,
  });

  final PlGrade grade;
  final PartiesPriceListWizardController controller;
  final Icon unselectWidgetIcon;
  final Icon selectWidgetIcon;
  @override
  Widget build(BuildContext context) {
    final gradeCode = grade.gradeCode;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final borderColour = isDark ? Colors.white : Colors.grey;

    return GestureDetector(
      onTap: () {
        gradeSelectionHandler(gradeCode);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: borderColour,
          ),
        ),
        height: 61,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  gradeSelectionHandler(gradeCode);
                },
                icon: controller.isGradeSelected(gradeCode)
                    ? selectWidgetIcon
                    : unselectWidgetIcon,
                style: ButtonStyle(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      grade.gradeCode,
                    ),
                    Text(
                      grade.description,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void gradeSelectionHandler(String gradeCode) {
    if (controller.isGradeSelected(gradeCode)) {
      controller.setGradeSelected(
        gradeCode,
        selected: false,
      );
    } else {
      controller.setGradeSelected(
        gradeCode,
      );
    }
    controller.updateGradeCount();
  }
}
