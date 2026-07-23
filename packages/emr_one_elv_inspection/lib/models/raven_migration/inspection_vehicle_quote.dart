import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/vehicle_info.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/vehicle_price_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inspection_vehicle_quote.g.dart';

@JsonSerializable()
class InspectionVehicleQuote {
  InspectionVehicleQuote({
    required this.elvQuotationId,
    required this.quoteSource,
    required this.vehicleInfo,
    required this.vehiclePriceDetail,
  });

  factory InspectionVehicleQuote.fromJson(Map<String, dynamic> json) =>
      _$InspectionVehicleQuoteFromJson(json);

  Map<String, dynamic> toJson() => _$InspectionVehicleQuoteToJson(this);

  final String elvQuotationId;
  @JsonKey(
    name: 'quoteSource',
    fromJson: quoteSourceFromJson,
    toJson: quoteSourceToJson,
  )
  final QuoteSourceEnum quoteSource;
  final VehicleInfo vehicleInfo;
  final VehiclePriceDetail vehiclePriceDetail;
  String get quoteNumber => elvQuotationId.split('/').last;
}
