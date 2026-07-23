// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_haulier_report_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendHaulierReportRequest _$SendHaulierReportRequestFromJson(
        Map<String, dynamic> json) =>
    SendHaulierReportRequest(
      startDateUtc: DateTime.parse(json['startDateUtc'] as String),
      endDateUtc: DateTime.parse(json['endDateUtc'] as String),
      emailTo:
          (json['emailTo'] as List<dynamic>).map((e) => e as String).toList(),
      ccCurrentUser: json['ccCurrentUser'] as bool,
      haulierCode: json['haulierCode'] as String,
      regionIds:
          (json['regionIds'] as List<dynamic>).map((e) => e as String).toList(),
      vrm: json['vrm'] as String?,
      isHaulageRateIncluded: json['isHaulageRateIncluded'] as bool?,
      isFuelSurchargeIncluded: json['isFuelSurchargeIncluded'] as bool?,
    );

Map<String, dynamic> _$SendHaulierReportRequestToJson(
        SendHaulierReportRequest instance) =>
    <String, dynamic>{
      'startDateUtc': instance.startDateUtc.toIso8601String(),
      'endDateUtc': instance.endDateUtc.toIso8601String(),
      'emailTo': instance.emailTo,
      'haulierCode': instance.haulierCode,
      'regionIds': instance.regionIds,
      'vrm': instance.vrm,
      'isHaulageRateIncluded': instance.isHaulageRateIncluded,
      'isFuelSurchargeIncluded': instance.isFuelSurchargeIncluded,
      'ccCurrentUser': instance.ccCurrentUser,
    };
