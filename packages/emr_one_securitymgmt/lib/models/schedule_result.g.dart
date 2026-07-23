// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmScheduleResult _$SmScheduleResultFromJson(Map<String, dynamic> json) =>
    SmScheduleResult(
      json['scheduleId'] as String,
      json['availabilityView'] as String,
      (json['scheduleItems'] as List<dynamic>)
          .map((e) => SmScheduleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFaulted: json['isFaulted'] as bool? ?? false,
    );

Map<String, dynamic> _$SmScheduleResultToJson(SmScheduleResult instance) =>
    <String, dynamic>{
      'scheduleId': instance.scheduleId,
      'availabilityView': instance.availabilityView,
      'scheduleItems': instance.scheduleItems,
      'isFaulted': instance.isFaulted,
    };
