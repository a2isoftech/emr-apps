// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updatable_driver_event_job_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatableDriverEventJobDto _$UpdatableDriverEventJobDtoFromJson(
        Map<String, dynamic> json) =>
    UpdatableDriverEventJobDto(
      id: json['id'] as String,
      driverEvents: (json['driverEvents'] as List<dynamic>)
          .map((e) => DriverEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      pickContainerImages: (json['pickContainerImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dropContainerImages: (json['dropContainerImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      startedDateTime: json['startedDateTime'] == null
          ? null
          : DateTime.parse(json['startedDateTime'] as String),
      finishedDateTime: json['finishedDateTime'] == null
          ? null
          : DateTime.parse(json['finishedDateTime'] as String),
      dispatcherNotes: json['dispatcherNotes'] as String?,
      officeNotes: json['officeNotes'] as String?,
      customerLocationContainers:
          (json['customerLocationContainers'] as List<dynamic>?)
              ?.map((e) => UpdatableDriverEventJobContainerDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      startLocationContainers:
          (json['startLocationContainers'] as List<dynamic>?)
              ?.map((e) => UpdatableDriverEventJobContainerDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      driverNotes: json['driverNotes'] as String?,
    );

Map<String, dynamic> _$UpdatableDriverEventJobDtoToJson(
        UpdatableDriverEventJobDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startedDateTime': instance.startedDateTime?.toIso8601String(),
      'finishedDateTime': instance.finishedDateTime?.toIso8601String(),
      'driverEvents': instance.driverEvents,
      'dispatcherNotes': instance.dispatcherNotes,
      'officeNotes': instance.officeNotes,
      'customerLocationContainers': instance.customerLocationContainers,
      'startLocationContainers': instance.startLocationContainers,
      'pickContainerImages': instance.pickContainerImages,
      'dropContainerImages': instance.dropContainerImages,
      'driverNotes': instance.driverNotes,
    };
