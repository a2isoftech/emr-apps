// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_range_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateRangeValue _$DateRangeValueFromJson(Map<String, dynamic> json) =>
    DateRangeValue(
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$DateRangeValueToJson(DateRangeValue instance) =>
    <String, dynamic>{
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };
