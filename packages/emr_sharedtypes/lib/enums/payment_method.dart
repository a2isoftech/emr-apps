import 'package:json_annotation/json_annotation.dart';

enum PaymentMethod {
  @JsonValue('NONE')
  none,
  @JsonValue('FASTER_PAYMENT')
  fasterPayment,
  @JsonValue('CASH')
  cash,
  @JsonValue('ATM')
  atm,
  @JsonValue('AUTO_CHEQUE')
  autoCheque,
  @JsonValue('MANUAL_CHEQUE')
  manualCheque,
  @JsonValue('OVERNIGHT_FASTER_PAYMENT')
  overnightFasterPayment,
  @JsonValue('SECORE_PREPAY_CARD')
  secorePrepayCard,
  @JsonValue('AUTO_CHEQUE_WITH_ENCASHMENT_ATM')
  autoChequeWithEncashmentAtm,
  @JsonValue('AUTO_CHEQUE_WITH_ENCASHMENT_CASH')
  autoChequeWithEncashmentCash,
  @JsonValue('DIGITAL_WALLET_WITH_ATM')
  digitalWalletWithAtm,
  @JsonValue('DIGITAL_WALLET_WITH_CASH')
  digitalWalletWithCash,
  @JsonValue('SPLIT_PAYMENT')
  splitPayment,
}
