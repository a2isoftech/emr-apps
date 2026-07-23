import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/pl_grade.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pl_stepcore.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/mobile/rate_expansion_tile.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/summary_header.dart';
import 'package:flutter/material.dart';

class PLSummary extends StatelessWidget {
  const PLSummary({required this.controller, super.key});

  final PartiesPriceListWizardController controller;

  @override
  Widget build(BuildContext context) {
    final publication = controller.model!.selectedPublication!;
    final yards = publication.yards
        .where((e) => controller.isYardsSelected(e.yardCode))
        .toList();
    final grades = publication.grades
        .where((e) => controller.isGradeSelected(e.gradeCode))
        .toList();

    return PLStepCore(
      onNext: () => controller.createMaskedLines(context),
      onNextText: context.l10n.createAPriceList,
      controller: controller,
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SummaryHeader(
                    headerText: '${context.l10n.publication}: ',
                  ),
                  Text(publication.publicationName),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: Insets.gutter),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SummaryHeader(headerText: '${context.l10n.yards}: '),
                    Expanded(
                      child: Text(yards.map((e) => e.name).join(', ')),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: Insets.gutter),
                child: Row(
                  children: [
                    SummaryHeader(
                      headerText: '${context.l10n.deliveryMethod}: ',
                    ),
                    Text(
                      context.l10n.delivered,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: Insets.gutter / 2,
                  bottom: Insets.gutter / 2,
                ),
                child: Text(
                  context.l10n.grades,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              for (final PlGrade grade in grades) ...[
                Padding(
                  padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
                  child: RateExpansionTile(
                    grade: grade,
                    selectedYardCodes: controller.selectedYards.toList(),
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
