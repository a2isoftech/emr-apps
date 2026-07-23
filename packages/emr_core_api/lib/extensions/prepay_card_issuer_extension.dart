import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension PrepayCardIssuerExtension on Enum$PrepayCardIssuer {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$PrepayCardIssuer.NONE => context.l10n.psnopNone,
      Enum$PrepayCardIssuer.QUANTUM => context.l10n.quantum,
      Enum$PrepayCardIssuer.INCENDIA => context.l10n.incendia,
      Enum$PrepayCardIssuer.TUXEDO => context.l10n.tuxedo,
      Enum$PrepayCardIssuer.TEST => context.l10n.test,
      Enum$PrepayCardIssuer.SECORE => context.l10n.secore,
      Enum$PrepayCardIssuer.$unknown => '',
    };
  }
}
