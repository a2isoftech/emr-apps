// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'non_conforming_part_documents_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NonConformingPartDocumentsModel _$NonConformingPartDocumentsModelFromJson(
        Map<String, dynamic> json) =>
    NonConformingPartDocumentsModel(
      partName: json['partName'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$NonConformingPartDocumentsModelToJson(
        NonConformingPartDocumentsModel instance) =>
    <String, dynamic>{
      'partName': instance.partName,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'path': instance.path,
    };
