// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_loads_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveLoadsModel _$LiveLoadsModelFromJson(Map<String, dynamic> json) =>
    LiveLoadsModel(
      direction: json['direction'] as String,
      scheduledDate: DateTime.parse(json['scheduledDate'] as String),
      type: json['type'] as String,
      haulierName: json['haulierName'] as String,
      jobNumber: (json['jobNumber'] as num).toInt(),
      customerLocation: json['customerLocation'] as String,
      planned: json['planned'] as String?,
      instruction: json['instruction'] as String?,
      actual: json['actual'] as String?,
      remaining: json['remaining'] as String?,
      status: json['status'] as String,
      statusOrder: (json['statusOrder'] as num).toInt(),
      statusId: (json['statusId'] as num).toInt(),
      fromYardCode: json['fromYardCode'] as String,
      toYardCode: json['toYardCode'] as String,
      duration: (json['duration'] as num).toDouble(),
    );

Map<String, dynamic> _$LiveLoadsModelToJson(LiveLoadsModel instance) =>
    <String, dynamic>{
      'direction': instance.direction,
      'scheduledDate': instance.scheduledDate.toIso8601String(),
      'type': instance.type,
      'haulierName': instance.haulierName,
      'jobNumber': instance.jobNumber,
      'customerLocation': instance.customerLocation,
      'planned': instance.planned,
      'instruction': instance.instruction,
      'actual': instance.actual,
      'remaining': instance.remaining,
      'status': instance.status,
      'statusOrder': instance.statusOrder,
      'statusId': instance.statusId,
      'fromYardCode': instance.fromYardCode,
      'toYardCode': instance.toYardCode,
      'duration': instance.duration,
    };
