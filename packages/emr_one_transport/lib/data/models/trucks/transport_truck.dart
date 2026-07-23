import 'package:emr_one_transport/data/models/common/useractioninfo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transport_truck.g.dart';

@JsonSerializable()
class TransportTruck {
  TransportTruck({
    this.id,
    this.assetNumber,
    this.vrm,
    this.friendlyName,
    this.haulierCode,
    this.condition,
    this.serialNumber,
    this.make,
    this.model,
    this.haulierType,
    this.enforceJobSequence,
    this.truckType,
    this.active,
    this.lifecycleStatus,
    this.created,
    this.modified,
    this.costCenter,
    this.dispatchYard,
    this.activeLeaseId,
  });

  factory TransportTruck.fromJson(Map<String, dynamic> json) =>
      _$TransportTruckFromJson(json);

  Map<String, dynamic> toJson() => _$TransportTruckToJson(this);

  final String? id;
  final String? assetNumber;
  final String? vrm;
  final String? friendlyName;
  final String? haulierCode;
  final String? condition;
  final String? serialNumber;
  final String? make;
  final String? model;
  final String? haulierType;
  final String? costCenter;
  final String? dispatchYard;
  final bool? enforceJobSequence;
  final String? truckType;
  final String? activeLeaseId;
  final bool? active;
  final String? lifecycleStatus;
  final UserActionInfo? created;
  final UserActionInfo? modified;
}
