// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tech_cat_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TechCatSearchModel _$TechCatSearchModelFromJson(Map<String, dynamic> json) =>
    TechCatSearchModel(
      converterValue: (json['converterValue'] as num).toDouble(),
      serialNumber: json['serialNumber'] as String,
      engineSizeMatch: (json['engineSizeMatch'] as num).toInt(),
      horsePowerMatch: (json['horsePowerMatch'] as num).toInt(),
      fuelTypeMatch: (json['fuelTypeMatch'] as num).toInt(),
      matchingProbability: (json['matchingProbability'] as num).toInt(),
      techemetPriceCountSheetDetailId:
          (json['techemetPriceCountSheetDetailId'] as num?)?.toInt(),
      catalyticFill: (json['catalyticFill'] as num?)?.toDouble(),
      sid: (json['sid'] as num?)?.toInt(),
      variantMatch: (json['variantMatch'] as num?)?.toInt(),
      unitCost: (json['unitCost'] as num?)?.toDouble(),
      unitCostPaid: (json['unitCostPaid'] as num?)?.toDouble(),
      id: json['id'] as String?,
      catLocation: json['catLocation'] as String?,
      catClassification: json['catClassification'] as String?,
      sealNo: json['sealNo'] as String?,
      isSelected: _$JsonConverterFromJson<bool, ValueNotifier<bool>>(
          json['isSelected'], const BoolNotifierConverter().fromJson),
      isManual: json['isManual'] as bool? ?? false,
      vehicleCatId: (json['vehicleCatId'] as num?)?.toInt(),
      make: json['make'] as String?,
      model: json['model'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$TechCatSearchModelToJson(TechCatSearchModel instance) =>
    <String, dynamic>{
      'converterValue': instance.converterValue,
      'serialNumber': instance.serialNumber,
      'engineSizeMatch': instance.engineSizeMatch,
      'horsePowerMatch': instance.horsePowerMatch,
      'fuelTypeMatch': instance.fuelTypeMatch,
      'matchingProbability': instance.matchingProbability,
      'catalyticFill': instance.catalyticFill,
      'sid': instance.sid,
      'variantMatch': instance.variantMatch,
      'unitCost': instance.unitCost,
      'unitCostPaid': instance.unitCostPaid,
      'id': instance.id,
      'catLocation': instance.catLocation,
      'catClassification': instance.catClassification,
      'sealNo': instance.sealNo,
      'isSelected': const BoolNotifierConverter().toJson(instance.isSelected),
      'isManual': instance.isManual,
      'vehicleCatId': instance.vehicleCatId,
      'make': instance.make,
      'model': instance.model,
      'image': instance.image,
      'techemetPriceCountSheetDetailId':
          instance.techemetPriceCountSheetDetailId,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
