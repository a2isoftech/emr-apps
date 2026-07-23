import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_one_crm/temp/mock_data.dart';
import 'package:flutter/material.dart';

class CWPricingMethod extends StatefulWidget {
  const CWPricingMethod({
    required this.controller,
    super.key,
  });

  final ContractController controller;

  @override
  State<CWPricingMethod> createState() => _CWPricingMethodState();
}

class _CWPricingMethodState extends State<CWPricingMethod> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormHeadingRow(
          headings: [
            '${context.l10n.pricingMethod}:',
          ],
          isLeading: true,
        ),
        EmrPicker<PriceType>(
          items: (_) => Future.value(MockData.getPriceTypes()),
          initialValue: _priceTypeText(),
          itemTitleText: (item) => '${item.name} - ${item.subtitle}',
          itemSubtitleText: (item) => item.subtitle,
          onItemSelected: (item) => setState(() {
            widget.controller.model!.priceType = item;
          }),
          mode: EmrPickerMode.inline,
          validator: Validators.required,
          onCleared: () {
            widget.controller.model!.priceType = null;
          },
        ),
      ],
    );
  }

  String _priceTypeText() {
    final priceType = widget.controller.model!.priceType;

    if (priceType == null) return '';

    return '${priceType.name} - ${priceType.subtitle}';
  }
}
