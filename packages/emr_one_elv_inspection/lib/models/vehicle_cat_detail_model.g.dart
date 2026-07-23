// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_cat_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleCatDetailModel _$VehicleCatDetailModelFromJson(
        Map<String, dynamic> json) =>
    VehicleCatDetailModel(
      location: json['location'] as String?,
      catClassification: json['catClassification'] as String?,
      serialNumber: json['serialNumber'] as String?,
      sealNumber: json['sealNumber'] as String?,
      catValue: (json['catValue'] as num?)?.toDouble(),
      matchProbability: (json['matchProbability'] as num?)?.toInt(),
      catalyticFill: (json['catalyticFill'] as num?)?.toDouble(),
      imagePath: json['imagePath'] as String?,
      isManual: json['isManual'] as bool? ?? false,
      vehicleCatId: (json['vehicleCatId'] as num?)?.toInt(),
      catId: json['catId'] as String?,
      techemetPriceCountSheetDetailId:
          (json['techemetPriceCountSheetDetailId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VehicleCatDetailModelToJson(
        VehicleCatDetailModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'catClassification': instance.catClassification,
      'serialNumber': instance.serialNumber,
      'sealNumber': instance.sealNumber,
      'catValue': instance.catValue,
      'matchProbability': instance.matchProbability,
      'catalyticFill': instance.catalyticFill,
      'imagePath': instance.imagePath,
      'isManual': instance.isManual,
      'vehicleCatId': instance.vehicleCatId,
      'catId': instance.catId,
      'techemetPriceCountSheetDetailId':
          instance.techemetPriceCountSheetDetailId,
    };
