// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'part_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartInfo _$PartInfoFromJson(Map<String, dynamic> json) => PartInfo(
      partType: partTypeFromJson(json['partType'] as String),
      partLocation: partLocationFromJson(json['partLocation'] as String),
    );

Map<String, dynamic> _$PartInfoToJson(PartInfo instance) => <String, dynamic>{
      'partType': partTypeToJson(instance.partType),
      'partLocation': partLocationToJson(instance.partLocation),
    };
