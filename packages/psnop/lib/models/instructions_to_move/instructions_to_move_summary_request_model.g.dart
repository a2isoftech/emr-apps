// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructions_to_move_summary_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstructionsToMoveSummaryRequestModel
    _$InstructionsToMoveSummaryRequestModelFromJson(
            Map<String, dynamic> json) =>
        InstructionsToMoveSummaryRequestModel(
          depotNos: (json['depotNos'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          grades: (json['grades'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          startDate: DateTime.parse(json['startDate'] as String),
          endDate: DateTime.parse(json['endDate'] as String),
        );

Map<String, dynamic> _$InstructionsToMoveSummaryRequestModelToJson(
        InstructionsToMoveSummaryRequestModel instance) =>
    <String, dynamic>{
      'depotNos': instance.depotNos,
      'grades': instance.grades,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
