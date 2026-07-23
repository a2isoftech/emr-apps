// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchedulerState _$SchedulerStateFromJson(Map<String, dynamic> json) =>
    SchedulerState(
      filter: SchedulerFilter.fromJson(json['filter'] as Map<String, dynamic>),
      showUnScheduledJobs: json['showUnScheduledJobs'] as bool,
      selectedDate: DateTime.parse(json['selectedDate'] as String),
      createdDate: DateTime.parse(json['createdDate'] as String),
      is24HrFormat: json['is24HrFormat'] as bool,
      unscheduledJobSearchTerm:
          json['unscheduledJobSearchTerm'] as String? ?? '',
      unscheduledJobSortAscending:
          json['unscheduledJobSortAscending'] as bool? ?? true,
      collapsedYards: (json['collapsedYards'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SchedulerStateToJson(SchedulerState instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'showUnScheduledJobs': instance.showUnScheduledJobs,
      'selectedDate': instance.selectedDate.toIso8601String(),
      'unscheduledJobSearchTerm': instance.unscheduledJobSearchTerm,
      'unscheduledJobSortAscending': instance.unscheduledJobSortAscending,
      'createdDate': instance.createdDate.toIso8601String(),
      'collapsedYards': instance.collapsedYards,
      'is24HrFormat': instance.is24HrFormat,
    };
