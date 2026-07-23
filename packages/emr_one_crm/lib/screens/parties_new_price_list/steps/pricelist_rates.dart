import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pl_stepcore.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/mobile/rate_expansion_tile.dart';
import 'package:flutter/material.dart';

class PLRates extends StatefulWidget {
  const PLRates({required this.controller, super.key});

  final PartiesPriceListWizardController controller;

  @override
  State<PLRates> createState() => _PLRatesState();
}

class _PLRatesState extends State<PLRates> {
  final String _gradeGroupFilter = 'ANY';

  @override
  Widget build(BuildContext context) {
    final myController = widget.controller;
    final publication = myController.model!.selectedPublication!;
    final grades =
        publication.grades
            .where((e) => myController.isGradeSelected(e.gradeCode))
            .toList()
          ..sort((a, b) => a.gradeCode.compareTo(b.gradeCode));

    return PLStepCore(
      onNextText: '${context.l10n.next}: ${context.l10n.summary}',
      controller: widget.controller,
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final PlGrade grade in grades) ...[
                if (_gradeGroupFilter == 'ANY' ||
                    grade.gradeGroup == _gradeGroupFilter)
                  Padding(
                    padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
                    child: RateExpansionTile(
                      grade: grade,
                      selectedYardCodes: widget.controller.selectedYards
                          .toList(),
                      summaryMode: true,
                    ),
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
