import 'package:emr_one_transport/data/models/common/current_location.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_container_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class CreateContainerRequest {
  CreateContainerRequest({
    required this.assetNumber,
    required this.containerType,
    required this.containerTypeId,
    required this.description,
    required this.yardCode,
    required this.lifeCycleStatus,
    this.comments,
    this.length,
    this.weight,
    this.manufacturer,
    this.cost,
    this.condition,
    this.serialNumber,
    this.active = true,
    this.currentLocation,
    this.validUpTo,
  });

  factory CreateContainerRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateContainerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateContainerRequestToJson(this);

  String assetNumber;
  String containerType;
  String containerTypeId;
  String? comments;
  int? length;
  int? weight;
  String? manufacturer;
  double? cost;
  String? condition;
  String? serialNumber;
  String description;
  String yardCode;
  ContainerLifeCycleStatusEnum lifeCycleStatus;
  bool active;
  CurrentLocation? currentLocation;
  DateTime? validUpTo;
}
