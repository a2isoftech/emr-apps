import 'package:json_annotation/json_annotation.dart';

part 'transport_details.g.dart';

@JsonSerializable(explicitToJson: true)
class TransportDetails {
  TransportDetails({
    required this.transportType,
    this.jobNumber,
    this.vehicleReg,
    this.deliveryNote,
  });
  factory TransportDetails.fromJson(Map<String, dynamic> json) =>
      _$TransportDetailsFromJson(json);
  int? jobNumber;
  String? vehicleReg;
  String? deliveryNote;
  TransportType transportType;
  Map<String, dynamic> toJson() => _$TransportDetailsToJson(this);
}

enum TransportType {
  @JsonValue('TRUCK')
  truck
}
