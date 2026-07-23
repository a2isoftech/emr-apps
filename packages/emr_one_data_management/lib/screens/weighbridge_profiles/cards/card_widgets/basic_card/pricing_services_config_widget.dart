import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:flutter/material.dart';

class PricingServicesConfigWidget extends StatelessWidget {
  const PricingServicesConfigWidget({
    required this.model,
    super.key,
  });
  final WeighbridgeFormData model;

  @override
  Widget build(BuildContext context) {
    return BorderedCardWithTitle(
      title: context.l10n.enablePricingServices,
      child: Row(
        spacing: Insets.gutter,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: EmrSwitchFormField(
              labelText: context.l10n.retailAccount,
              binding: model.pricingServicesConfig.value.retailAccount,
            ),
          ),
          Expanded(
            child: EmrSwitchFormField(
              labelText: context.l10n.businessAccount,
              binding: model.pricingServicesConfig.value.businessAccount,
            ),
          ),
          Expanded(
            child: EmrSwitchFormField(
              labelText: context.l10n.interDepot,
              binding: model.pricingServicesConfig.value.interDepot,
            ),
          ),
        ],
      ),
    );
  }
}
