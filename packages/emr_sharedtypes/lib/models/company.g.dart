// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      id: json['id'] as String,
      code: json['code'] as String? ?? '',
      shortName: json['shortName'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      territoryCode: json['territoryCode'] as String? ?? '',
      territoryId: json['territoryId'] as String? ?? '',
      territory: json['territory'] == null
          ? null
          : Territory.fromJson(json['territory'] as Map<String, dynamic>),
      active: json['active'] as bool? ?? true,
      chequeSignatures: (json['chequeSignatures'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      valueRequiredForTwoSignaturesOnCheque:
          (json['valueRequiredForTwoSignaturesOnCheque'] as num?)?.toDouble() ??
              999999,
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'code': instance.code,
      'shortName': instance.shortName,
      'fullName': instance.fullName,
      'territoryCode': instance.territoryCode,
      'territoryId': instance.territoryId,
      'territory': instance.territory,
      'chequeSignatures': instance.chequeSignatures,
      'valueRequiredForTwoSignaturesOnCheque':
          instance.valueRequiredForTwoSignaturesOnCheque,
    };
