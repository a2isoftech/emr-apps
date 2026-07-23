// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_job_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenJobReport _$OpenJobReportFromJson(Map<String, dynamic> json) =>
    OpenJobReport(
      haulierCodes: (json['haulierCodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      isHaulageRateIncluded: json['isHaulageRateIncluded'] as bool,
      isFuelSurchargeIncluded: json['isFuelSurchargeIncluded'] as bool,
      regionIds: (json['regionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$OpenJobReportToJson(OpenJobReport instance) =>
    <String, dynamic>{
      'haulierCodes': instance.haulierCodes,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'isHaulageRateIncluded': instance.isHaulageRateIncluded,
      'isFuelSurchargeIncluded': instance.isFuelSurchargeIncluded,
      'regionIds': instance.regionIds,
    };
