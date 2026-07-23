// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Advance _$AdvanceFromJson(Map<String, dynamic> json) => Advance(
  id: json['id'] as String,
  accountId: json['accountId'] as String,
  companyId: json['companyId'] as String,
  handlingYardId: json['handlingYardId'] as String,
  payableYardId: json['payableYardId'] as String,
  paymentAmount: PaymentAmount.fromJson(
    json['paymentAmount'] as Map<String, dynamic>,
  ),
  reason: $enumDecode(_$AdvanceReasonEnumMap, json['reason']),
  term: advanceTermFromJson(json['term'] as Map<String, dynamic>),
  paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
  arrangedByUserId: json['arrangedByUserId'] as String,
  paymentInfo: AdvancePaymentInfo.fromJson(
    json['paymentInfo'] as Map<String, dynamic>,
  ),
  account: json['account'] == null
      ? null
      : Account.fromJson(json['account'] as Map<String, dynamic>),
  company: json['company'] == null
      ? null
      : Company.fromJson(json['company'] as Map<String, dynamic>),
  handlingYard: json['handlingYard'] == null
      ? null
      : Yard.fromJson(json['handlingYard'] as Map<String, dynamic>),
  payableYard: json['payableYard'] == null
      ? null
      : Yard.fromJson(json['payableYard'] as Map<String, dynamic>),
  allowFlexiblePay: json['allowFlexiblePay'] as bool? ?? false,
  paidInFullDueDate: json['paidInFullDueDate'] == null
      ? null
      : DateTime.parse(json['paidInFullDueDate'] as String),
  arrangedByUser: json['arrangedByUser'] == null
      ? null
      : UserInfo.fromJson(json['arrangedByUser'] as Map<String, dynamic>),
  reference: json['reference'] as String?,
  comments:
      (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  status:
      $enumDecodeNullable(_$AdvanceStatusEnumMap, json['status']) ??
      AdvanceStatus.draft,
  offsetStatus:
      $enumDecodeNullable(_$OffsetStatusEnumMap, json['offsetStatus']) ??
      OffsetStatus.none,
  paymentValidationResult: json['paymentValidationResult'] == null
      ? null
      : PaymentValidationResult.fromJson(
          json['paymentValidationResult'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AdvanceToJson(Advance instance) => <String, dynamic>{
  'id': instance.id,
  'accountId': instance.accountId,
  'account': instance.account?.toJson(),
  'companyId': instance.companyId,
  'company': instance.company?.toJson(),
  'handlingYardId': instance.handlingYardId,
  'handlingYard': instance.handlingYard?.toJson(),
  'payableYardId': instance.payableYardId,
  'payableYard': instance.payableYard?.toJson(),
  'paymentAmount': instance.paymentAmount.toJson(),
  'reason': _$AdvanceReasonEnumMap[instance.reason]!,
  'term': instance.term.toJson(),
  'allowFlexiblePay': instance.allowFlexiblePay,
  'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
  'paidInFullDueDate': instance.paidInFullDueDate?.toIso8601String(),
  'arrangedByUserId': instance.arrangedByUserId,
  'arrangedByUser': instance.arrangedByUser?.toJson(),
  'reference': instance.reference,
  'comments': instance.comments.map((e) => e.toJson()).toList(),
  'paymentInfo': instance.paymentInfo.toJson(),
  'status': _$AdvanceStatusEnumMap[instance.status]!,
  'offsetStatus': _$OffsetStatusEnumMap[instance.offsetStatus]!,
  'paymentValidationResult': instance.paymentValidationResult?.toJson(),
};

const _$AdvanceReasonEnumMap = {
  AdvanceReason.commodity: 'COMMODITY',
  AdvanceReason.haulage: 'HAULAGE',
  AdvanceReason.cost: 'COST',
  AdvanceReason.contract: 'CONTRACT',
  AdvanceReason.preInvoice: 'PRE_INVOICE',
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

const _$AdvanceStatusEnumMap = {
  AdvanceStatus.authorised: 'AUTHORISED',
  AdvanceStatus.paid: 'PAID',
  AdvanceStatus.cancelled: 'CANCELLED',
  AdvanceStatus.recalled: 'RECALLED',
  AdvanceStatus.draft: 'DRAFT',
  AdvanceStatus.posted: 'POSTED',
};

const _$OffsetStatusEnumMap = {
  OffsetStatus.none: 'NONE',
  OffsetStatus.partial: 'PARTIAL',
  OffsetStatus.full: 'FULL',
};
