import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension TicketCategoryExtensions on Enum$TicketCategory {
  String displayString(BuildContext context) => switch (this) {
    .CONTAINER => context.l10n.container,
    .INTER_DEPOT => context.l10n.interDepot,
    .INTER_YARD_TRANSFER => 'Inter-yard transfer',
    .MERCHANT_TRUCK_TRADE => 'Merchant truck trade',
    .NORMAL => 'Normal',
    .TRUE_TRUCK_TRADE => 'True truck trade',
    .$unknown => '',
  };
}
