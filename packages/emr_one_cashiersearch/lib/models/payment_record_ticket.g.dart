// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_record_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentRecordTicket _$PaymentRecordTicketFromJson(Map<String, dynamic> json) =>
    PaymentRecordTicket(
      account: json['account'] == null
          ? null
          : TicketAccount.fromJson(json['account'] as Map<String, dynamic>),
      id: json['id'] as String?,
      currency: json['currency'] as String?,
      ticketNumber: (json['ticketNumber'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      provPrice: (json['provPrice'] as num?)?.toDouble(),
      yardCode: json['yardCode'] as String?,
    );

Map<String, dynamic> _$PaymentRecordTicketToJson(
  PaymentRecordTicket instance,
) => <String, dynamic>{
  'account': instance.account?.toJson(),
  'id': instance.id,
  'currency': instance.currency,
  'ticketNumber': instance.ticketNumber,
  'price': instance.price,
  'provPrice': instance.provPrice,
  'yardCode': instance.yardCode,
};
