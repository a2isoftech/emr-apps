import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:emr_sharedtypes/models/models.dart';

Input$PaymentMethodsInput mapToGraphQLPaymentMethods(PaymentMethods model) {
  return Input$PaymentMethodsInput(
    atm: Input$AtmPaymentMethodInput(
      rounding: Input$RoundingInput(
        value: model.atm.rounding.value ?? 0,
        roundingType: mapToGraphQLRoundingType(
          model.atm.rounding.roundingType!,
        ),
      ),
      paymentMethod: mapToGraphQLPaymentMethod(
        model.atm.paymentMethod,
      ),
      enabled: model.atm.enabled,
      maxUpperLimit: model.atm.maxUpperLimit,
    ),
    manualCheque: Input$ManualChequePaymentMethodInput(
      enabled: model.manualCheque.enabled,
      paymentMethod: mapToGraphQLPaymentMethod(
        model.manualCheque.paymentMethod,
      ),
      maxUpperLimit: model.manualCheque.maxUpperLimit,
    ),
    autoCheque: Input$AutoChequePaymentMethodInput(
      enabled: model.autoCheque.enabled,
      paymentMethod: mapToGraphQLPaymentMethod(
        model.autoCheque.paymentMethod,
      ),
      enforceIdentification: model.autoCheque.enforceIdentification,
      logoPath: model.autoCheque.logoPath,
      bankCode: model.autoCheque.bankCode,
      maxUpperLimit: model.autoCheque.maxUpperLimit,
    ),
    fasterpay: Input$FasterpayPaymentMethodInput(
      enabled: model.fasterpay.enabled,
      paymentMethod: mapToGraphQLPaymentMethod(
        model.fasterpay.paymentMethod,
      ),
      flatFeeValue: model.fasterpay.flatFeeValue,
      bankCode: model.fasterpay.bankCode,
      maxUpperLimit: model.fasterpay.maxUpperLimit,
    ),
    overnightFasterpay: Input$OvernightFasterpayPaymentMethodInput(
      enabled: model.overnightFasterpay.enabled,
      paymentMethod: mapToGraphQLPaymentMethod(
        model.overnightFasterpay.paymentMethod,
      ),
      bankCode: model.overnightFasterpay.bankCode,
      maxUpperLimit: model.overnightFasterpay.maxUpperLimit,
    ),
    cash: Input$CashPaymentMethodInput(
      enabled: model.cash.enabled,
      paymentMethod: mapToGraphQLPaymentMethod(
        model.cash.paymentMethod,
      ),
      numberOfRemittancesToPrint: model.cash.numberOfRemittancesToPrint,
      maxUpperLimit: model.cash.maxUpperLimit,
    ),
    autoChequeWithEncashmentAtm:
        Input$AutoChequeWithEncashmentAtmPaymentMethodInput(
      enabled: model.autoChequeWithEncashmentAtm.enabled,
      paymentMethod: mapToGraphQLPaymentMethod(
        model.autoChequeWithEncashmentAtm.paymentMethod,
      ),
      agent: model.autoChequeWithEncashmentAtm.agent,
      logoPath: model.autoChequeWithEncashmentAtm.logoPath,
      enforceIdentification:
          model.autoChequeWithEncashmentAtm.enforceIdentification,
      flatFeeThreshold: model.autoChequeWithEncashmentAtm.flatFeeThreshold,
      flatFeeValue: model.autoChequeWithEncashmentAtm.flatFeeValue,
      commissionPercent: model.autoChequeWithEncashmentAtm.commissionPercent,
      minCommission: model.autoChequeWithEncashmentAtm.minCommission,
      minDenomination: model.autoChequeWithEncashmentAtm.minDenomination,
      bankCode: model.autoChequeWithEncashmentAtm.bankCode,
      maxUpperLimit: model.autoChequeWithEncashmentAtm.maxUpperLimit,
    ),
    autoChequeWithEncashmentCash:
        Input$AutoChequeWithEncashmentCashPaymentMethodInput(
      enabled: model.autoChequeWithEncashmentCash.enabled,
      paymentMethod: mapToGraphQLPaymentMethod(
        model.autoChequeWithEncashmentCash.paymentMethod,
      ),
      agent: model.autoChequeWithEncashmentCash.agent,
      logoPath: model.autoChequeWithEncashmentCash.logoPath,
      enforceIdentification:
          model.autoChequeWithEncashmentCash.enforceIdentification,
      flatFeeThreshold: model.autoChequeWithEncashmentCash.flatFeeThreshold,
      flatFeeValue: model.autoChequeWithEncashmentCash.flatFeeValue,
      commissionPercent: model.autoChequeWithEncashmentCash.commissionPercent,
      minCommission: model.autoChequeWithEncashmentCash.minCommission,
      minDenomination: model.autoChequeWithEncashmentCash.minDenomination,
      bankCode: model.autoChequeWithEncashmentCash.bankCode,
      maxUpperLimit: model.autoChequeWithEncashmentCash.maxUpperLimit,
    ),
    secorePrepaid: Input$SecorePrepaidPaymentMethodInput(
      commissionPercent: model.secorePrepaid.commissionPercent,
      enabled: model.secorePrepaid.enabled,
      paymentMethod: mapToGraphQLPaymentMethod(
        model.secorePrepaid.paymentMethod,
      ),
      maxUpperLimit: model.secorePrepaid.maxUpperLimit,
    ),
    digitalWalletWithAtm: Input$DigitalWalletWithAtmPaymentMethodInput(
      rounding: Input$RoundingInput(
        value: model.digitalWalletWithAtm.rounding.value ?? 0,
        roundingType: mapToGraphQLRoundingType(
          model.digitalWalletWithAtm.rounding.roundingType!,
        ),
      ),
      paymentMethod: mapToGraphQLPaymentMethod(
        model.digitalWalletWithAtm.paymentMethod,
      ),
      enabled: model.digitalWalletWithAtm.enabled,
      commissionPercent: model.digitalWalletWithAtm.commissionPercent,
      maxUpperLimit: model.digitalWalletWithAtm.maxUpperLimit,
    ),
    digitalWalletWithCash: Input$DigitalWalletWithCashPaymentMethodInput(
      rounding: Input$RoundingInput(
        value: model.digitalWalletWithCash.rounding.value ?? 0,
        roundingType: mapToGraphQLRoundingType(
          model.digitalWalletWithCash.rounding.roundingType!,
        ),
      ),
      paymentMethod: mapToGraphQLPaymentMethod(
        model.digitalWalletWithCash.paymentMethod,
      ),
      enabled: model.digitalWalletWithCash.enabled,
      commissionPercent: model.digitalWalletWithCash.commissionPercent,
      maxUpperLimit: model.digitalWalletWithCash.maxUpperLimit,
    ),
    splitPayment: Input$SplitPaymentMethodInput(
      enabled: model.splitPayment.enabled,
      paymentMethod: mapToGraphQLPaymentMethod(
        model.splitPayment.paymentMethod,
      ),
      maxUpperLimit: model.splitPayment.maxUpperLimit,
    ),
  );
}

Enum$PaymentMethod mapToGraphQLPaymentMethod(PaymentMethod method) {
  switch (method) {
    case PaymentMethod.atm:
      return Enum$PaymentMethod.ATM;
    case PaymentMethod.cash:
      return Enum$PaymentMethod.CASH;
    case PaymentMethod.manualCheque:
      return Enum$PaymentMethod.MANUAL_CHEQUE;
    case PaymentMethod.autoCheque:
      return Enum$PaymentMethod.AUTO_CHEQUE;
    case PaymentMethod.autoChequeWithEncashmentAtm:
      return Enum$PaymentMethod.AUTO_CHEQUE_WITH_ENCASHMENT_ATM;
    case PaymentMethod.autoChequeWithEncashmentCash:
      return Enum$PaymentMethod.AUTO_CHEQUE_WITH_ENCASHMENT_CASH;
    case PaymentMethod.fasterPayment:
      return Enum$PaymentMethod.FASTER_PAYMENT;
    case PaymentMethod.overnightFasterPayment:
      return Enum$PaymentMethod.OVERNIGHT_FASTER_PAYMENT;
    case PaymentMethod.secorePrepayCard:
      return Enum$PaymentMethod.SECORE_PREPAY_CARD;
    case PaymentMethod.digitalWalletWithAtm:
      return Enum$PaymentMethod.DIGITAL_WALLET_WITH_ATM;
    case PaymentMethod.digitalWalletWithCash:
      return Enum$PaymentMethod.DIGITAL_WALLET_WITH_CASH;
    case PaymentMethod.splitPayment:
      return Enum$PaymentMethod.SPLIT_PAYMENT;
    case PaymentMethod.none:
      return Enum$PaymentMethod.NONE;
  }
}

Enum$RoundingType mapToGraphQLRoundingType(RoundingType type) {
  switch (type) {
    case RoundingType.noRounding:
      return Enum$RoundingType.NO_ROUNDING;
    case RoundingType.roundUp:
      return Enum$RoundingType.ROUND_UP;
    case RoundingType.roundDown:
      return Enum$RoundingType.ROUND_DOWN;
  }
}

PaymentMethod mapFromGraphQLPaymentMethod(Enum$PaymentMethod method) {
  switch (method) {
    case Enum$PaymentMethod.ATM:
      return PaymentMethod.atm;
    case Enum$PaymentMethod.CASH:
      return PaymentMethod.cash;
    case Enum$PaymentMethod.MANUAL_CHEQUE:
      return PaymentMethod.manualCheque;
    case Enum$PaymentMethod.AUTO_CHEQUE:
      return PaymentMethod.autoCheque;
    case Enum$PaymentMethod.AUTO_CHEQUE_WITH_ENCASHMENT_ATM:
      return PaymentMethod.autoChequeWithEncashmentAtm;
    case Enum$PaymentMethod.AUTO_CHEQUE_WITH_ENCASHMENT_CASH:
      return PaymentMethod.autoChequeWithEncashmentCash;
    case Enum$PaymentMethod.FASTER_PAYMENT:
      return PaymentMethod.fasterPayment;
    case Enum$PaymentMethod.OVERNIGHT_FASTER_PAYMENT:
      return PaymentMethod.overnightFasterPayment;
    case Enum$PaymentMethod.SECORE_PREPAY_CARD:
      return PaymentMethod.secorePrepayCard;
    case Enum$PaymentMethod.DIGITAL_WALLET_WITH_ATM:
      return PaymentMethod.digitalWalletWithAtm;
    case Enum$PaymentMethod.DIGITAL_WALLET_WITH_CASH:
      return PaymentMethod.digitalWalletWithCash;
    case Enum$PaymentMethod.SPLIT_PAYMENT:
      return PaymentMethod.splitPayment;
    case Enum$PaymentMethod.NONE:
      return PaymentMethod.none;
    case Enum$PaymentMethod.$unknown:
      return PaymentMethod.none;
  }
}

RoundingType mapFromGraphQLAtmRoundingType(Enum$RoundingType? gqlType) {
  switch (gqlType) {
    case Enum$RoundingType.ROUND_UP:
      return RoundingType.roundUp;
    case Enum$RoundingType.ROUND_DOWN:
      return RoundingType.roundDown;
    case Enum$RoundingType.NO_ROUNDING:
      return RoundingType.noRounding;
    case Enum$RoundingType.$unknown:
    case null:
      return RoundingType.noRounding;
  }
}
