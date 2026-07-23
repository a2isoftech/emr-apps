// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerDetails _$CustomerDetailsFromJson(Map<String, dynamic> json) =>
    CustomerDetails(
      code: json['code'] as String?,
      name: json['name'] as String?,
      sicCode: json['sicCode'] as String?,
    );

Map<String, dynamic> _$CustomerDetailsToJson(CustomerDetails instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'sicCode': instance.sicCode,
    };
