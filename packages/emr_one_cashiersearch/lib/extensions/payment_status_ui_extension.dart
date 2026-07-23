import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

extension PaymentStatusUiExtension on PaymentStatus {
  PaymentStatusUiConfig getAuthorizationCardConfig(BuildContext context) {
    final map = <PaymentStatus, PaymentStatusUiConfig>{
      PaymentStatus.awaitingForApproval: PaymentStatusUiConfig(
        text: context.l10n.waitingForApproval,
        statusType: StatusType.negative,
        showPayButton: false,
        enableCancelButton: true,
      ),
      PaymentStatus.approved: PaymentStatusUiConfig(
        text: context.l10n.approved,
        statusType: StatusType.positive,
        showPayButton: true,
        enableCancelButton: true,
      ),
      PaymentStatus.failed: PaymentStatusUiConfig(
        text: context.l10n.rejected,
        statusType: StatusType.negative,
        showPayButton: false,
        enableCancelButton: false,
      ),
    };

    return map[this] ??
        PaymentStatusUiConfig(
          text: name.toUpperCase(),
          statusType: StatusType.negative,
          showPayButton: false,
          enableCancelButton: false,
        );
  }
}
