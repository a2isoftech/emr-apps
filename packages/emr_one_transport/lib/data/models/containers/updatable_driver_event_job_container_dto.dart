import 'package:json_annotation/json_annotation.dart';

part 'updatable_driver_event_job_container_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class UpdatableDriverEventJobContainerDto {
  UpdatableDriverEventJobContainerDto({
    required this.containerType,
    required this.containerGuid,
    required this.isRetained,
    this.assetNumberUsed,
    this.comments,
  });
  factory UpdatableDriverEventJobContainerDto.fromJson(
    Map<String, dynamic> json,
  ) => _$UpdatableDriverEventJobContainerDtoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdatableDriverEventJobContainerDtoToJson(this);

  String? assetNumberUsed;
  final String containerType;
  final String containerGuid;
  bool isRetained;
  String? comments;
}
