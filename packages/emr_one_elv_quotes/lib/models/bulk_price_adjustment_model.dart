import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';

class BulkPriceAdjustmentModel {
  BulkPriceAdjustmentModel({
    required this.batchQuoteID,
    required this.adjustments,
  });

  int batchQuoteID;
  List<PriceAdjustmentApiModel> adjustments = [];

  List<Map<String, dynamic>> toJson() {
    return adjustments.map((e) => e.toJson()).toList();
  }
}

class PriceAdjustmentApiModel {
  PriceAdjustmentApiModel({required this.quoteID, required this.configuration});

  int quoteID;
  VehicleConfiguration configuration;

  Map<String, dynamic> toJson() {
    return {
      'vehicleConfiguration': configuration.toJson(),
      'quoteid': quoteID,
    };
  }
}
