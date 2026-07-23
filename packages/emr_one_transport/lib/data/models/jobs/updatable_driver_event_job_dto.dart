import 'package:emr_one_transport/data/models/containers/updatable_driver_event_job_container_dto.dart';
import 'package:emr_one_transport/data/models/jobs/driver_event.dart';
import 'package:json_annotation/json_annotation.dart';

part 'updatable_driver_event_job_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class UpdatableDriverEventJobDto {
  UpdatableDriverEventJobDto({
    required this.id,
    required this.driverEvents,
    required this.pickContainerImages,
    required this.dropContainerImages,
    this.startedDateTime,
    this.finishedDateTime,
    this.dispatcherNotes,
    this.officeNotes,
    List<UpdatableDriverEventJobContainerDto>? customerLocationContainers,
    List<UpdatableDriverEventJobContainerDto>? startLocationContainers,
    this.driverNotes,
  }) : customerLocationContainers = customerLocationContainers ?? [],
       startLocationContainers = startLocationContainers ?? [];

  factory UpdatableDriverEventJobDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatableDriverEventJobDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatableDriverEventJobDtoToJson(this);

  final String id;
  final DateTime? startedDateTime;
  final DateTime? finishedDateTime;
  final List<DriverEvent> driverEvents;
  final String? dispatcherNotes;
  final String? officeNotes;
  final List<UpdatableDriverEventJobContainerDto> customerLocationContainers;
  final List<UpdatableDriverEventJobContainerDto> startLocationContainers;

  final List<String> pickContainerImages;
  final List<String> dropContainerImages;
  final String? driverNotes;
}
