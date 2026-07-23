import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';

extension PaymentMethodFactory on Enum$PaymentMethod {
  PaymentMethod toPaymentMethod() => switch (this) {
        Enum$PaymentMethod.NONE => PaymentMethod.none,
        Enum$PaymentMethod.FASTER_PAYMENT => PaymentMethod.fasterPayment,
        Enum$PaymentMethod.CASH => PaymentMethod.cash,
        Enum$PaymentMethod.ATM => PaymentMethod.atm,
        Enum$PaymentMethod.AUTO_CHEQUE => PaymentMethod.autoCheque,
        Enum$PaymentMethod.MANUAL_CHEQUE => PaymentMethod.manualCheque,
        Enum$PaymentMethod.OVERNIGHT_FASTER_PAYMENT =>
          PaymentMethod.overnightFasterPayment,
        Enum$PaymentMethod.SECORE_PREPAY_CARD => PaymentMethod.secorePrepayCard,
        Enum$PaymentMethod.AUTO_CHEQUE_WITH_ENCASHMENT_ATM =>
          PaymentMethod.autoChequeWithEncashmentAtm,
        Enum$PaymentMethod.AUTO_CHEQUE_WITH_ENCASHMENT_CASH =>
          PaymentMethod.autoChequeWithEncashmentCash,
        Enum$PaymentMethod.DIGITAL_WALLET_WITH_ATM =>
          PaymentMethod.digitalWalletWithAtm,
        Enum$PaymentMethod.DIGITAL_WALLET_WITH_CASH =>
          PaymentMethod.digitalWalletWithCash,
        Enum$PaymentMethod.SPLIT_PAYMENT => PaymentMethod.splitPayment,
        Enum$PaymentMethod.$unknown => PaymentMethod.none,
      };
}
