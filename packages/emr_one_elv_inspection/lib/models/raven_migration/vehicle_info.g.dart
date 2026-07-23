// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleInfo _$VehicleInfoFromJson(Map<String, dynamic> json) => VehicleInfo(
      detail: VehicleDetail.fromJson(json['detail'] as Map<String, dynamic>),
      documents:
          VehicleDocument.fromJson(json['documents'] as Map<String, dynamic>),
      configuration: VehicleConfiguration.fromJson(
          json['configuration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleInfoToJson(VehicleInfo instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'documents': instance.documents,
      'configuration': instance.configuration,
    };
