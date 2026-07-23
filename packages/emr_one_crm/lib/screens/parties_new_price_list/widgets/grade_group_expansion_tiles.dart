import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/grade_tile.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class GradeGroupExpansionTile extends StatelessWidget {
  const GradeGroupExpansionTile({
    required this.gradeGroup,
    required this.myController,
    super.key,
  });

  final MapEntry<String, List<PlGrade>> gradeGroup;
  final PartiesPriceListWizardController myController;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final borderColour = isDark ? Colors.white : Colors.grey;
    final expansionTileTheme = ExpansionTileTheme.of(context);

    return EmrExpansionTile(
      maintainState: true,
      header: Container(
        color: expansionTileTheme.secondaryBackgroundColour,
        padding: const EdgeInsets.symmetric(
          vertical: Insets.gutter / 2,
          horizontal: Insets.gutter / 2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
                      return isDark ? Colors.grey[700]! : Colors.white;
                    }),
                    checkColor: isDark ? EmrColours.primaryGreen : Colors.black,
                    value: gradeGroup.value
                            .where(
                              (element) => myController
                                  .getGradesSelected()
                                  .contains(element.gradeCode),
                            )
                            .length ==
                        gradeGroup.value.length,
                    onChanged: (value) {
                      if (myController
                          .getGradesSelected()
                          .contains(gradeGroup.value.first.gradeCode)) {
                        for (final element in gradeGroup.value) {
                          myController.setGradeSelected(
                            element.gradeCode,
                            selected: false,
                          );
                        }
                        myController.gradeCount = 0;
                      } else {
                        for (final element in gradeGroup.value) {
                          myController.setGradeSelected(
                            element.gradeCode,
                          );
                        }
                        myController.gradeCount = gradeGroup.value.length;
                      }
                      myController.updateGradeCount();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter),
                  child: Text(
                    context.l10n.grade.toUpperCase(),
                    style: TextStyle(
                      color: expansionTileTheme.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            gradeGroup.key,
            style: TextStyle(
              color: expansionTileTheme.textColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '(${context.l10n.noOfNo(
              gradeGroup.value.length.toString(),
              gradeGroup.value
                  .where(
                    (element) => myController
                        .getGradesSelected()
                        .contains(element.gradeCode),
                  )
                  .length
                  .toString(),
            )} '
            '${context.l10n.selected.toUpperCase()})',
            style: TextStyle(
              color: expansionTileTheme.textColor,
              fontSize: 10,
            ),
          ),
        ],
      ),
      child: Column(
        children: [
          for (final gradeGroup in gradeGroup.value)
            GradeTile(
              grade: gradeGroup,
              controller: myController,
            ),
        ],
      ),
    );
  }
}
