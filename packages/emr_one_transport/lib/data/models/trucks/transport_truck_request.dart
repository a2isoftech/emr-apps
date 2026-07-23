import 'package:json_annotation/json_annotation.dart';

part 'transport_truck_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TransportTruckRequest {
  TransportTruckRequest({
    required this.vrm,
    required this.haulierCode,
    required this.haulierType,
    required this.maxAllowedContainers,
    required this.enforceJobSequence,
    required this.active,
    this.assetNumber,
    this.dispatchYard,
    this.activeLeaseId,
    this.truckType,
    this.lifecycleStatus,
    this.make,
    this.model,
    this.friendlyName,
  });

  factory TransportTruckRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportTruckRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TransportTruckRequestToJson(this);

  String? assetNumber;
  String vrm;
  String haulierCode;
  String haulierType;
  String? dispatchYard;
  String? activeLeaseId;
  int maxAllowedContainers;
  bool enforceJobSequence;
  String? truckType;
  bool active;
  String? lifecycleStatus;
  String? make;
  String? model;
  String? friendlyName;
}
