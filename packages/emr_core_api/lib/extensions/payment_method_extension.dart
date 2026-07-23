import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension PaymentMethodExtension on Enum$PaymentMethod {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$PaymentMethod.NONE => context.l10n.psnopNone,
      Enum$PaymentMethod.FASTER_PAYMENT => context.l10n.fasterPayment,
      Enum$PaymentMethod.CASH => context.l10n.cash,
      Enum$PaymentMethod.ATM => context.l10n.atm,
      Enum$PaymentMethod.AUTO_CHEQUE => context.l10n.autoCheque,
      Enum$PaymentMethod.MANUAL_CHEQUE => context.l10n.manualCheque,
      Enum$PaymentMethod.OVERNIGHT_FASTER_PAYMENT =>
        context.l10n.overnightFasterPayment,
      Enum$PaymentMethod.SECORE_PREPAY_CARD => context.l10n.secorePrepayCard,
      Enum$PaymentMethod.AUTO_CHEQUE_WITH_ENCASHMENT_ATM =>
        context.l10n.autoChequeWithEncashmentAtm,
      Enum$PaymentMethod.AUTO_CHEQUE_WITH_ENCASHMENT_CASH =>
        context.l10n.autoChequeWithEncashmentCash,
      Enum$PaymentMethod.DIGITAL_WALLET_WITH_ATM =>
        context.l10n.digitalWalletWithAtm,
      Enum$PaymentMethod.DIGITAL_WALLET_WITH_CASH =>
        context.l10n.digitalWalletWithCash,
      Enum$PaymentMethod.SPLIT_PAYMENT => context.l10n.splitPayment,
      Enum$PaymentMethod.$unknown => '',
    };
  }
}
