import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/widgets.dart';

extension AdvancePaymentMethodExtension on PaymentMethod {
  String localizedLabel(BuildContext context) => switch (this) {
        PaymentMethod.none => context.l10n.none,
        PaymentMethod.fasterPayment => context.l10n.fasterPayment,
        PaymentMethod.cash => context.l10n.cash,
        PaymentMethod.atm => context.l10n.atm,
        PaymentMethod.autoCheque => context.l10n.autoCheque,
        PaymentMethod.manualCheque => context.l10n.manualCheque,
        PaymentMethod.overnightFasterPayment =>
          context.l10n.overnightFasterPayment,
        PaymentMethod.secorePrepayCard => context.l10n.secorePrepayCard,
        PaymentMethod.autoChequeWithEncashmentAtm =>
          context.l10n.autoChequeWithEncashmentAtm,
        PaymentMethod.autoChequeWithEncashmentCash =>
          context.l10n.autoChequeWithEncashmentCash,
        PaymentMethod.digitalWalletWithAtm => context.l10n.digitalWalletWithAtm,
        PaymentMethod.digitalWalletWithCash =>
          context.l10n.digitalWalletWithCash,
        PaymentMethod.splitPayment => context.l10n.splitPayment,
      };
}
