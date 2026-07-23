// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerDetail _$CustomerDetailFromJson(Map<String, dynamic> json) =>
    CustomerDetail(
      json['customerName'] as String,
      json['customerCode'] as String,
      json['locationCode'] as String?,
      json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerDetailToJson(CustomerDetail instance) =>
    <String, dynamic>{
      'customerName': instance.customerName,
      'customerCode': instance.customerCode,
      'locationCode': instance.locationCode,
      'address': instance.address,
    };
