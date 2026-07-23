import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/contract_wizard/cw_select_chip.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWPricingOptionSelect extends StatefulWidget {
  const CWPricingOptionSelect({
    required this.formKey,
    required this.controller,
    super.key,
  });

  final ContractController controller;
  final GlobalKey<FormState> formKey;

  @override
  State<CWPricingOptionSelect> createState() => _CWPricingOptionSelectState();
}

class _CWPricingOptionSelectState extends State<CWPricingOptionSelect> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormHeadingRow(
          headings: [
            '${context.l10n.selectPricingOption}:',
          ],
        ),
        FormRow(
          children: [
            CWSelectChip<PricingOption>(
              value: PricingOption.fromGpl,
              label: context.l10n.fromGpl,
              subTitle: '',
              selected: widget.controller.isGplCreate.value,
              onTap: (PricingOption method) {
                setGplValue(gplCreate: true);
              },
            ),
            CWSelectChip<PricingOption>(
              value: PricingOption.manual,
              label: context.l10n.manual,
              subTitle: '',
              selected: !widget.controller.isGplCreate.value,
              onTap: (PricingOption method) {
                setGplValue(gplCreate: false);
              },
            ),
          ],
        ),
      ],
    );
  }

  void setGplValue({required bool gplCreate}) {
    setState(() {
      widget.controller.isGplCreate.value = gplCreate;
    });
  }
}
