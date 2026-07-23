class SendQuoteEmailRequest {
  /// Returns a new [SendQuoteEmailRequest] instance.
  SendQuoteEmailRequest({
    this.showKerbWeight,
    this.showWheelDetails,
    this.showCatDetails,
    this.showVehicleDetails,
    this.showBatteryDetails,
    this.isDraft,
    this.emails,
    this.territoryCode,
  });

  bool? showKerbWeight;
  bool? showWheelDetails;
  bool? showCatDetails;
  bool? showVehicleDetails;
  bool? showBatteryDetails;
  bool? isDraft;
  List<String>? emails;
  String? territoryCode;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (showKerbWeight != null) {
      json['showKerbWeight'] = showKerbWeight;
    }
    if (showWheelDetails != null) {
      json['showWheelDetails'] = showWheelDetails;
    }
    if (showCatDetails != null) {
      json['showCatDetails'] = showCatDetails;
    }
    if (showVehicleDetails != null) {
      json['showVehicleDetails'] = showVehicleDetails;
    }
    if (showBatteryDetails != null) {
      json['showBatteryDetails'] = showBatteryDetails;
    }
    if (isDraft != null) {
      json['isDraft'] = isDraft;
    }
    if (emails != null) {
      json['emails'] = emails;
    }
    if (territoryCode != null) {
      json['countryCode'] = territoryCode;
    }
    return json;
  }

  static SendQuoteEmailRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return SendQuoteEmailRequest(
        showKerbWeight: json['showKerbWeight'] as bool?,
        showWheelDetails: json['showWheelDetails'] as bool?,
        showCatDetails: json['showCatDetails'] as bool?,
        showVehicleDetails: json['showVehicleDetails'] as bool?,
        showBatteryDetails: json['showBatteryDetails'] as bool?,
        isDraft: json['isDraft'] as bool?,
        emails: json['emailAddress'] as List<String>?,
        territoryCode: json['countryCode'] as String?,
      );
    }
    return null;
  }

  static List<SendQuoteEmailRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SendQuoteEmailRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendQuoteEmailRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
