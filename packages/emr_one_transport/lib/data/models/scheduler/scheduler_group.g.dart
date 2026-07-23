// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchedulerGroup _$SchedulerGroupFromJson(Map<String, dynamic> json) =>
    SchedulerGroup(
      groupBy: $enumDecode(_$SchedulerTruckGroupByEnumMap, json['groupBy']),
      groupTitle: json['groupTitle'] as String,
      groupSubTitle: json['groupSubTitle'] as String,
      trucks: (json['trucks'] as List<dynamic>)
          .map((e) => SchedulerTruck.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SchedulerGroupToJson(SchedulerGroup instance) =>
    <String, dynamic>{
      'groupTitle': instance.groupTitle,
      'groupSubTitle': instance.groupSubTitle,
      'groupBy': _$SchedulerTruckGroupByEnumMap[instance.groupBy]!,
      'trucks': instance.trucks,
    };

const _$SchedulerTruckGroupByEnumMap = {
  SchedulerTruckGroupBy.yard: 'Yard',
  SchedulerTruckGroupBy.haulier: 'Haulier',
};
