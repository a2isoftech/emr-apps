// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetHistory _$AssetHistoryFromJson(Map<String, dynamic> json) => AssetHistory(
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map(
              (e) => AssetHistoryAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => AssetHistoryUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamps: (json['timestamps'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AssetHistoryToJson(AssetHistory instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'users': instance.users,
      'timestamps': instance.timestamps,
    };

AssetHistoryUser _$AssetHistoryUserFromJson(Map<String, dynamic> json) =>
    AssetHistoryUser(
      id: json['id'] as String,
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$AssetHistoryUserToJson(AssetHistoryUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
    };

AssetHistoryAttribute _$AssetHistoryAttributeFromJson(
        Map<String, dynamic> json) =>
    AssetHistoryAttribute(
      name: json['name'] as String,
      key: json['key'] as String,
      dataType: json['dataType'] as String,
      values: (json['values'] as List<dynamic>)
          .map((e) =>
              AssetHistoryAttributeValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssetHistoryAttributeToJson(
        AssetHistoryAttribute instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key': instance.key,
      'dataType': instance.dataType,
      'values': instance.values,
    };

AssetHistoryAttributeValue _$AssetHistoryAttributeValueFromJson(
        Map<String, dynamic> json) =>
    AssetHistoryAttributeValue(
      text: json['text'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$AssetHistoryAttributeValueToJson(
        AssetHistoryAttributeValue instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };
