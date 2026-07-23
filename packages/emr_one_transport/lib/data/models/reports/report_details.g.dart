// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportDetails _$ReportDetailsFromJson(Map<String, dynamic> json) =>
    ReportDetails(
      json['id'] as String,
      json['reportName'] as String,
      json['displayName'] as String,
      json['reportUrl'] as String,
    );

Map<String, dynamic> _$ReportDetailsToJson(ReportDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reportName': instance.reportName,
      'displayName': instance.displayName,
      'reportUrl': instance.reportUrl,
    };
