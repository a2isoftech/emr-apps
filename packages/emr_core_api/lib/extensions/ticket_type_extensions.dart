import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension TicketTypeExtensions on Enum$TicketType {
  String displayString(BuildContext context) => switch (this) {
    .INWARDS => context.l10n.inward,
    .OUTWARDS => context.l10n.outward,
    .$unknown => '',
  };
}
