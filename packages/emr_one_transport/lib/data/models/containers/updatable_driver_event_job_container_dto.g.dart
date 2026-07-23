// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updatable_driver_event_job_container_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatableDriverEventJobContainerDto
    _$UpdatableDriverEventJobContainerDtoFromJson(Map<String, dynamic> json) =>
        UpdatableDriverEventJobContainerDto(
          containerType: json['containerType'] as String,
          containerGuid: json['containerGuid'] as String,
          isRetained: json['isRetained'] as bool,
          assetNumberUsed: json['assetNumberUsed'] as String?,
          comments: json['comments'] as String?,
        );

Map<String, dynamic> _$UpdatableDriverEventJobContainerDtoToJson(
        UpdatableDriverEventJobContainerDto instance) =>
    <String, dynamic>{
      'assetNumberUsed': instance.assetNumberUsed,
      'containerType': instance.containerType,
      'containerGuid': instance.containerGuid,
      'isRetained': instance.isRetained,
      'comments': instance.comments,
    };
