import 'package:emr_one_transport/data/models/tracking/geo_location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tracker_summary_model.g.dart';

@JsonSerializable(createToJson: false)
class TrackerSummary {

  TrackerSummary({
    required this.assetNumber,
    required this.vrm,
    required this.currentPosition,
    required this.speed,
    required this.heading,
    required this.lastUpdated,
    required this.activeJobNumber,
    required this.dispatchYard,
    required this.driverName,
  });

  factory TrackerSummary.fromJson(Map<String, dynamic> json) =>
      _$TrackerSummaryFromJson(json);
  final String? assetNumber;
  final String? vrm;
  final GeoLocation? currentPosition;
  final double? speed;
  final double? heading;
  final DateTime? lastUpdated;
  final int? activeJobNumber;
  final String? dispatchYard;
  final String? driverName;
}
