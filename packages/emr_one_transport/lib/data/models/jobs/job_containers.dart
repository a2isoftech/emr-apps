
import 'dart:core';

import 'package:emr_one_transport/data/models/jobs/container_details.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_containers.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class JobContainers {
  JobContainers(
    this.startLocationContainerDetails,
    this.customerLocationContainerDetails,
  );

factory JobContainers.fromJson(Map<String, dynamic> json) =>
_$JobContainersFromJson(json);

Map<String, dynamic> toJson() => _$JobContainersToJson(this);

  List<ContainerDetails>? startLocationContainerDetails ;
  List<ContainerDetails>? customerLocationContainerDetails;
}
