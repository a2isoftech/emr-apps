import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';

class CreateNewQuoteRequest {
  /// Returns a new [CreateNewQuoteRequest] instance.
  CreateNewQuoteRequest({
    this.vehicleId,
    this.configuration,
  });

  int? vehicleId;
  VehicleConfiguration? configuration;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (vehicleId != null) {
      json['vehicleId'] = vehicleId;
    }
    if (configuration != null) {
      json['configuration'] = configuration;
    }
    return json;
  }

  static CreateNewQuoteRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return CreateNewQuoteRequest(
        vehicleId: json['vehicleId'] as int?,
        configuration: VehicleConfiguration.fromJson(json['configuration']),
      );
    }
    return null;
  }

  static List<CreateNewQuoteRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CreateNewQuoteRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateNewQuoteRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
