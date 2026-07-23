import 'package:emr_one_transport/data/models/common/current_location.dart';
import 'package:emr_one_transport/data/models/common/useractioninfo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transport_trailer.g.dart';

@JsonSerializable()
class TransportTrailer {
  TransportTrailer({
    required this.id,
    this.assetNumber,
    this.serialNumber,
    this.costCenter,
    this.description,
    this.trailerType,
    this.make,
    this.model,
    this.condition,
    this.status,
    this.yardCode,
    this.active,
    this.currentLocation,
    this.created,
    this.modified,
  });

  factory TransportTrailer.fromJson(Map<String, dynamic> json) =>
      _$TransportTrailerFromJson(json);

  Map<String, dynamic> toJson() => _$TransportTrailerToJson(this);

  final String id;
  final String? assetNumber;
  final String? serialNumber;
  final String? costCenter;
  final String? description;
  final String? trailerType;
  final String? make;
  final String? model;
  final String? condition;
  final String? status;
  final String? yardCode;
  final bool? active;
  final CurrentLocation? currentLocation;
  final UserActionInfo? created;
  final UserActionInfo? modified;
}
