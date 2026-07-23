import 'package:emr_sharedtypes/enums/payment_method.dart';

extension PaymentMethodJson on PaymentMethod {
  static const _jsonValues = {
    PaymentMethod.none: 'NONE',
    PaymentMethod.fasterPayment: 'FASTER_PAYMENT',
    PaymentMethod.cash: 'CASH',
    PaymentMethod.atm: 'ATM',
    PaymentMethod.autoCheque: 'AUTO_CHEQUE',
    PaymentMethod.manualCheque: 'MANUAL_CHEQUE',
    PaymentMethod.overnightFasterPayment: 'OVERNIGHT_FASTER_PAYMENT',
    PaymentMethod.secorePrepayCard: 'SECORE_PREPAY_CARD',
    PaymentMethod.autoChequeWithEncashmentAtm:
        'AUTO_CHEQUE_WITH_ENCASHMENT_ATM',
    PaymentMethod.autoChequeWithEncashmentCash:
        'AUTO_CHEQUE_WITH_ENCASHMENT_CASH',
    PaymentMethod.digitalWalletWithAtm: 'DIGITAL_WALLET_WITH_ATM',
    PaymentMethod.digitalWalletWithCash: 'DIGITAL_WALLET_WITH_CASH',
  };

  String toJson() => _jsonValues[this]!;

  static PaymentMethod fromJson(String value) => _jsonValues.entries
      .firstWhere(
        (e) => e.value == value,
        orElse: () => const MapEntry(PaymentMethod.none, 'NONE'),
      )
      .key;

  bool requiresAuthorization() => ![
        PaymentMethod.autoCheque,
        PaymentMethod.manualCheque,
      ].contains(this);
}
