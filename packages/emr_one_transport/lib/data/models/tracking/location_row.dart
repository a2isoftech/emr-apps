import 'package:json_annotation/json_annotation.dart';

part 'location_row.g.dart';

@JsonSerializable(createToJson: false)
class LocationRow {

  LocationRow({
    required this.latitude,
    required this.longitude,
    required this.speed,
    required this.heading,
    required this.locationTimestamp,
    required this.accuracy,
  });

  factory LocationRow.fromJson(Map<String, dynamic> json) =>
      _$LocationRowFromJson(json);
  final double? latitude;
  final double? longitude;
  final double? speed;
  final double? heading;
  final DateTime? locationTimestamp;
  final double? accuracy;
}
