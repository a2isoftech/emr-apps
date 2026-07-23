// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      customerName: json['customerName'] as String?,
      customerCode: json['customerCode'] as String?,
      locationName: json['locationName'] as String?,
      locationCode: json['locationCode'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      countryCode: json['countryCode'] as String?,
      postalCode: json['postalCode'] as String?,
      sicCode: json['sicCode'] as String?,
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'customerName': instance.customerName,
      'customerCode': instance.customerCode,
      'locationName': instance.locationName,
      'locationCode': instance.locationCode,
      'address': instance.address,
      'countryCode': instance.countryCode,
      'postalCode': instance.postalCode,
      'sicCode': instance.sicCode,
    };
