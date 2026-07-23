// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tech_cat_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TechCatDataModel _$TechCatDataModelFromJson(Map<String, dynamic> json) =>
    TechCatDataModel(
      make: json['make'] as String,
      model: json['model'] as String,
      year: (json['year'] as num).toInt(),
      variant: json['variant'] as String,
      engineSize: (json['engineSize'] as num).toDouble(),
      horsePower: (json['horsePower'] as num).toDouble(),
      fuelType: json['fuelType'] as String,
      currencyLong: json['currencyLong'] as String,
      currencyShort: json['currencyShort'] as String,
      searchReturn: (json['searchReturn'] as List<dynamic>)
          .map((e) => TechCatSearchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TechCatDataModelToJson(TechCatDataModel instance) =>
    <String, dynamic>{
      'make': instance.make,
      'model': instance.model,
      'year': instance.year,
      'variant': instance.variant,
      'engineSize': instance.engineSize,
      'horsePower': instance.horsePower,
      'fuelType': instance.fuelType,
      'currencyLong': instance.currencyLong,
      'currencyShort': instance.currencyShort,
      'searchReturn': instance.searchReturn,
    };
