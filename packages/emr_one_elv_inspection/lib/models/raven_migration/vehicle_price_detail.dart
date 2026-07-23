import 'package:emr_one_elv_core/models/enums/quote_status_enum.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/part_price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_price_detail.g.dart';

@JsonSerializable()
class VehiclePriceDetail {
  VehiclePriceDetail({
    required this.price,
    required this.totalCatPrice,
    required this.status,
    required this.partPrices,
  });

  factory VehiclePriceDetail.fromJson(Map<String, dynamic> json) =>
      _$VehiclePriceDetailFromJson(json);

  Map<String, dynamic> toJson() => _$VehiclePriceDetailToJson(this);

  double price;
  double totalCatPrice;
  @JsonKey(
    name: 'status',
    fromJson: quoteStatusFromJson,
    toJson: quoteStatusToJson,
  )
  final QuoteStatusEnum status;
  List<PartPrice> partPrices;
}
