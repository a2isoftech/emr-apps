// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advance_usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvanceUsage _$AdvanceUsageFromJson(Map<String, dynamic> json) => AdvanceUsage(
  advanceId: json['advanceId'] as String,
  advanceAmountBeforeOffset: (json['advanceAmountBeforeOffset'] as num)
      .toDouble(),
  applicableOffset: (json['applicableOffset'] as num).toDouble(),
  advanceAmountAfterOffset: (json['advanceAmountAfterOffset'] as num)
      .toDouble(),
  details: json['details'] == null
      ? null
      : Advance.fromJson(json['details'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdvanceUsageToJson(AdvanceUsage instance) =>
    <String, dynamic>{
      'advanceId': instance.advanceId,
      'advanceAmountBeforeOffset': instance.advanceAmountBeforeOffset,
      'applicableOffset': instance.applicableOffset,
      'advanceAmountAfterOffset': instance.advanceAmountAfterOffset,
      'details': instance.details?.toJson(),
    };
