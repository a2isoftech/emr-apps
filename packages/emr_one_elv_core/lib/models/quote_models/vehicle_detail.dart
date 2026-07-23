import 'package:emr_one_elv_core/models/simple_bundle_request_model.dart';
import 'package:emr_one_elv_core/models/uom_code.dart';

class VehicleDetail {
  VehicleDetail({
    required this.id,
    this.vehicleReg,
    this.vin,
    this.make,
    this.model,
    this.fuelType,
    this.transmission,
    this.variant,
    this.bodyType,
    this.doors,
    this.year,
    this.engineSize,
    this.curbWeight,
    this.overrideCurbWeight,
    this.curbWeightUom,
    this.selected = true,
    this.vehicleBatchQuotes,
    this.operationMode = VehicleDetailsOperationMode.unspecified,
    this.trim,
    this.vehicleType = VehicleType.accepted,
  });

  int id;
  String? vehicleReg;
  String? vin;
  String? make;
  String? model;
  String? fuelType;
  String? transmission;
  String? variant;
  String? bodyType;
  int? doors;
  int? year;
  double? engineSize;
  double? curbWeight;
  int? overrideCurbWeight;
  UomCode? curbWeightUom;
  bool selected;
  List<BatchQuoteLink>? vehicleBatchQuotes;
  VehicleDetailsOperationMode operationMode;
  String? trim;
  VehicleType vehicleType;

Map<String, dynamic> toJson() => {
      'id': id,
      'vehicleReg': vehicleReg,
      'vin': vin,
      'make': make,
      'model': model,
      'fuelType': fuelType,
      'transmission': transmission,
      'variant': variant,
      'bodyType': bodyType,
      'doors': doors,
      'year': year,
      'engineSize': engineSize,
      'curbWeight': curbWeight,
      'overrideCurbWeight': overrideCurbWeight,
      'curbWeightUom': curbWeightUom?.toJson(),
      'trim': trim,     
    };

  static VehicleDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      final vehicle = VehicleDetail(
        id: json['id'] as int,
        vehicleReg: json['vehicleReg'] as String?,
        vin: json['vin'] as String?,
        make: json['make'] as String?,
        model: json['model'] as String?,
        fuelType: json['fuelType'] as String?,
        transmission: json['transmission'] as String?,
        variant: json['variant'] as String?,
        bodyType: json['bodyType'] as String?,
        doors: json['doors'] as int?,
        year: json['year'] as int?,
        engineSize: json['engineSize'] as double?,
        curbWeight: json['curbWeight'] as double?,
        curbWeightUom: UomCode.fromJson(json['curbWeightUom']),
        vehicleBatchQuotes:
            BatchQuoteLink.listFromJson(json['vehicleBatchQuotes']),
        trim: json['trim'] as String?,
        vehicleType: (json['nonQuotableVehicle'] as bool? ?? false) == true
            ? VehicleType.hasFlaggedBodyType
            : (json['hybridOrElectric'] as bool? ?? false) == true
                ? VehicleType.hasFlaggedFuelType
                : VehicleType.accepted,
      );

      return vehicle;
    }
    return null;
  }

  static List<VehicleDetail>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VehicleDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VehicleDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class BatchQuoteLink {
  BatchQuoteLink({
    required this.vehicleId,
    required this.batchQuoteId,
    required this.accountCode,
    required this.quoteLastModifiedDate,
    required this.quoteType,
    required this.quoteStatus,
    required this.batchQuoteBundleId,
  });

  final int vehicleId;
  final int batchQuoteId;
  final String accountCode;
  final String quoteLastModifiedDate;
  final String quoteType;
  final String quoteStatus;
  final String batchQuoteBundleId;

  static BatchQuoteLink? fromJson(dynamic json) {
    if (json is Map) {
      return BatchQuoteLink(
        vehicleId: json['vehicleId'] as int,
        batchQuoteId: json['batchQuoteId'] as int,
        accountCode: json['accountCode'] as String,
        quoteLastModifiedDate: json['quoteLastModifiedDate'] as String,
        quoteType: json['quoteType'] as String,
        quoteStatus: json['quoteStatus'] as String,
        batchQuoteBundleId: json['batchQuoteBundleId'] as String? ?? '',
      );
    }
    return null;
  }

  static List<BatchQuoteLink> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BatchQuoteLink>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchQuoteLink.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

enum VehicleType { accepted, hasFlaggedBodyType, hasFlaggedFuelType }
