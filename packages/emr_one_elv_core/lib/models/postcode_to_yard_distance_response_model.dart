import 'package:json_annotation/json_annotation.dart';

part 'postcode_to_yard_distance_response_model.g.dart';

@JsonSerializable()
class PostcodeToYardDistanceResponseModel {
  PostcodeToYardDistanceResponseModel({
    required this.geometricDistanceInKM,
    required this.drivingDistanceInKM,
    required this.geometricDistanceInMiles,
    required this.drivingDistanceInMiles,
    required this.yardCode,
  });

  factory PostcodeToYardDistanceResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PostcodeToYardDistanceResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PostcodeToYardDistanceResponseModelToJson(this);

  final double geometricDistanceInKM;
  final double drivingDistanceInKM;
  final double geometricDistanceInMiles;
  final double drivingDistanceInMiles;
  final String yardCode;
}
