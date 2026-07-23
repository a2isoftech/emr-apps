import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pl_stepcore.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/grade_tile.dart';
import 'package:flutter/material.dart';

class PLGrades extends StatefulWidget {
  const PLGrades({required this.controller, super.key});

  final PartiesPriceListWizardController controller;

  @override
  State<PLGrades> createState() => _PLGradesState();
}

class _PLGradesState extends State<PLGrades> {
  late final TextEditingController searchController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myController = widget.controller;
    final publication = myController.model!.selectedPublication!;
    final grades = myController.getSortedGrades(
      publication,
      searchController.text,
    );
    final isPressed = widget.controller.allGradesSelected(
      widget.controller.model!.selectedPublication!.grades,
    );
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final unselectWidgetIcon = Icon(
      Icons.check_box_outline_blank,
      color: isDark
          ? Theme.of(context).colorScheme.onSurface
          : Theme.of(context).colorScheme.secondary,
      size: 20,
    );
    final selectWidgetIcon = Icon(
      Icons.check_box_outlined,
      color: isDark
          ? Theme.of(context).colorScheme.onSurface
          : Theme.of(context).colorScheme.secondary,
      size: 20,
    );

    return PLStepCore(
      onNext: () {
        widget.controller.setDeliveryType(CrmDeliveryMethod.delivered);

        if (formKey.currentState?.validate() ?? false) {
          widget.controller.nextStep();
        }
      },
      onNextText: '${context.l10n.next}: ${context.l10n.rates}',
      controller: myController,
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Form(
          key: formKey,
          child: FormField(
            validator: (value) {
              if (!myController.anyGradesSelected()) {
                return context.l10n.selectAtLeastOneGrade;
              }
              return null;
            },
            builder: (field) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextField(
                        style: const TextStyle(fontSize: Insets.gutter),
                        controller: searchController,
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          hintText: context.l10n.search,
                          prefixIcon: const Icon(Icons.search),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: Insets.gutter / 8,
                            horizontal: Insets.gutter / 4,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Insets.gutter / 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        setState(() {
                          if (!isPressed) {
                            final gradeCodes = <String>[];
                            for (final grade
                                in widget
                                    .controller
                                    .model!
                                    .selectedPublication!
                                    .grades) {
                              gradeCodes.add(grade.gradeCode);
                            }
                            widget.controller.setGradesSelected(gradeCodes);
                          } else {
                            widget.controller.clearGrades();
                          }
                          widget.controller.updateGradeCount();
                        });
                      },
                      icon: isPressed ? selectWidgetIcon : unselectWidgetIcon,
                      label: Text(context.l10n.selectAll),
                      style: ButtonStyle(
                        overlayColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Insets.gutter),
                Text(
                  '${context.l10n.grades}: ',
                  style: const TextStyle(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: Insets.gutter / 2),
                for (final gradeGroup in grades) ...[
                  GradeTile(grade: gradeGroup, controller: myController),
                  const SizedBox(height: Insets.gutter / 2),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
