import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';

class QuickKnownVehiclePricingRequest {
  QuickKnownVehiclePricingRequest({
    required this.postcode,
    required this.configuration,
  });

  String postcode;
  VehicleConfiguration configuration;

  static QuickKnownVehiclePricingRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return QuickKnownVehiclePricingRequest(
        postcode: json['postcode'] as String,
        configuration: VehicleConfiguration.fromJson(json['configuration'])!,
      );
    }
    return null;
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['postcode'] = postcode;
    json['configuration'] = configuration.toJson();
    return json;
  }

  static List<QuickKnownVehiclePricingRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <QuickKnownVehiclePricingRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuickKnownVehiclePricingRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
