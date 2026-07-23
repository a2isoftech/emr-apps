// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentRecord _$PaymentRecordFromJson(
  Map<String, dynamic> json,
) => PaymentRecord(
  id: json['id'] as String,
  paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
  yardCode: json['yardCode'] as String,
  ticketIds: (json['ticketIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  totalAmount: (json['totalAmount'] as num).toDouble(),
  paymentMethodDetails: json['paymentMethodDetails'] as Map<String, dynamic>,
  status: $enumDecode(_$PaymentStatusEnumMap, json['status']),
  needAuthorization: json['needAuthorization'] as bool,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  extendedProperties: json['extendedProperties'] as Map<String, dynamic>,
  created: Created.fromJson(json['created'] as Map<String, dynamic>),
  modified: Modified.fromJson(json['modified'] as Map<String, dynamic>),
  active: json['active'] as bool,
  cashDeductions: (json['cashDeductions'] as num).toDouble(),
  tickets:
      (json['tickets'] as List<dynamic>?)
          ?.map((e) => PaymentRecordTicket.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  authorizationDetails: json['authorizationDetails'] == null
      ? null
      : AuthorizationDetails.fromJson(
          json['authorizationDetails'] as Map<String, dynamic>,
        ),
  advanceId: json['advanceId'] as String?,
  offsetInfo:
      (json['offsetInfo'] as List<dynamic>?)
          ?.map((e) => AdvanceOffsetInfo.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  paymentType:
      $enumDecodeNullable(_$PaymentTypeEnumMap, json['paymentType']) ??
      PaymentType.ticket,
  totalFee: (json['totalFee'] as num?)?.toDouble() ?? 0,
  advanceOffset: (json['advanceOffset'] as num?)?.toDouble() ?? 0,
  roundingAdjustment: (json['roundingAdjustment'] as num?)?.toDouble() ?? 0,
  haulageCharge: (json['haulageCharge'] as num?)?.toDouble() ?? 0,
  roundingAdjustmentOnFee:
      (json['roundingAdjustmentOnFee'] as num?)?.toDouble() ?? 0,
  payableAfterCostAndDeduction:
      (json['payableAfterCostAndDeduction'] as num?)?.toDouble() ?? 0,
  payableAmount: (json['payableAmount'] as num?)?.toDouble() ?? 0,
  paymentRecordItems:
      (json['paymentRecordItems'] as List<dynamic>?)
          ?.map((e) => PaymentRecordItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  paymentPostingTask: json['paymentPostingTask'] == null
      ? null
      : PaymentPostingTask.fromJson(
          json['paymentPostingTask'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PaymentRecordToJson(PaymentRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'yardCode': instance.yardCode,
      'ticketIds': instance.ticketIds,
      'totalAmount': instance.totalAmount,
      'totalFee': instance.totalFee,
      'advanceOffset': instance.advanceOffset,
      'cashDeductions': instance.cashDeductions,
      'roundingAdjustment': instance.roundingAdjustment,
      'haulageCharge': instance.haulageCharge,
      'roundingAdjustmentOnFee': instance.roundingAdjustmentOnFee,
      'payableAfterCostAndDeduction': instance.payableAfterCostAndDeduction,
      'payableAmount': instance.payableAmount,
      'paymentMethodDetails': instance.paymentMethodDetails,
      'status': _$PaymentStatusEnumMap[instance.status]!,
      'needAuthorization': instance.needAuthorization,
      'authorizationDetails': instance.authorizationDetails?.toJson(),
      'tags': instance.tags,
      'extendedProperties': instance.extendedProperties,
      'active': instance.active,
      'created': instance.created.toJson(),
      'modified': instance.modified.toJson(),
      'tickets': instance.tickets.map((e) => e.toJson()).toList(),
      'paymentType': _$PaymentTypeEnumMap[instance.paymentType]!,
      'advanceId': instance.advanceId,
      'offsetInfo': instance.offsetInfo.map((e) => e.toJson()).toList(),
      'paymentRecordItems': instance.paymentRecordItems
          .map((e) => e.toJson())
          .toList(),
      'paymentPostingTask': instance.paymentPostingTask?.toJson(),
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

const _$PaymentStatusEnumMap = {
  PaymentStatus.pending: 'PENDING',
  PaymentStatus.awaitingForApproval: 'AWAITING_FOR_APPROVAL',
  PaymentStatus.approved: 'APPROVED',
  PaymentStatus.ready: 'READY',
  PaymentStatus.processed: 'PROCESSED',
  PaymentStatus.hold: 'HOLD',
  PaymentStatus.failed: 'FAILED',
  PaymentStatus.unpaid: 'UNPAID',
};

const _$PaymentTypeEnumMap = {
  PaymentType.ticket: 'TICKET',
  PaymentType.advance: 'ADVANCE',
};

QuickPayTickets _$QuickPayTicketsFromJson(Map<String, dynamic> json) =>
    QuickPayTickets(
      ticketNo: (json['ticketNo'] as num).toInt(),
      totalPayable: (json['totalPayable'] as num).toDouble(),
      currency: json['currency'] as String?,
      ticketStatus: $enumDecode(_$TicketStatusEnumMap, json['ticketStatus']),
    );

Map<String, dynamic> _$QuickPayTicketsToJson(QuickPayTickets instance) =>
    <String, dynamic>{
      'totalPayable': instance.totalPayable,
      'ticketNo': instance.ticketNo,
      'currency': instance.currency,
      'ticketStatus': _$TicketStatusEnumMap[instance.ticketStatus]!,
    };

const _$TicketStatusEnumMap = {
  TicketStatus.draft: 'DRAFT',
  TicketStatus.active: 'ACTIVE',
  TicketStatus.finished: 'FINISHED',
  TicketStatus.closed: 'CLOSED',
  TicketStatus.deleted: 'DELETED',
  TicketStatus.paymentInitiated: 'PAYMENT_INITIATED',
  TicketStatus.instantQuickPaid: 'INSTANT_QUICK_PAID',
  TicketStatus.paid: 'PAID',
};

AdvanceOffsetInfo _$AdvanceOffsetInfoFromJson(Map<String, dynamic> json) =>
    AdvanceOffsetInfo(
      amount: (json['amount'] as num).toDouble(),
      advanceId: json['advanceId'] as String,
    );

Map<String, dynamic> _$AdvanceOffsetInfoToJson(AdvanceOffsetInfo instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'advanceId': instance.advanceId,
    };
