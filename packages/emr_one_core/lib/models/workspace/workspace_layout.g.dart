// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_layout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkspaceLayout _$WorkspaceLayoutFromJson(Map<String, dynamic> json) =>
    WorkspaceLayout(
      layoutType:
          $enumDecodeNullable(_$LayoutTypeEnumMap, json['layoutType']) ??
              LayoutType.grid,
      title: json['title'] as String? ?? 'Blank',
    );

Map<String, dynamic> _$WorkspaceLayoutToJson(WorkspaceLayout instance) =>
    <String, dynamic>{
      'layoutType': _$LayoutTypeEnumMap[instance.layoutType]!,
      'title': instance.title,
    };

const _$LayoutTypeEnumMap = {
  LayoutType.grid: 'grid',
  LayoutType.single: 'single',
  LayoutType.wrap: 'wrap',
};
