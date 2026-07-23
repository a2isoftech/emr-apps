import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/models/gpl_grade.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class CWSummaryGroupedGrades extends StatelessWidget {
  const CWSummaryGroupedGrades({
    required this.controller,
    required this.model,
    required this.isDark,
    super.key,
  });

  final ContractController controller;
  final PartyNewContractViewModel model;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final filtered = model.gplGrades
        .where(
          (g) => model.selectedGrades.contains(
            '${g.gradeCode}_${g.brokerReference}',
          ),
        )
        .toList();

    final collectedDelta = model.collectedDelta?.value ?? 0;

    filtered.sort((a, b) {
      final codeCompare = a.gradeCode.compareTo(b.gradeCode);
      return codeCompare != 0
          ? codeCompare
          : a.description.compareTo(b.description);
    });

    final backgroundColour = isDark
        ? Theme.of(context).colorScheme.tertiary
        : Theme.of(context).colorScheme.secondary;

    final hasDelivered = controller.hasDeliveryMethod(
      CrmDeliveryMethod.delivered,
    );
    final hasCollected = controller.hasDeliveryMethod(
      CrmDeliveryMethod.collected,
    );

    return Column(
      children: [
        for (final grade in filtered) ...[
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
            child: Column(
              children: [
                ColoredBox(
                  color: backgroundColour,
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: Row(
                      children: [
                        Text(
                          grade.gradeCode,
                          style: EmrOneConstants.kSmallestHeadingTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                _listTile(
                  leading: context.l10n.materialDescription,
                  trailing: grade.description,
                ),
                if (grade.brokerReference?.isNotEmpty ?? false)
                  _listTile(
                    leading: context.l10n.brokerReference,
                    trailing: grade.brokerReference!,
                  ),
                if (!model.isSpot)
                  _listTile(
                    leading: context.l10n.weight,
                    trailing: _formatContractWeight(controller, grade),
                  ),
                if (hasDelivered)
                  _listTile(
                    leading: context.l10n.deliveredPrice,
                    trailing:
                        '${grade.deliveryRate.value} / '
                        '${grade.deliveryRate.uom.uomCode}',
                  ),
                if (hasCollected)
                  _listTile(
                    leading: context.l10n.collectedPrice,
                    trailing: _rateMinusDelta(grade, collectedDelta),
                  ),
              ],
            ),
          ),
        ],
        const SizedBox(height: Insets.gutter / 2),
      ],
    );
  }

  DecoratedBox _listTile({required String leading, required String trailing}) {
    return DecoratedBox(
      decoration: BoxDecoration(border: Border.all(width: 0.5)),
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                leading,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            Expanded(
              child: Text(
                trailing,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _rateMinusDelta(GplGrade grade, double? collectedDelta) {
    final adjustedValue = (grade.collectedRate.value - (collectedDelta ?? 0))
        .toStringAsFixed(2);
    if (grade.collectedRate.uom == Uom.unknown) {
      return adjustedValue;
    }
    return '$adjustedValue / ${grade.collectedRate.uom.uomCode}';
  }

  String _formatContractWeight(ContractController controller, GplGrade grade) {
    final updatedGrade = controller.getContractWeight(grade);
    return '${updatedGrade.value} ${updatedGrade.uom.uomCode}';
  }
}
