import 'package:emr_one_transport/data/models/jobs/lat_long.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_truck_geometry.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobTruckGeometry {
  JobTruckGeometry(
    this.vrm,
    this.geometry,
  );

  factory JobTruckGeometry.fromJson(Map<String, dynamic> json) =>
      _$JobTruckGeometryFromJson(json);

  Map<String, dynamic> toJson() => _$JobTruckGeometryToJson(this);

  final String? vrm;
  final List<LatLong> geometry;
}
