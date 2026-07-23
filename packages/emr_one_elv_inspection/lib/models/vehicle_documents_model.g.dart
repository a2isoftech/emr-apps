// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_documents_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleDocumentsModel _$VehicleDocumentsModelFromJson(
        Map<String, dynamic> json) =>
    VehicleDocumentsModel(
      imageType: json['imageType'] as String,
      path: json['path'] as String?,
      documentType: json['documentType'] as String?,
      documentSubType: json['documentSubType'] as String?,
    );

Map<String, dynamic> _$VehicleDocumentsModelToJson(
        VehicleDocumentsModel instance) =>
    <String, dynamic>{
      'imageType': instance.imageType,
      'path': instance.path,
      'documentType': instance.documentType,
      'documentSubType': instance.documentSubType,
    };
