import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/enums/rounding_type.dart';
import 'package:emr_sharedtypes/models/payment_methods/atm_payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/auto_cheque_payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/auto_cheque_with_encashment_atm_payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/auto_cheque_with_encashment_cash_payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/cash_payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/digital_wallet_with_atm_payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/digital_wallet_with_cash_payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/fasterpay_payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/manual_cheque_payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/overnight_fasterpay_payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/secore_prepaid_payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/split_payment_method.dart';
import 'package:emr_sharedtypes/models/rounding.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_methods.g.dart';

@JsonSerializable()
class PaymentMethods {
  const PaymentMethods({
    required this.atm,
    required this.manualCheque,
    required this.autoCheque,
    required this.fasterpay,
    required this.overnightFasterpay,
    required this.cash,
    required this.autoChequeWithEncashmentAtm,
    required this.autoChequeWithEncashmentCash,
    required this.secorePrepaid,
    required this.digitalWalletWithCash,
    required this.digitalWalletWithAtm,
    required this.splitPayment,
  });

  PaymentMethods.defaults()
      : atm = AtmPaymentMethod(
          rounding: Rounding(0, roundingType: RoundingType.noRounding),
          paymentMethod: PaymentMethod.atm,
          enabled: false,
          maxUpperLimit: 0,
        ),
        manualCheque = const ManualChequePaymentMethod(
          paymentMethod: PaymentMethod.manualCheque,
          enabled: false,
          maxUpperLimit: 0,
        ),
        autoCheque = const AutoChequePaymentMethod(
          paymentMethod: PaymentMethod.autoCheque,
          enforceIdentification: false,
          enabled: false,
          logoPath: '',
          maxUpperLimit: 0,
        ),
        fasterpay = const FasterpayPaymentMethod(
          paymentMethod: PaymentMethod.fasterPayment,
          enabled: false,
          flatFeeValue: 0,
          maxUpperLimit: 0,
        ),
        overnightFasterpay = const OvernightFasterpayPaymentMethod(
          paymentMethod: PaymentMethod.overnightFasterPayment,
          enabled: false,
          maxUpperLimit: 0,
        ),
        cash = const CashPaymentMethod(
          paymentMethod: PaymentMethod.cash,
          enabled: false,
          numberOfRemittancesToPrint: 0,
          maxUpperLimit: 0,
        ),
        autoChequeWithEncashmentAtm =
            const AutoChequeWithEncashmentAtmPaymentMethod(
          paymentMethod: PaymentMethod.autoChequeWithEncashmentAtm,
          enabled: false,
          enforceIdentification: false,
          agent: '',
          logoPath: '',
          minCommission: 0,
          commissionPercent: 0,
          minDenomination: 0,
          flatFeeThreshold: 0,
          flatFeeValue: 0,
          bankCode: '',
          maxUpperLimit: 0,
        ),
        autoChequeWithEncashmentCash =
            const AutoChequeWithEncashmentCashPaymentMethod(
          paymentMethod: PaymentMethod.autoChequeWithEncashmentCash,
          enabled: false,
          enforceIdentification: false,
          agent: '',
          logoPath: '',
          minCommission: 0,
          commissionPercent: 0,
          minDenomination: 0,
          flatFeeThreshold: 0,
          flatFeeValue: 0,
          bankCode: '',
          maxUpperLimit: 0,
        ),
        secorePrepaid = const SecorePrepaidPaymentMethod(
          paymentMethod: PaymentMethod.secorePrepayCard,
          enabled: false,
          maxUpperLimit: 0,
        ),
        digitalWalletWithCash = DigitalWalletWithCashPaymentMethod(
          paymentMethod: PaymentMethod.digitalWalletWithCash,
          enabled: false,
          rounding: Rounding(0, roundingType: RoundingType.noRounding),
          commissionPercent: 0,
          maxUpperLimit: 0,
        ),
        digitalWalletWithAtm = DigitalWalletWithAtmPaymentMethod(
          paymentMethod: PaymentMethod.digitalWalletWithAtm,
          enabled: false,
          rounding: Rounding(0, roundingType: RoundingType.noRounding),
          commissionPercent: 0,
          maxUpperLimit: 0,
        ),
        splitPayment = const SplitPaymentMethod(
          paymentMethod: PaymentMethod.splitPayment,
          enabled: false,
          maxUpperLimit: 0,
        );

  factory PaymentMethods.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodsFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodsToJson(this);

  final AtmPaymentMethod atm;
  final ManualChequePaymentMethod manualCheque;
  final AutoChequePaymentMethod autoCheque;
  final FasterpayPaymentMethod fasterpay;
  final OvernightFasterpayPaymentMethod overnightFasterpay;
  final CashPaymentMethod cash;
  final AutoChequeWithEncashmentAtmPaymentMethod autoChequeWithEncashmentAtm;
  final AutoChequeWithEncashmentCashPaymentMethod autoChequeWithEncashmentCash;
  final SecorePrepaidPaymentMethod secorePrepaid;
  final DigitalWalletWithCashPaymentMethod digitalWalletWithCash;
  final DigitalWalletWithAtmPaymentMethod digitalWalletWithAtm;
  final SplitPaymentMethod splitPayment;
}
