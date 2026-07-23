// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lot_ticketinfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketInfo _$TicketInfoFromJson(Map<String, dynamic> json) => TicketInfo(
      ticketId: json['ticketId'] as String,
      ticketNumber: (json['ticketNumber'] as num).toInt(),
      yardCode: json['yardCode'] as String,
      partyAccountNo: json['partyAccountNo'] as String,
      partyName: json['partyName'] as String,
      vehicleRegNo: json['vehicleRegNo'] as String?,
      ticketDate: DateTime.parse(json['ticketDate'] as String),
    );

Map<String, dynamic> _$TicketInfoToJson(TicketInfo instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'ticketNumber': instance.ticketNumber,
      'yardCode': instance.yardCode,
      'partyAccountNo': instance.partyAccountNo,
      'partyName': instance.partyName,
      'vehicleRegNo': instance.vehicleRegNo,
      'ticketDate': instance.ticketDate.toIso8601String(),
    };
