// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'third_party_job_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThirdPartyJobApiResponse _$ThirdPartyJobApiResponseFromJson(
        Map<String, dynamic> json) =>
    ThirdPartyJobApiResponse(
      haulierCode: json['haulierCode'] as String,
      haulierName: json['haulierName'] as String,
      scheduledJobs: (json['scheduledJobs'] as List<dynamic>)
          .map((e) => ThirdPartyJob.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ThirdPartyJobApiResponseToJson(
        ThirdPartyJobApiResponse instance) =>
    <String, dynamic>{
      'haulierCode': instance.haulierCode,
      'haulierName': instance.haulierName,
      'scheduledJobs': instance.scheduledJobs,
    };
