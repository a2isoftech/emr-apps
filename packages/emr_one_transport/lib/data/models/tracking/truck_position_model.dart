import 'package:emr_one_transport/data/models/tracking/geo_location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'truck_position_model.g.dart';

@JsonSerializable(createToJson: false)
class TruckPosition {

  TruckPosition({
    required this.assetNumber,
    required this.vrm,
    required this.geoLocation,
    required this.speed,
    required this.heading,
    required this.locationTimestamp,
    required this.accuracy,
    required this.status,
    required this.yard,
    required this.driverName
  });

  factory TruckPosition.fromJson(Map<String, dynamic> json) =>
      _$TruckPositionFromJson(json);
  final String? assetNumber;
  final String? vrm;
  final GeoLocation? geoLocation;
  final double? speed;
  final double? heading;
  final DateTime? locationTimestamp;
  final double? accuracy;
  final String? status; // "moving" or "stopped"
  final String? yard;
  final String? driverName;
}
