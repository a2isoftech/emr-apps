import 'package:json_annotation/json_annotation.dart';

part 'asset_template.g.dart';

@JsonSerializable()
class AssetTemplate {
  AssetTemplate({
    this.id,
    this.active,
    this.codeFormat,
    this.name,
    this.permittedHours,
    this.shiftHours,
    this.hierarchy,
    this.parentAssetRequired,
    this.category,
    this.reviewAttributes,
    this.location,
    this.telematics,
    this.notifyChanges,
    this.syncAssetToCMMS,
    this.syncProjectToCMMS,
    this.syncResouceToCMMS,
    this.created,
    this.modified,
    this.modifiedBy,
    this.createdBy,
    this.timeToLive,
    this.timestamp,
    this.templateProperties,
    this.assetTemplateCounters,
    this.syncTargets,
  });

  factory AssetTemplate.fromJson(Map<String, dynamic> json) =>
      _$AssetTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$AssetTemplateToJson(this);

  String? id;
  bool? active;
  String? codeFormat;
  String? name;
  bool? permittedHours;
  bool? shiftHours;
  bool? hierarchy;
  bool? parentAssetRequired;
  String? category;
  List<String>? reviewAttributes;
  bool? location;
  bool? telematics;
  bool? notifyChanges;
  bool? syncAssetToCMMS;
  bool? syncProjectToCMMS;
  bool? syncResouceToCMMS;
  DateTime? created;
  DateTime? modified;
  String? modifiedBy;
  String? createdBy;
  DateTime? timeToLive;
  DateTime? timestamp;
  List<AssetTemplateProperty>? templateProperties;
  List<AssetTemplateCounter>? assetTemplateCounters;
  List<AssetTemplateSyncTarget>? syncTargets;
}

@JsonSerializable()
class AssetTemplateProperty {
  AssetTemplateProperty({
    this.id,
    this.name,
    this.dataType,
    this.sequence,
    this.isMandatory,
    this.active,
    this.viewerGroupIds,
    this.updaterGroupIds,
  });

  factory AssetTemplateProperty.fromJson(Map<String, dynamic> json) =>
      _$AssetTemplatePropertyFromJson(json);

  Map<String, dynamic> toJson() => _$AssetTemplatePropertyToJson(this);

  String? id;
  String? name;
  String? dataType;
  int? sequence;
  bool? isMandatory;
  bool? active;
  List<String>? viewerGroupIds;
  List<String>? updaterGroupIds;
}

@JsonSerializable()
class AssetTemplateCounter {
  AssetTemplateCounter({
    this.id,
    this.groupId,
    this.key,
    this.name,
    this.dataType,
    this.incrementType,
    this.active,
    this.triggers,
  });

  factory AssetTemplateCounter.fromJson(Map<String, dynamic> json) =>
      _$AssetTemplateCounterFromJson(json);

  Map<String, dynamic> toJson() => _$AssetTemplateCounterToJson(this);

  String? id;
  String? groupId;
  String? key;
  String? name;
  String? dataType;
  String? incrementType;
  bool? active;
  List<AssetTemplateCounterTrigger>? triggers;
}

@JsonSerializable()
class AssetTemplateCounterTrigger {
  AssetTemplateCounterTrigger(
    this.id,
    this.valueOffset,
    this.valueOffsetUnit,
    this.intervalValue,
    this.intervalUnit,
  );

  factory AssetTemplateCounterTrigger.fromJson(Map<String, dynamic> json) =>
      _$AssetTemplateCounterTriggerFromJson(json);

  Map<String, dynamic> toJson() => _$AssetTemplateCounterTriggerToJson(this);

  String? id;
  double? valueOffset;
  String? valueOffsetUnit;
  double? intervalValue;
  String? intervalUnit;
}

@JsonSerializable()
class AssetTemplateSyncTarget {
  AssetTemplateSyncTarget({this.name});

  factory AssetTemplateSyncTarget.fromJson(Map<String, dynamic> json) =>
      _$AssetTemplateSyncTargetFromJson(json);

  Map<String, dynamic> toJson() => _$AssetTemplateSyncTargetToJson(this);

  String? name;
}
