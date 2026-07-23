// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleDocument _$VehicleDocumentFromJson(Map<String, dynamic> json) =>
    VehicleDocument(
      frontPhoto: json['frontPhoto'] == null
          ? null
          : MediaAsset.fromJson(json['frontPhoto'] as Map<String, dynamic>),
      rearPhoto: json['rearPhoto'] == null
          ? null
          : MediaAsset.fromJson(json['rearPhoto'] as Map<String, dynamic>),
      vinPhoto: json['vinPhoto'] == null
          ? null
          : MediaAsset.fromJson(json['vinPhoto'] as Map<String, dynamic>),
      v5LogBook: json['v5LogBook'] == null
          ? null
          : MediaAsset.fromJson(json['v5LogBook'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleDocumentToJson(VehicleDocument instance) =>
    <String, dynamic>{
      'frontPhoto': instance.frontPhoto,
      'rearPhoto': instance.rearPhoto,
      'vinPhoto': instance.vinPhoto,
      'v5LogBook': instance.v5LogBook,
    };
