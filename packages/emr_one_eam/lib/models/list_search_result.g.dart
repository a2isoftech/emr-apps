// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListSearchResult _$ListSearchResultFromJson(Map<String, dynamic> json) =>
    ListSearchResult(
      id: json['id'] as String?,
      listName: json['listName'] as String?,
      active: json['active'] as bool?,
      isUsedByAssetTemplates: json['isUsedByAssetTemplates'] as bool?,
      listValue: (json['listValue'] as List<dynamic>?)
          ?.map((e) => ListValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListSearchResultToJson(ListSearchResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listName': instance.listName,
      'active': instance.active,
      'isUsedByAssetTemplates': instance.isUsedByAssetTemplates,
      'listValue': instance.listValue,
    };
