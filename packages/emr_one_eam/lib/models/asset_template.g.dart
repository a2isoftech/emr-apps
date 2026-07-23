// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetTemplate _$AssetTemplateFromJson(Map<String, dynamic> json) =>
    AssetTemplate(
      id: json['id'] as String?,
      active: json['active'] as bool?,
      codeFormat: json['codeFormat'] as String?,
      name: json['name'] as String?,
      permittedHours: json['permittedHours'] as bool?,
      shiftHours: json['shiftHours'] as bool?,
      hierarchy: json['hierarchy'] as bool?,
      parentAssetRequired: json['parentAssetRequired'] as bool?,
      category: json['category'] as String?,
      reviewAttributes: (json['reviewAttributes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      location: json['location'] as bool?,
      telematics: json['telematics'] as bool?,
      notifyChanges: json['notifyChanges'] as bool?,
      syncAssetToCMMS: json['syncAssetToCMMS'] as bool?,
      syncProjectToCMMS: json['syncProjectToCMMS'] as bool?,
      syncResouceToCMMS: json['syncResouceToCMMS'] as bool?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      modifiedBy: json['modifiedBy'] as String?,
      createdBy: json['createdBy'] as String?,
      timeToLive: json['timeToLive'] == null
          ? null
          : DateTime.parse(json['timeToLive'] as String),
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      templateProperties: (json['templateProperties'] as List<dynamic>?)
          ?.map(
              (e) => AssetTemplateProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
      assetTemplateCounters: (json['assetTemplateCounters'] as List<dynamic>?)
          ?.map((e) => AssetTemplateCounter.fromJson(e as Map<String, dynamic>))
          .toList(),
      syncTargets: (json['syncTargets'] as List<dynamic>?)
          ?.map((e) =>
              AssetTemplateSyncTarget.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssetTemplateToJson(AssetTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'codeFormat': instance.codeFormat,
      'name': instance.name,
      'permittedHours': instance.permittedHours,
      'shiftHours': instance.shiftHours,
      'hierarchy': instance.hierarchy,
      'parentAssetRequired': instance.parentAssetRequired,
      'category': instance.category,
      'reviewAttributes': instance.reviewAttributes,
      'location': instance.location,
      'telematics': instance.telematics,
      'notifyChanges': instance.notifyChanges,
      'syncAssetToCMMS': instance.syncAssetToCMMS,
      'syncProjectToCMMS': instance.syncProjectToCMMS,
      'syncResouceToCMMS': instance.syncResouceToCMMS,
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
      'modifiedBy': instance.modifiedBy,
      'createdBy': instance.createdBy,
      'timeToLive': instance.timeToLive?.toIso8601String(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'templateProperties': instance.templateProperties,
      'assetTemplateCounters': instance.assetTemplateCounters,
      'syncTargets': instance.syncTargets,
    };

AssetTemplateProperty _$AssetTemplatePropertyFromJson(
        Map<String, dynamic> json) =>
    AssetTemplateProperty(
      id: json['id'] as String?,
      name: json['name'] as String?,
      dataType: json['dataType'] as String?,
      sequence: (json['sequence'] as num?)?.toInt(),
      isMandatory: json['isMandatory'] as bool?,
      active: json['active'] as bool?,
      viewerGroupIds: (json['viewerGroupIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      updaterGroupIds: (json['updaterGroupIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AssetTemplatePropertyToJson(
        AssetTemplateProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dataType': instance.dataType,
      'sequence': instance.sequence,
      'isMandatory': instance.isMandatory,
      'active': instance.active,
      'viewerGroupIds': instance.viewerGroupIds,
      'updaterGroupIds': instance.updaterGroupIds,
    };

AssetTemplateCounter _$AssetTemplateCounterFromJson(
        Map<String, dynamic> json) =>
    AssetTemplateCounter(
      id: json['id'] as String?,
      groupId: json['groupId'] as String?,
      key: json['key'] as String?,
      name: json['name'] as String?,
      dataType: json['dataType'] as String?,
      incrementType: json['incrementType'] as String?,
      active: json['active'] as bool?,
      triggers: (json['triggers'] as List<dynamic>?)
          ?.map((e) =>
              AssetTemplateCounterTrigger.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssetTemplateCounterToJson(
        AssetTemplateCounter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupId': instance.groupId,
      'key': instance.key,
      'name': instance.name,
      'dataType': instance.dataType,
      'incrementType': instance.incrementType,
      'active': instance.active,
      'triggers': instance.triggers,
    };

AssetTemplateCounterTrigger _$AssetTemplateCounterTriggerFromJson(
        Map<String, dynamic> json) =>
    AssetTemplateCounterTrigger(
      json['id'] as String?,
      (json['valueOffset'] as num?)?.toDouble(),
      json['valueOffsetUnit'] as String?,
      (json['intervalValue'] as num?)?.toDouble(),
      json['intervalUnit'] as String?,
    );

Map<String, dynamic> _$AssetTemplateCounterTriggerToJson(
        AssetTemplateCounterTrigger instance) =>
    <String, dynamic>{
      'id': instance.id,
      'valueOffset': instance.valueOffset,
      'valueOffsetUnit': instance.valueOffsetUnit,
      'intervalValue': instance.intervalValue,
      'intervalUnit': instance.intervalUnit,
    };

AssetTemplateSyncTarget _$AssetTemplateSyncTargetFromJson(
        Map<String, dynamic> json) =>
    AssetTemplateSyncTarget(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$AssetTemplateSyncTargetToJson(
        AssetTemplateSyncTarget instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
