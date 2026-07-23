// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_yard_report_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendYardReportRequest _$SendYardReportRequestFromJson(
        Map<String, dynamic> json) =>
    SendYardReportRequest(
      startDateUtc: DateTime.parse(json['startDateUtc'] as String),
      endDateUtc: DateTime.parse(json['endDateUtc'] as String),
      emailTo:
          (json['emailTo'] as List<dynamic>).map((e) => e as String).toList(),
      yardCodes:
          (json['yardCodes'] as List<dynamic>).map((e) => e as String).toList(),
      ccCurrentUser: json['ccCurrentUser'] as bool,
    );

Map<String, dynamic> _$SendYardReportRequestToJson(
        SendYardReportRequest instance) =>
    <String, dynamic>{
      'startDateUtc': instance.startDateUtc.toIso8601String(),
      'endDateUtc': instance.endDateUtc.toIso8601String(),
      'emailTo': instance.emailTo,
      'yardCodes': instance.yardCodes,
      'ccCurrentUser': instance.ccCurrentUser,
    };
