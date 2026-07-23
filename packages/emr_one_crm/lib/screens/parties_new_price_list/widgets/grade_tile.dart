import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:flutter/material.dart';

class GradeTile extends StatelessWidget {
  const GradeTile({
    required this.controller,
    required this.grade,
    super.key,
  });

  final PlGrade grade;
  final PartiesPriceListWizardController controller;

  @override
  Widget build(BuildContext context) {
    final gradeCode = grade.gradeCode;
    final isSelected = controller.getGradesSelected().contains(gradeCode);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final selectedColor =
        isDark ? EmrColours.secondaryGrey : EmrColours.primaryBlue;
    final unSelectedTextColour = isDark ? Colors.white : Colors.black;
    final borderColour = isDark ? Colors.white : Colors.grey;

    return GestureDetector(
      onTap: () {
        controller.setGradeSelected(gradeCode);
        controller.updateGradeCount();
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? selectedColor : Colors.grey.withAlpha(51),
          border: Border.all(
            width: 0.5,
          ),
        ),
        height: 61,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            children: [
              Transform.scale(
                scale: 1.4,
                child: Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  side: WidgetStateBorderSide.resolveWith(
                    (states) => BorderSide(color: borderColour),
                  ),
                  fillColor: WidgetStateProperty.resolveWith<Color>((states) {
                    if (states.contains(WidgetState.disabled)) {
                      return Colors.grey.withAlpha(82);
                    }

                    return isDark ? EmrColours.secondaryGrey : Colors.white;
                  }),
                  checkColor: isDark ? EmrColours.primaryGreen : Colors.black,
                  value: controller.isGradeSelected(gradeCode),
                  onChanged: (value) {
                    controller.setGradeSelected(
                      gradeCode,
                      selected: value!,
                    );
                    controller.updateGradeCount();
                  },
                ),
              ),
              const SizedBox(
                width: Insets.gutter,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      grade.gradeCode,
                      style: TextStyle(
                        color: isSelected ? Colors.white : unSelectedTextColour,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      grade.description,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: isSelected ? Colors.white : unSelectedTextColour,
                      ),
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
}
