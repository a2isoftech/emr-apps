import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/mobile/grade_select_tile.dart';
import 'package:flutter/material.dart';

class GradeGroupPaginatedTile extends StatefulWidget {
  const GradeGroupPaginatedTile({
    required this.gradeGroup,
    required this.myController,
    required this.unselectWidgetIcon,
    required this.selectWidgetIcon,
    super.key,
  });
  final MapEntry<String, List<PlGrade>> gradeGroup;
  final PartiesPriceListWizardController myController;
  final Icon selectWidgetIcon;
  final Icon unselectWidgetIcon;

  @override
  State<GradeGroupPaginatedTile> createState() =>
      _GradeGroupPaginatedTileState();
}

class _GradeGroupPaginatedTileState extends State<GradeGroupPaginatedTile> {
  int pageSize = 5;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final borderColour = isDark ? Colors.white : Colors.grey;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColour),
      ),
      child: EmrExpansionTile(
        maintainState: true,
        backgroundColor: Colors.transparent,
        header: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: borderColour),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: Insets.gutter / 2,
            horizontal: Insets.gutter / 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      if (widget.myController
                          .getGradesSelected()
                          .contains(widget.gradeGroup.value.first.gradeCode)) {
                        for (final element in widget.gradeGroup.value) {
                          widget.myController.setGradeSelected(
                            element.gradeCode,
                            selected: false,
                          );
                        }
                        widget.myController.gradeCount = 0;
                      } else {
                        for (final element in widget.gradeGroup.value) {
                          widget.myController.setGradeSelected(
                            element.gradeCode,
                          );
                        }
                        widget.myController.gradeCount =
                            widget.gradeGroup.value.length;
                      }
                      widget.myController.updateGradeCount();
                    },
                    icon: isAllSelected()
                        ? widget.selectWidgetIcon
                        : widget.unselectWidgetIcon,
                    style: ButtonStyle(
                      overlayColor:
                          WidgetStateProperty.all(Colors.transparent),
                    ),
                  ),
                  Text(
                    context.l10n.grade.toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
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
              widget.gradeGroup.key,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              widget.gradeGroup.value.first.groupDesc,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        child: Column(
          children: [
            getRows(widget.gradeGroup),
          ],
        ),
      ),
    );
  }

  bool isAllSelected() {
    return widget.gradeGroup.value
            .where(
              (element) => widget.myController
                  .getGradesSelected()
                  .contains(element.gradeCode),
            )
            .length ==
        widget.gradeGroup.value.length;
  }

  ValueListenableBuilder<int> getRows(
    MapEntry<String, List<PlGrade>> gradeGroup,
  ) {
    final currentPage = ValueNotifier<int>(1);

    return ValueListenableBuilder(
      valueListenable: currentPage,
      builder: (context, value, child) {
        return Column(
          children: [
            for (int i = getStartIndex(currentPage.value);
                i < getMaxRange(currentPage.value, gradeGroup.value.length);
                i++) ...[
              GradeSelectTile(
                grade: gradeGroup.value[i],
                controller: widget.myController,
                unselectWidgetIcon: widget.unselectWidgetIcon,
                selectWidgetIcon: widget.selectWidgetIcon,
              ),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter),
                  child: Text(
                    '${getRangeValuesText(
                      currentPage.value,
                      gradeGroup.value.length,
                    )}'
                    ' of ${gradeGroup.value.length}',
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: Insets.gutter),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: IconButton(
                            icon: const Icon(
                              Icons.skip_previous_outlined,
                            ),
                            onPressed:
                                isPreviousEnabled(currentPage, gradeGroup)
                                    ? () => currentPage.value = 1
                                    : null,
                          ),
                        ),
                        WidgetSpan(
                          child: IconButton(
                            icon: const Icon(
                              Icons.keyboard_arrow_left_outlined,
                            ),
                            onPressed:
                                isPreviousEnabled(currentPage, gradeGroup)
                                    ? () => currentPage.value--
                                    : null,
                          ),
                        ),
                        WidgetSpan(
                          child: IconButton(
                            disabledColor: Colors.grey,
                            icon: const Icon(
                              Icons.keyboard_arrow_right_outlined,
                            ),
                            onPressed: isNextEnabled(currentPage, gradeGroup)
                                ? () => currentPage.value++
                                : null,
                          ),
                        ),
                        WidgetSpan(
                          child: IconButton(
                            icon: const Icon(
                              Icons.skip_next_outlined,
                            ),
                            onPressed: isNextEnabled(currentPage, gradeGroup)
                                ? () => currentPage.value =
                                    getPageCount(gradeGroup.value.length)
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  bool isPreviousEnabled(
    ValueNotifier<int> currentPage,
    MapEntry<String, List<PlGrade>> gradeGroup,
  ) {
    return currentPage.value != 1;
  }

  bool isNextEnabled(
    ValueNotifier<int> currentPage,
    MapEntry<String, List<PlGrade>> gradeGroup,
  ) {
    return currentPage.value != getPageCount(gradeGroup.value.length);
  }

  int getPageCount(int gradesCount) {
    if (gradesCount < pageSize) {
      return 1;
    } else {
      if (gradesCount % pageSize == 0) {
        return gradesCount ~/ pageSize;
      } else {
        return gradesCount ~/ pageSize + 1;
      }
    }
  }

  int getStartIndex(int currentPage) {
    if (currentPage == 1) {
      return 0;
    } else {
      return (currentPage * pageSize) - pageSize;
    }
  }

  int getMaxRange(int currentPage, int totalGrades) {
    final maxRange = currentPage * pageSize;
    if (maxRange > totalGrades) {
      return totalGrades;
    }
    return maxRange;
  }

  String getRangeValuesText(int currentPage, int totalGrades) {
    var to = currentPage * pageSize;
    final from = to - (pageSize - 1);
    if (to > totalGrades) {
      to = totalGrades;
    }
    return '$from-$to';
  }
}
