// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'techemat_manual_cats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TechematManualCatsModel _$TechematManualCatsModelFromJson(
        Map<String, dynamic> json) =>
    TechematManualCatsModel(
      id: json['id'] as String,
      fill: (json['fill'] as num).toDouble(),
      active: json['active'] as bool,
      unitCost: (json['unitCost'] as num).toDouble(),
      unitCostPaid: (json['unitCostPaid'] as num).toDouble(),
      make: json['make'] as String,
      model: json['model'] as String,
      serial: json['serial'] as String,
      sealNo: json['sealNo'] as String,
      extendedProperties: json['extendedProperties'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$TechematManualCatsModelToJson(
        TechematManualCatsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fill': instance.fill,
      'active': instance.active,
      'unitCost': instance.unitCost,
      'unitCostPaid': instance.unitCostPaid,
      'make': instance.make,
      'model': instance.model,
      'serial': instance.serial,
      'sealNo': instance.sealNo,
      'extendedProperties': instance.extendedProperties,
    };
