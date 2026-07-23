// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_scheduler_job_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchSchedulerJobRequest _$FetchSchedulerJobRequestFromJson(
        Map<String, dynamic> json) =>
    FetchSchedulerJobRequest(
      yardCodes:
          (json['yardCodes'] as List<dynamic>).map((e) => e as String).toList(),
      haulierCodes: (json['haulierCodes'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      containerTypes: (json['containerTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      haulierTypes: (json['haulierTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      truckTypes: (json['truckTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      productFamilies: (json['productFamilies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      jobTypes:
          (json['jobTypes'] as List<dynamic>).map((e) => e as String).toList(),
      dueInDays: json['dueInDays'] as String,
      scheduledDate: json['scheduledDate'] as String,
      timezoneId: json['timezoneId'] as String,
    );

Map<String, dynamic> _$FetchSchedulerJobRequestToJson(
        FetchSchedulerJobRequest instance) =>
    <String, dynamic>{
      'yardCodes': instance.yardCodes,
      'haulierCodes': instance.haulierCodes,
      'containerTypes': instance.containerTypes,
      'haulierTypes': instance.haulierTypes,
      'truckTypes': instance.truckTypes,
      'jobTypes': instance.jobTypes,
      'productFamilies': instance.productFamilies,
      'dueInDays': instance.dueInDays,
      'scheduledDate': instance.scheduledDate,
      'timezoneId': instance.timezoneId,
    };
