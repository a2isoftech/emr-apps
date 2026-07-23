// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_containers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobContainers _$JobContainersFromJson(Map<String, dynamic> json) =>
    JobContainers(
      (json['startLocationContainerDetails'] as List<dynamic>?)
          ?.map((e) => ContainerDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['customerLocationContainerDetails'] as List<dynamic>?)
          ?.map((e) => ContainerDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JobContainersToJson(JobContainers instance) =>
    <String, dynamic>{
      'startLocationContainerDetails': instance.startLocationContainerDetails,
      'customerLocationContainerDetails':
          instance.customerLocationContainerDetails,
    };
