// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationInfo _$LocationInfoFromJson(Map<String, dynamic> json) => LocationInfo(
      code: json['code'] as String?,
      name: json['name'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      description: json['description'] as String?,
      active: json['active'] as bool?,
      sitePermitHolder: json['sitePermitHolder'] as bool?,
      sitePermitOrExemptionNumber:
          json['sitePermitOrExemptionNumber'] as String?,
    );

Map<String, dynamic> _$LocationInfoToJson(LocationInfo instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'address': instance.address,
      'description': instance.description,
      'active': instance.active,
      'sitePermitHolder': instance.sitePermitHolder,
      'sitePermitOrExemptionNumber': instance.sitePermitOrExemptionNumber,
    };
