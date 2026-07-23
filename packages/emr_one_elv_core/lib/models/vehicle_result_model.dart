import 'dart:core';

import 'package:emr_one_elv_core/models/batch_quote_search_criteria.dart';

class VehicleResult {
  VehicleResult({
    required this.vehicleId,
    required this.vin,
    required this.vrn,
    required this.make,
    required this.model,
    required this.createdDate,
    required this.year,
    required this.status,
    required this.deliveryMethod,
    required this.batchQuoteId,
    required this.quoteStatus,
  });

  factory VehicleResult.fromJson(
    Map<String, dynamic> json,
    int batchQuoteId,
    QuoteStatusEnum quoteStatus,
  ) {
    return VehicleResult(
      vehicleId: json['vehicleId'] as int,
      vin: json['vin'] as String,
      vrn: json['vrn'] as String,
      make: json['make'] as String,
      model: json['model'] as String,
      createdDate: json['createdDate'] as String,
      year: json['year'] as int,
      status: json['status'] as int,
      deliveryMethod: json['deliveryMethod'] as int,
      batchQuoteId: batchQuoteId,
      quoteStatus: quoteStatus as int,
    );
  }

  final int vehicleId;
  final String vin;
  final String vrn;
  final String make;
  final String model;
  final String createdDate;
  final int year;
  final int status;
  final int deliveryMethod;
  final int batchQuoteId;
  final int quoteStatus;
}
