// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketAccount _$TicketAccountFromJson(Map<String, dynamic> json) =>
    TicketAccount()
      ..accountNumber = json['accountNumber'] as String
      ..name = json['name'] as String;

Map<String, dynamic> _$TicketAccountToJson(TicketAccount instance) =>
    <String, dynamic>{
      'accountNumber': instance.accountNumber,
      'name': instance.name,
    };
