import 'package:json_annotation/json_annotation.dart';

part 'scheduler_container_update_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SchedulerContainerUpdateRequest {
  SchedulerContainerUpdateRequest({
    required this.assetNumberUsed,
    required this.containerGuid,
    required this.isRetained,
  });
  factory SchedulerContainerUpdateRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SchedulerContainerUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SchedulerContainerUpdateRequestToJson(this);
  String assetNumberUsed;
  String containerGuid;
  bool isRetained;
}
