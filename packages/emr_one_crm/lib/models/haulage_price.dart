import 'package:json_annotation/json_annotation.dart';

part 'haulage_price.g.dart';

@JsonSerializable()
class HaulagePrice {
  HaulagePrice(
    this.haulagePriceMatrixId,
    this.firstLocationCode,
    this.secondLocationCode,
    this.haulierAccountNo,
    this.haulierName,
    this.startDate,
    this.endDate,
    this.grade,
    this.vehicleTypeName,
    this.containerTypeName,
    this.uomCode,
    this.rate,
    this.currencyCode,
    this.minimumCost,
    this.distance,
    this.durationInSeconds,
  );

  factory HaulagePrice.fromJson(Map<String, dynamic> json) =>
      _$HaulagePriceFromJson(json);

  Map<String, dynamic> toJson() => _$HaulagePriceToJson(this);

  final int haulagePriceMatrixId;
  final String firstLocationCode;
  final String secondLocationCode;
  final String haulierAccountNo;
  final String? haulierName;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? grade;
  final String? vehicleTypeName;
  final String? containerTypeName;
  final String? uomCode;
  final double? rate;
  final String? currencyCode;
  final double? minimumCost;
  final double? distance;
  final int? durationInSeconds;
}
