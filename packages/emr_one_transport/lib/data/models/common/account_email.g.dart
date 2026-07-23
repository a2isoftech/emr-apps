// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_email.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountEmail _$AccountEmailFromJson(Map<String, dynamic> json) => AccountEmail(
      code: json['code'] as String,
      contactName: json['contactName'] as String,
      email: json['email'] as String,
      contactType: json['contactType'] as String,
    );

Map<String, dynamic> _$AccountEmailToJson(AccountEmail instance) =>
    <String, dynamic>{
      'code': instance.code,
      'contactName': instance.contactName,
      'email': instance.email,
      'contactType': instance.contactType,
    };
