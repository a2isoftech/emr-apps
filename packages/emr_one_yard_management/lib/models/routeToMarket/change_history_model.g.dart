// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeHistoryModel _$ChangeHistoryModelFromJson(Map<String, dynamic> json) =>
    ChangeHistoryModel(
      changeHistoryId: (json['changeHistoryId'] as num).toInt(),
      tableName: json['tableName'] as String?,
      tableFriendlyName: json['tableFriendlyName'] as String?,
      columnName: json['columnName'] as String?,
      columnFriendlyName: json['columnFriendlyName'] as String?,
      modifiedDate: json['modifiedDate'] == null
          ? null
          : DateTime.parse(json['modifiedDate'] as String),
      oldValue: json['oldValue'] as String?,
      newValue: json['newValue'] as String?,
      rowChangedId: (json['rowChangedId'] as num?)?.toInt(),
      userName: json['userName'] as String?,
    );

Map<String, dynamic> _$ChangeHistoryModelToJson(ChangeHistoryModel instance) =>
    <String, dynamic>{
      'changeHistoryId': instance.changeHistoryId,
      'tableName': instance.tableName,
      'tableFriendlyName': instance.tableFriendlyName,
      'columnName': instance.columnName,
      'columnFriendlyName': instance.columnFriendlyName,
      'modifiedDate': instance.modifiedDate?.toIso8601String(),
      'oldValue': instance.oldValue,
      'newValue': instance.newValue,
      'rowChangedId': instance.rowChangedId,
      'userName': instance.userName,
    };
