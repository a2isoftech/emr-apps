import 'package:json_annotation/json_annotation.dart';

part 'job_timeline_location.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobTimelineLocation {
  JobTimelineLocation(this.name, this.code);

  factory JobTimelineLocation.fromJson(Map<String, dynamic> json) =>
      _$JobTimelineLocationFromJson(json);

  Map<String, dynamic> toJson() => _$JobTimelineLocationToJson(this);

  final String name;
  final String code;
}
