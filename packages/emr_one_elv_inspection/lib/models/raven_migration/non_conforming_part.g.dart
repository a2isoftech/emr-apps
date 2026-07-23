// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'non_conforming_part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NonConformingPart _$NonConformingPartFromJson(Map<String, dynamic> json) =>
    NonConformingPart(
      partKey: json['partKey'] as String,
      partName: nonConformingPartEnumFromJson(json['partName'] as String),
      partPhotos: (json['partPhotos'] as List<dynamic>)
          .map((e) => MediaAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NonConformingPartToJson(NonConformingPart instance) =>
    <String, dynamic>{
      'partKey': instance.partKey,
      'partName': nonConformingPartEnumToJson(instance.partName),
      'partPhotos': instance.partPhotos,
    };
