import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension VatClassExtension on Enum$VatClass {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$VatClass.NONE => context.l10n.psnopNone,
      Enum$VatClass.ZERO_RATED => context.l10n.zeroRated,
      Enum$VatClass.$unknown => '',
      _ => toJson(),
    };
  }
}
