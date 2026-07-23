// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_cat_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleCatDetailResponseModel _$VehicleCatDetailResponseModelFromJson(
        Map<String, dynamic> json) =>
    VehicleCatDetailResponseModel(
      location: json['location'] as String,
      catClassification: json['catClassification'] as String,
      catValue: (json['catValue'] as num).toDouble(),
      isManual: json['isManual'] as bool,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      vehicleCatId: (json['vehicleCatId'] as num?)?.toInt(),
      serialNumber: json['serialNumber'] as String?,
      sealNumber: json['sealNumber'] as String?,
      matchProbability: (json['matchProbability'] as num?)?.toInt(),
      catalyticFill: (json['catalyticFill'] as num?)?.toDouble(),
      imagePath: json['imagePath'] as String?,
      catId: json['catId'] as String?,
    );

Map<String, dynamic> _$VehicleCatDetailResponseModelToJson(
        VehicleCatDetailResponseModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'catClassification': instance.catClassification,
      'catValue': instance.catValue,
      'isManual': instance.isManual,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'vehicleCatId': instance.vehicleCatId,
      'serialNumber': instance.serialNumber,
      'sealNumber': instance.sealNumber,
      'matchProbability': instance.matchProbability,
      'catalyticFill': instance.catalyticFill,
      'imagePath': instance.imagePath,
      'catId': instance.catId,
    };
