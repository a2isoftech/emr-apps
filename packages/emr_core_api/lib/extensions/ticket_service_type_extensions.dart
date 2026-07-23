import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension TicketServiceTypeExtensions on Enum$TicketServiceType {
  String displayString(BuildContext context) => switch (this) {
    .DELIVERED => context.l10n.delivered,
    .COLLECTED => context.l10n.collected,
    .$unknown => '',
  };
}
