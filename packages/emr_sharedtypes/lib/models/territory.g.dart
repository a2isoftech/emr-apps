// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'territory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Territory _$TerritoryFromJson(Map<String, dynamic> json) => Territory(
      json['code'] as String,
      json['name'] as String,
      (json['depots'] as List<dynamic>?)
          ?.map((e) => Depot.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      active: json['active'] as bool?,
      uomId: (json['uomId'] as num?)?.toInt(),
      currencyCode: json['currencyCode'] as String?,
      defaultCompanyId: json['defaultCompanyId'] as String?,
      defaultCompany: json['defaultCompany'] == null
          ? null
          : Company.fromJson(json['defaultCompany'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TerritoryToJson(Territory instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'depots': instance.depots,
      'active': instance.active,
      'defaultCompanyId': instance.defaultCompanyId,
      'uomId': instance.uomId,
      'currencyCode': instance.currencyCode,
      'defaultCompany': instance.defaultCompany,
    };
