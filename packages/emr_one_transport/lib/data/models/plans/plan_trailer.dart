import 'package:json_annotation/json_annotation.dart';

part 'plan_trailer.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PlanTrailer {
  PlanTrailer(
    this.trailerType,
    this.model,
  );

  factory PlanTrailer.fromJson(Map<String, dynamic> json) =>
      _$PlanTrailerFromJson(json);

  Map<String, dynamic> toJson() => _$PlanTrailerToJson(this);

  final String trailerType;
  final String? model;
}
