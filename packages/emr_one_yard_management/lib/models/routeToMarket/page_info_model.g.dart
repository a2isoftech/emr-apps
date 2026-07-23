// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageInfoModel _$PageInfoModelFromJson(Map<String, dynamic> json) =>
    PageInfoModel(
      hasNextPage: json['hasNextPage'] as bool,
      hasPreviousPage: json['hasPreviousPage'] as bool,
      startCursor: json['startCursor'] as String,
      endCursor: json['endCursor'] as String,
    );

Map<String, dynamic> _$PageInfoModelToJson(PageInfoModel instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'startCursor': instance.startCursor,
      'endCursor': instance.endCursor,
    };
