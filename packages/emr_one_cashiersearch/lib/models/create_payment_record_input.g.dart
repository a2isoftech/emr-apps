// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_record_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentRecordInput _$CreatePaymentRecordInputFromJson(
  Map<String, dynamic> json,
) => CreatePaymentRecordInput(
  extendedProperties: json['extendedProperties'] as Map<String, dynamic>,
  paymentMethodDetails: json['paymentMethodDetails'] as Map<String, dynamic>,
  paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
  yardCode: json['yardCode'] as String,
  referenceIds: (json['referenceIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  paymentType: $enumDecode(_$PaymentTypeEnumMap, json['paymentType']),
  paymentRecordItems: (json['paymentRecordItems'] as List<dynamic>)
      .map((e) => PaymentRecordItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  authorizationType: $enumDecodeNullable(
    _$AuthorizationModeEnumMap,
    json['authorizationType'],
  ),
  splitPaymentBreakups: (json['splitPaymentBreakups'] as List<dynamic>?)
      ?.map((e) => SplitPaymentBreakup.fromJson(e as Map<String, dynamic>))
      .toList(),
  advanceOverrides: (json['advanceOverrides'] as List<dynamic>?)
      ?.map((e) => AdvanceOffsetInfo.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CreatePaymentRecordInputToJson(
  CreatePaymentRecordInput instance,
) => <String, dynamic>{
  'extendedProperties': instance.extendedProperties,
  'paymentMethodDetails': instance.paymentMethodDetails,
  'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
  'yardCode': instance.yardCode,
  'referenceIds': instance.referenceIds,
  'paymentType': _$PaymentTypeEnumMap[instance.paymentType]!,
  'paymentRecordItems': instance.paymentRecordItems
      .map((e) => e.toJson())
      .toList(),
  'authorizationType': _$AuthorizationModeEnumMap[instance.authorizationType],
  'splitPaymentBreakups': instance.splitPaymentBreakups
      ?.map((e) => e.toJson())
      .toList(),
  'advanceOverrides': instance.advanceOverrides
      ?.map((e) => e.toJson())
      .toList(),
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.none: 'NONE',
  PaymentMethod.fasterPayment: 'FASTER_PAYMENT',
  PaymentMethod.cash: 'CASH',
  PaymentMethod.atm: 'ATM',
  PaymentMethod.autoCheque: 'AUTO_CHEQUE',
  PaymentMethod.manualCheque: 'MANUAL_CHEQUE',
  PaymentMethod.overnightFasterPayment: 'OVERNIGHT_FASTER_PAYMENT',
  PaymentMethod.secorePrepayCard: 'SECORE_PREPAY_CARD',
  PaymentMethod.autoChequeWithEncashmentAtm: 'AUTO_CHEQUE_WITH_ENCASHMENT_ATM',
  PaymentMethod.autoChequeWithEncashmentCash:
      'AUTO_CHEQUE_WITH_ENCASHMENT_CASH',
  PaymentMethod.digitalWalletWithAtm: 'DIGITAL_WALLET_WITH_ATM',
  PaymentMethod.digitalWalletWithCash: 'DIGITAL_WALLET_WITH_CASH',
  PaymentMethod.splitPayment: 'SPLIT_PAYMENT',
};

const _$PaymentTypeEnumMap = {
  PaymentType.ticket: 'TICKET',
  PaymentType.advance: 'ADVANCE',
};

const _$AuthorizationModeEnumMap = {
  AuthorizationMode.notSet: 'NOT_SET',
  AuthorizationMode.password: 'PASSWORD',
  AuthorizationMode.workflow: 'WORKFLOW',
};
