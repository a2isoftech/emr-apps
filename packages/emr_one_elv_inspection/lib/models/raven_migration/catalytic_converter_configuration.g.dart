// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalytic_converter_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalyticConverterConfiguration _$CatalyticConverterConfigurationFromJson(
        Map<String, dynamic> json) =>
    CatalyticConverterConfiguration(
      partKey: json['partKey'] as String,
      partInfo: PartInfo.fromJson(json['partInfo'] as Map<String, dynamic>),
      partPhotos: (json['partPhotos'] as List<dynamic>)
          .map((e) => MediaAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
      techemetCatId: json['techemetCatId'] as String,
      classification: catalyticConverterClassificationEnumFromJson(
          json['classification'] as String),
      techemetCat: json['techemetCat'] == null
          ? null
          : TechemetCatalyticConverter.fromJson(
              json['techemetCat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalyticConverterConfigurationToJson(
        CatalyticConverterConfiguration instance) =>
    <String, dynamic>{
      'partKey': instance.partKey,
      'partInfo': instance.partInfo,
      'partPhotos': instance.partPhotos,
      'techemetCatId': instance.techemetCatId,
      'classification':
          catalyticConverterClassificationEnumToJson(instance.classification),
      'techemetCat': instance.techemetCat,
    };
