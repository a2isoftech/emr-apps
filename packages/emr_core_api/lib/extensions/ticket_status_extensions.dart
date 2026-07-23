import 'package:emr_core_api/emr_core_api.dart';
import 'package:flutter/widgets.dart';

extension TicketStatusExtensions on Enum$TicketStatus {
  String displayString(BuildContext context) => switch (this) {
    .DRAFT => 'Draft',
    .ACTIVE => 'Active',
    .INSTANT_QUICK_PAID => 'Instant Quick Paid',
    .FINISHED => 'Finished',
    .CLOSED => 'Closed',
    .DELETED => 'Deleted',
    .PAYMENT_INITIATED => 'Payment Initiated',
    .PAID => 'Paid',
    .CONFIRMED => 'Confirmed',
    .DEFERRED_PAID => 'Deferred Paid',
    .POSTED => 'Posted',
    .SELF_BILL_VERIFIED => 'Self Bill Verified',
    .REGISTERED_TRADER_INVOICE => 'Registered Trader Invoice',
    .REVERSE => 'Reversed',
    .STOP_PAYMENT => 'Payment Stopped',
    .UNCLAIMED => 'Unclaimed',
    .UNPAY_INITIATED => 'Unpay Initiated',
    .$unknown => '',
  };
}
