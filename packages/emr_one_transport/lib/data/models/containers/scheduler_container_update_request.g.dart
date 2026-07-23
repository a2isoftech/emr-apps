// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_container_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchedulerContainerUpdateRequest _$SchedulerContainerUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    SchedulerContainerUpdateRequest(
      assetNumberUsed: json['assetNumberUsed'] as String,
      containerGuid: json['containerGuid'] as String,
      isRetained: json['isRetained'] as bool,
    );

Map<String, dynamic> _$SchedulerContainerUpdateRequestToJson(
        SchedulerContainerUpdateRequest instance) =>
    <String, dynamic>{
      'assetNumberUsed': instance.assetNumberUsed,
      'containerGuid': instance.containerGuid,
      'isRetained': instance.isRetained,
    };
