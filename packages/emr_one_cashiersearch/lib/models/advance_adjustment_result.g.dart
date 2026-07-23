// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advance_adjustment_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvanceAdjustmentResult _$AdvanceAdjustmentResultFromJson(
  Map<String, dynamic> json,
) => AdvanceAdjustmentResult(
  totalOffset: (json['totalOffset'] as num).toDouble(),
  advanceAmountBreakup:
      (json['advanceAmountBreakup'] as List<dynamic>?)
          ?.map((e) => AdvanceUsage.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$AdvanceAdjustmentResultToJson(
  AdvanceAdjustmentResult instance,
) => <String, dynamic>{
  'totalOffset': instance.totalOffset,
  'advanceAmountBreakup': instance.advanceAmountBreakup
      .map((e) => e.toJson())
      .toList(),
};
