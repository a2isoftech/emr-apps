
import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'job_trailers.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class JobTrailers {
  JobTrailers({
    this.trailerType,
    this.model,
    this.assetNumber,
    this.withScan,
});

factory JobTrailers.fromJson(Map<String, dynamic> json) =>
_$JobTrailersFromJson(json);

Map<String, dynamic> toJson() => _$JobTrailersToJson(this);

  String? trailerType;
  String? model;
  String? assetNumber;
  bool? withScan;
}
