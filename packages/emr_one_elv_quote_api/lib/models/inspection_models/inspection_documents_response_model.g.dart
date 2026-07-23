// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_documents_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionDocumentsResponseModel _$InspectionDocumentsResponseModelFromJson(
        Map<String, dynamic> json) =>
    InspectionDocumentsResponseModel(
      documents: (json['documents'] as List<dynamic>)
          .map((e) =>
              VehicleDocumentsResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      vehicleCats: (json['vehicleCats'] as List<dynamic>)
          .map((e) =>
              VehicleCatDetailResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      nonConformingParts: (json['nonConformingParts'] as List<dynamic>)
          .map((e) => NonConformingPartDocumentsModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      vehicleId: (json['vehicleId'] as num?)?.toInt(),
      vehicleReg: json['vehicleReg'] as String?,
      vin: json['vin'] as String?,
    );

Map<String, dynamic> _$InspectionDocumentsResponseModelToJson(
        InspectionDocumentsResponseModel instance) =>
    <String, dynamic>{
      'documents': instance.documents,
      'vehicleCats': instance.vehicleCats,
      'nonConformingParts': instance.nonConformingParts,
      'vehicleId': instance.vehicleId,
      'vehicleReg': instance.vehicleReg,
      'vin': instance.vin,
    };
