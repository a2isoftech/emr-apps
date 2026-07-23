import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension TaxMethodExtension on Enum$TaxMethod {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$TaxMethod.NONE => context.l10n.psnopNone,
      Enum$TaxMethod.NET_OF_DISCOUNT => context.l10n.netOfDiscount,
      Enum$TaxMethod.GROSS_OF_DISCOUNT => context.l10n.grossOfDiscount,
      Enum$TaxMethod.$unknown => '',
    };
  }
}
