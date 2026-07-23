import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'truck_display_order_for_yard_request.dart.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TruckDisplayOrderForYardRequest {
  const TruckDisplayOrderForYardRequest({
    required this.yardCode,
    required this.truckVrmDisplayOrder,
  });

  factory TruckDisplayOrderForYardRequest.fromJson(Map<String, dynamic> json) =>
      _$TruckDisplayOrderForYardRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TruckDisplayOrderForYardRequestToJson(this);

  final String yardCode;
  final List<String> truckVrmDisplayOrder;
}
