// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) =>
    Ticket(
        id: json['id'] as String,
        yardId: json['yardId'] as String,
        yardCode: json['yardCode'] as String,
        date: DateTime.parse(json['date'] as String),
        price: (json['price'] as num?)?.toDouble(),
        ticketCategory: $enumDecode(
          _$TicketCategoryEnumMap,
          json['ticketCategory'],
        ),
        ticketNumber: (json['ticketNumber'] as num).toInt(),
        ticketStatus: $enumDecode(_$TicketStatusEnumMap, json['ticketStatus']),
        ticketType: $enumDecode(_$TicketTypeEnumMap, json['ticketType']),
        account: TicketAccount.fromJson(
          json['account'] as Map<String, dynamic>,
        ),
        transportDetails: TransportDetails.fromJson(
          json['transportDetails'] as Map<String, dynamic>,
        ),
        currency: json['currency'] as String?,
        extendedProperties: json['extendedProperties'] as Map<String, dynamic>,
        paymentValidationResult: json['paymentValidationResult'] == null
            ? null
            : PaymentValidationResult.fromJson(
                json['paymentValidationResult'] as Map<String, dynamic>,
              ),
        isPayableAtEdge: json['isPayableAtEdge'] as bool? ?? false,
        isPaymentAuthorizationRequired:
            json['isPaymentAuthorizationRequired'] as bool? ?? false,
        defaultPaymentMethod: $enumDecodeNullable(
          _$PaymentMethodEnumMap,
          json['defaultPaymentMethod'],
        ),
        paymentDeduction: json['paymentDeduction'] == null
            ? null
            : PaymentDeductions.fromJson(
                json['paymentDeduction'] as Map<String, dynamic>,
              ),
        acceptedConsignmentNote: json['acceptedConsignmentNote'] == null
            ? null
            : ConsignmentNote.fromJson(
                json['acceptedConsignmentNote'] as Map<String, dynamic>,
              ),
        rejectedConsignmentNote: json['rejectedConsignmentNote'] == null
            ? null
            : ConsignmentNote.fromJson(
                json['rejectedConsignmentNote'] as Map<String, dynamic>,
              ),
        syncWeighbridgeTicketTask: json['syncWeighbridgeTicketTask'] == null
            ? null
            : SyncWeighbridgeTicketTask.fromJson(
                json['syncWeighbridgeTicketTask'] as Map<String, dynamic>,
              ),
        syncWeighbridgeTicketTasks:
            (json['syncWeighbridgeTicketTasks'] as List<dynamic>?)
                ?.map(
                  (e) => SyncWeighbridgeTicketTask.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList(),
        remittanceDetails: json['remittanceDetails'] == null
            ? null
            : TicketRemittance.fromJson(
                json['remittanceDetails'] as Map<String, dynamic>,
              ),
        haulageCharge: json['haulageCharge'] == null
            ? null
            : HaulageCharge.fromJson(
                json['haulageCharge'] as Map<String, dynamic>,
              ),
        deductions:
            (json['deductions'] as List<dynamic>?)
                ?.map((e) => BaseDeduction.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const [],
        mediaAssets:
            (json['mediaAssets'] as List<dynamic>?)
                ?.map((e) => MediaAsset.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const [],
        haulagePrice: (json['haulagePrice'] as num?)?.toDouble() ?? 0,
        metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      )
      ..serviceType = $enumDecodeNullable(
        _$ServiceTypeEnumMap,
        json['serviceType'],
      )
      ..created = json['created'] == null
          ? null
          : Created.fromJson(json['created'] as Map<String, dynamic>)
      ..lines = (json['lines'] as List<dynamic>?)
          ?.map((e) => TicketLine.fromJson(e as Map<String, dynamic>))
          .toList()
      ..haulier = json['haulier'] == null
          ? null
          : TicketAccount.fromJson(json['haulier'] as Map<String, dynamic>)
      ..paymentRecord = json['paymentRecord'] == null
          ? null
          : PaymentRecord.fromJson(
              json['paymentRecord'] as Map<String, dynamic>,
            );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
  'id': instance.id,
  'yardId': instance.yardId,
  'yardCode': instance.yardCode,
  'ticketNumber': instance.ticketNumber,
  'ticketType': _$TicketTypeEnumMap[instance.ticketType]!,
  'ticketCategory': _$TicketCategoryEnumMap[instance.ticketCategory]!,
  'ticketStatus': _$TicketStatusEnumMap[instance.ticketStatus]!,
  'currency': instance.currency,
  'serviceType': _$ServiceTypeEnumMap[instance.serviceType],
  'haulagePrice': instance.haulagePrice,
  'haulageCharge': instance.haulageCharge?.toJson(),
  'deductions': instance.deductions.map((e) => e.toJson()).toList(),
  'date': instance.date.toIso8601String(),
  'created': instance.created?.toJson(),
  'account': instance.account.toJson(),
  'transportDetails': instance.transportDetails.toJson(),
  'remittanceDetails': instance.remittanceDetails?.toJson(),
  'lines': instance.lines?.map((e) => e.toJson()).toList(),
  'price': instance.price,
  'haulier': instance.haulier?.toJson(),
  'extendedProperties': instance.extendedProperties,
  'paymentRecord': instance.paymentRecord?.toJson(),
  'isPayableAtEdge': instance.isPayableAtEdge,
  'isPaymentAuthorizationRequired': instance.isPaymentAuthorizationRequired,
  'defaultPaymentMethod': _$PaymentMethodEnumMap[instance.defaultPaymentMethod],
  'paymentValidationResult': instance.paymentValidationResult?.toJson(),
  'paymentDeduction': instance.paymentDeduction?.toJson(),
  'acceptedConsignmentNote': instance.acceptedConsignmentNote?.toJson(),
  'rejectedConsignmentNote': instance.rejectedConsignmentNote?.toJson(),
  'syncWeighbridgeTicketTask': instance.syncWeighbridgeTicketTask?.toJson(),
  'syncWeighbridgeTicketTasks': instance.syncWeighbridgeTicketTasks
      ?.map((e) => e.toJson())
      .toList(),
  'mediaAssets': instance.mediaAssets.map((e) => e.toJson()).toList(),
  'metadata': instance.metadata,
};

const _$TicketCategoryEnumMap = {
  TicketCategory.normal: 'NORMAL',
  TicketCategory.interDepot: 'INTER_DEPOT',
  TicketCategory.merchantTruckTrade: 'MERCHANT_TRUCK_TRADE',
  TicketCategory.trueTruckTrade: 'TRUE_TRUCK_TRADE',
  TicketCategory.interYardTransfer: 'INTER_YARD_TRANSFER',
  TicketCategory.container: 'CONTAINER',
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

const _$TicketTypeEnumMap = {
  TicketType.inwards: 'INWARDS',
  TicketType.outwards: 'OUTWARDS',
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

const _$ServiceTypeEnumMap = {
  ServiceType.collected: 'COLLECTED',
  ServiceType.delivered: 'DELIVERED',
};

AccountIdentification _$AccountIdentificationFromJson(
  Map<String, dynamic> json,
) => AccountIdentification(
  url: json['url'] as String,
  documentTypeID: json['documentTypeID'] as String,
);

Map<String, dynamic> _$AccountIdentificationToJson(
  AccountIdentification instance,
) => <String, dynamic>{
  'url': instance.url,
  'documentTypeID': instance.documentTypeID,
};
