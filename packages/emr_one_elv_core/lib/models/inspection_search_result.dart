class InspectionSearchResults {
  InspectionSearchResults({required this.results});
  final List<InspectionResult?> results;

  static InspectionSearchResults? fromJson(dynamic value) {
    if (value is List) {
      final json = value.cast<dynamic>();

      final results = json.map(InspectionResult.fromJson).toList();

      results.removeWhere((e) => e == null);
      if (results.isEmpty) return null;
      return InspectionSearchResults(results: results);
    }
    return null;
  }
}

class InspectionResult {
  InspectionResult({
    required this.vehicleDetail,
    required this.quote,
    required this.batchQuoteID,
  });
  final VehicleDetail vehicleDetail;
  final QuoteInfo quote;
  final int batchQuoteID;

  static InspectionResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      final vehicleDetail = VehicleDetail.fromJson(json['vehicleDetail']);
      final quote = QuoteInfo.fromJson(json['quote']);
      final batchQuoteID = json['batchQuoteId'] as int;

      if (vehicleDetail == null || quote == null) return null;
      return InspectionResult(
        vehicleDetail: vehicleDetail,
        quote: quote,
        batchQuoteID: batchQuoteID,
      );
    }
    return null;
  }
}

class VehicleDetail {
  VehicleDetail({
    required this.make,
    required this.model,
    required this.year,
    this.color,
    this.vin,
    this.vehicleReg,
  });

  final String make;
  final String model;
  final String? color;
  final String? vin;
  final String? vehicleReg;
  final int? year;

  static VehicleDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return VehicleDetail(
        make: json['make'] as String,
        model: json['model'] as String,
        year: json['year'] as int? ?? 0,
        vin: json['vin'] as String? ?? '',
        color: json['color'] as String? ?? '',
        vehicleReg: json['vehicleReg'] as String? ?? '',
      );
    }
    return null;
  }
}

class QuoteInfo {
  QuoteInfo({
    required this.quoteId,
    required this.createdDate,
    required this.quoteType,
    required this.hasBattery,
    required this.hasOriginalCat,
    required this.alloyWheels,
    required this.steelWheels,
  });

  final int quoteId;
  final String createdDate;
  final String quoteType;
  final bool hasBattery;
  final bool hasOriginalCat;
  final int alloyWheels;
  final int steelWheels;

  static QuoteInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return QuoteInfo(
        quoteId: json['quoteId'] as int,
        createdDate: json['createdDate'] as String,
        quoteType: json['quoteType'] as String,
        hasBattery: json['hasBattery'] as bool,
        hasOriginalCat: json['hasOriginalCat'] as bool,
        alloyWheels: json['alloyWheels'] as int,
        steelWheels: json['steelWheels'] as int,
      );
    }
    return null;
  }
}
