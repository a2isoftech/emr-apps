import 'package:json_annotation/json_annotation.dart';

part 'postcode_to_yard_distance_request_model.g.dart';

@JsonSerializable()
class PostcodeToYardDistanceRequestModel {
  PostcodeToYardDistanceRequestModel({
    required this.postcode,
    required this.yardCodes,
  });

  factory PostcodeToYardDistanceRequestModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PostcodeToYardDistanceRequestModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PostcodeToYardDistanceRequestModelToJson(this);

  final String postcode;
  final List<String> yardCodes;
}
