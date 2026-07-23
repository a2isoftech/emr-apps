class VehicleLookupModel {
  VehicleLookupModel({
    required this.vehicleIdentifiers,
    required this.territoryCode,
    required this.returnVehicleBatchQuote,
    this.quoteSource,
  });

  List<String> vehicleIdentifiers = [];
  String territoryCode;
  bool returnVehicleBatchQuote;
  String? quoteSource;

  Map<String, dynamic> toJson() {
    return {
      'vehicleIdentifiers': vehicleIdentifiers,
      'territoryCode': territoryCode,
      'returnVehicleBatchQuote': returnVehicleBatchQuote,
      if (quoteSource != null) 'quoteSource': quoteSource,
    };
  }
}
