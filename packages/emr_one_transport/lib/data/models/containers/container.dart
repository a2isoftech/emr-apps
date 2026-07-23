import 'package:emr_one_transport/data/models/common/current_location.dart';
import 'package:emr_one_transport/data/models/common/useractioninfo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'container.g.dart';

@JsonSerializable()
class Containers {
  Containers({
    required this.id,
    required this.assetNumber,
    this.containerType,
    this.containerTypeId,
    this.description,
    this.yardCode,
    this.lifeCycleStatus,
    this.active,
    this.created,
    this.modified,
    this.comments,
    this.length,
    this.weight,
    this.manufacturer,
    this.cost,
    this.condition,
    this.serialNumber,
    this.currentLocation,
    this.validUpTo,
  });

  factory Containers.fromJson(Map<String, dynamic> json) =>
      _$ContainersFromJson(json);

  Map<String, dynamic> toJson() => _$ContainersToJson(this);

  final String id;
  final String assetNumber;
  final String? containerType;
  final String? containerTypeId;
  final String? comments;
  final int? length;
  final int? weight;
  final String? manufacturer;
  final double? cost;
  final String? condition;
  final String? serialNumber;
  final String? description;
  final String? yardCode;
  final String? lifeCycleStatus;
  final bool? active;
  final CurrentLocation? currentLocation;
  final UserActionInfo? created;
  final UserActionInfo? modified;
  final DateTime? validUpTo;
}
