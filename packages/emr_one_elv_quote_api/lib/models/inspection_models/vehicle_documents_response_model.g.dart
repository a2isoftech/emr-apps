// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_documents_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleDocumentsResponseModel _$VehicleDocumentsResponseModelFromJson(
        Map<String, dynamic> json) =>
    VehicleDocumentsResponseModel(
      imageType: json['imageType'] as String,
      documentType: const VerificationTypeDocumentConverter()
          .fromJson(json['documentType'] as String),
      documentSubType: const VerificationSubTypeDocumentConverter()
          .fromJson(json['documentSubType'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$VehicleDocumentsResponseModelToJson(
        VehicleDocumentsResponseModel instance) =>
    <String, dynamic>{
      'imageType': instance.imageType,
      'documentType': const VerificationTypeDocumentConverter()
          .toJson(instance.documentType),
      'documentSubType': const VerificationSubTypeDocumentConverter()
          .toJson(instance.documentSubType),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'path': instance.path,
    };
