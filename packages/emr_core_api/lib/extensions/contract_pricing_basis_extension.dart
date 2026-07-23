import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/widgets.dart';

extension ContractPricingBasisExtension on Enum$ContractPricingBasis {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$ContractPricingBasis.SPOT => context.l10n.spot,
      Enum$ContractPricingBasis.FIXED => context.l10n.fixed,
      Enum$ContractPricingBasis.UNFIXED => context.l10n.unfixed,
      Enum$ContractPricingBasis.$unknown => '',
    };
  }
}
