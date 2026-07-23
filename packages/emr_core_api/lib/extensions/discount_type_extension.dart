import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension DiscountTypeExtension on Enum$DiscountType {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$DiscountType.NONE => context.l10n.psnopNone,
      Enum$DiscountType.GROSS_OF_TAX => context.l10n.grossOfTax,
      Enum$DiscountType.NET_OF_TAX => context.l10n.netOfTax,
      Enum$DiscountType.$unknown => '',
    };
  }
}
