// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_lookup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatLookupModel _$CatLookupModelFromJson(Map<String, dynamic> json) =>
    CatLookupModel(
      techemetFoundNoResults: json['techemetFoundNoResults'] as bool,
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : TechCatDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatLookupModelToJson(CatLookupModel instance) =>
    <String, dynamic>{
      'techemetFoundNoResults': instance.techemetFoundNoResults,
      'success': instance.success,
      'data': instance.data,
    };
