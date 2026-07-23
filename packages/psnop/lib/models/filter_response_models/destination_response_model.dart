import 'package:json_annotation/json_annotation.dart';

part 'destination_response_model.g.dart';

@JsonSerializable()
class DestinationResponseModel {
  DestinationResponseModel({
    required this.id,
    required this.movementType,
    required this.name,
  });

  /// Connect the generated [_$DestinationResponseModelFromJson] function to the
  /// `fromJson` factory.
  factory DestinationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DestinationResponseModelFromJson(json);

  String id;
  String movementType;
  String name;
}
