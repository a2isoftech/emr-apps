// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionDetails _$InspectionDetailsFromJson(Map<String, dynamic> json) =>
    InspectionDetails(
      inspectionMedia: (json['inspectionMedia'] as List<dynamic>)
          .map((e) => InventoryMediaAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InspectionDetailsToJson(InspectionDetails instance) =>
    <String, dynamic>{'inspectionMedia': instance.inspectionMedia};
