import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/extensions/extensions.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_summary_row.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CWSummaryDetailInfo extends StatelessWidget {
  const CWSummaryDetailInfo({
    required this.model,
    required this.controller,
    super.key,
  });

  final ContractController controller;
  final PartyNewContractViewModel model;

  @override
  Widget build(BuildContext context) {
    final activeLocale = Localizations.localeOf(context);
    final settingsController =
        Provider.of<BaseSettingsController>(context) as SettingsController;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: Insets.gutter),
        if (!controller.isGplCreate.value)
          SummaryRow('${context.l10n.orderBook}:', model.orderBook?.name),
        if (controller.isFixed &&
            ['A11', 'A21', 'A24'].contains(settingsController.territory))
          SummaryRow(
            context.l10n.pricingMethod,
            '${model.priceType?.name} - ${model.priceType?.subtitle}',
          ),
        if (model.selectedArisingPoints.isNotEmpty == true)
          SummaryRow(
            '${context.l10n.location}:',
            model.selectedArisingPoints.first.shortName,
          ),
        if (!controller.isGplCreate.value && controller.isSpot)
          SummaryRow('${context.l10n.contractType}:', model.contractType?.name),
        if (controller.isSpot)
          SummaryRow('${context.l10n.loads}:', model.targetLoads.toString()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            SummaryRow(
              '${context.l10n.startDate}:',
              DateFormat.yMd(activeLocale.toString()).format(model.startDate),
            ),
            const SizedBox(width: 64),
            SummaryRow(
              '${context.l10n.endDate}:',
              DateFormat.yMd(activeLocale.toString()).format(model.endDate),
            ),
          ],
        ),
        if (model.internalLME != null)
          SummaryRow('${context.l10n.internalLME}:', model.internalLME),
        if (model.customerContractRef != null)
          SummaryRow(
            '${context.l10n.customerContractRef}:',
            model.customerContractRef,
          ),
        SummaryRow(
          '${context.l10n.deliveryMethod}:',
          controller.derivedDeliveryMethods.displayNames(context),
        ),
        if (model.isFullyCharged == false &&
            (model.haulageAdjustment?.value ?? 0) > 0)
          SummaryRow(
            '${context.l10n.haulageCharge}:',
            model.haulageAdjustment?.toString() ?? '',
          ),
      ],
    );
  }
}
