import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension VatGroupTypeExtension on Enum$VatGroupType {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$VatGroupType.NONE => context.l10n.psnopNone,
      Enum$VatGroupType.DOMESTIC => context.l10n.domestic,
      Enum$VatGroupType.DOMESTIC_NOT_REGISTERED =>
        context.l10n.domesticNotRegistered,
      Enum$VatGroupType.EU => context.l10n.eu,
      Enum$VatGroupType.REST_OF_WORLD => context.l10n.restOfWorld,
      Enum$VatGroupType.VAT_REGISTERED => context.l10n.vatRegistered,
      Enum$VatGroupType.$unknown => '',
    };
  }
}
