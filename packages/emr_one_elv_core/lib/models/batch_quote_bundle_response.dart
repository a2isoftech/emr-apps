import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_core/models/account_models/account_model.dart';
import 'package:emr_one_elv_core/models/custom_quote_request_model.dart';
import 'package:emr_one_elv_core/models/quote_models/active_quote.dart';
import 'package:emr_one_elv_core/models/quote_models/batch_quote_model.dart';
import 'package:emr_one_elv_core/models/quote_models/vehicle_configuration.dart';
import 'package:emr_sharedtypes/models/yard.dart';

class BatchQuoteBundleResponse {
  BatchQuoteBundleResponse({
    required this.batchQuoteBundleId,
    required this.batchQuotes,
    required this.quoteParty,
    required this.partyAccountNo,
    required this.yardDetails,
    required this.vehicleInformation,
  });

  factory BatchQuoteBundleResponse.fromJson(Map<String, dynamic> json) {
    final bundle = BatchQuoteBundleResponse(
      batchQuoteBundleId: json['batchQuoteBundleId'] as String,
      batchQuotes: BatchQuoteModel.listFromJson(json['batchQuotes']) ?? [],
      vehicleInformation: (json['vehicleInformations'] as List)
          .map((e) => VehicleInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
      quoteParty: AccountModel.fromJson(json['quoteParty'])!,
      partyAccountNo: json['partyAccountNo'] as String,
      yardDetails: (json['yardDetails'] as List)
          .map((e) => YardDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
    for (final batchQuotes in bundle.batchQuotes) {
      final yard = bundle.yardDetails
          .firstWhere((e) => e.yardCode == batchQuotes.yardCode);
      batchQuotes.yard = Yard(
        name: yard.yardName,
        yardCode: yard.yardCode,
        shortName: yard.friendlyName,
      );
      batchQuotes.accountModel = bundle.quoteParty;

      final vinsAndVrns = batchQuotes.quoteSummaries
          .expand((e) => [e.vin, e.vehicleReg])
          .toSet();

      final filteredList = bundle.vehicleInformation
          .where(
            (a) =>
                vinsAndVrns.contains(a.vehicleDescription.vin) ||
                vinsAndVrns.contains(a.vehicleDescription.vehicleReg),
          )
          .toList();

      batchQuotes.quotes = filteredList.map((e) {
        final quoteSummary = batchQuotes.quoteSummaries.firstWhere(
          (t) =>
              (t.vin ?? 'n/a') == e.vehicleDescription.vin ||
              (t.vehicleReg ?? 'n/a') == e.vehicleDescription.vehicleReg,
        );

        return ActiveQuote(
          total: quoteSummary.quotedPrice,
          id: e.vehicleDescription.id,
          basePrice: quoteSummary.basePrice,
          vehicleDescription: e.vehicleDescription,
          vehicleConfiguration: e.vehicleConfiguration,
          catValue: quoteSummary.catValue,
          quoteStatus: QuoteStatusEnum.draft,
          partPrices: quoteSummary.partPrices,
        );
      }).toList();
    }
    return bundle;
  }

  String? batchQuoteBundleId;
  final List<BatchQuoteModel> batchQuotes;
  final AccountModel quoteParty;
  final String partyAccountNo;
  final List<YardDetails> yardDetails;
  final List<VehicleInformation> vehicleInformation;
}

class VehicleInformation {
  VehicleInformation({
    required this.vehicleConfiguration,
    required this.vehicleDescription,
  });

  factory VehicleInformation.fromJson(Map<String, dynamic> json) =>
      VehicleInformation(
        vehicleConfiguration: VehicleConfiguration.fromJson(
          json['configuration'] as Map<String, dynamic>,
        )!,
        vehicleDescription: VehicleDetail.fromJson(
          json,
        )!,
      );

  final VehicleConfiguration vehicleConfiguration;
  final VehicleDetail vehicleDescription;
}

class QuoteSummaries {
  QuoteSummaries({
    required this.vehicleIdentifier,
    required this.quotedPrice,
    required this.catValue,
    required this.vehicleReg,
    required this.vin,
    required this.basePrice,
    required this.partPrices,
  });

  factory QuoteSummaries.fromJson(Map<String, dynamic> json) => QuoteSummaries(
        vehicleIdentifier: json['vehicleIdentifier'] as String,
        quotedPrice: json['quotedPrice'] as double,
        basePrice: json['basePrice'] as double,
        catValue: json['catValue'] as double? ?? 0.0,
        vehicleReg: json['vehicleReg'] as String?,
        vin: json['vin'] as String?,
        partPrices: PartPrice.listFromJson(json['partPrice']) ?? [],
      );
  String vehicleIdentifier;
  double quotedPrice;
  double? catValue;
  String? vehicleReg;
  String? vin;
  double basePrice;
  List<PartPrice> partPrices;

  Map<String, dynamic> toJson() => {
        'vehicleIdentifier': vehicleIdentifier,
        'quotedPrice': quotedPrice,
        'catValue': catValue,
        'vehicleReg': vehicleReg,
        'vin': vin,
      };

  static List<QuoteSummaries>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <QuoteSummaries>[];
    if (json is Map && json.isNotEmpty) {
      for (final row in json.entries) {
        final value =
            QuoteSummaries.fromJson(row.value as Map<String, dynamic>);
        result.add(value);
      }
    }
    return result.toList(growable: growable);
  }
}

class PartPrice {
  PartPrice({
    required this.description,
    required this.price,
    this.weightKG,
  });

  factory PartPrice.fromJson(Map<String, dynamic> json) => PartPrice(
        description: json['description'] as String,
        price: json['price'] as double,
        weightKG: json['weightKG'] as double?,
      );
  String description;
  double price;
  double? weightKG;

  Map<String, dynamic> toJson() => {
        'description': description,
        'price': price,
        'weightKG': weightKG,
      };

  static List<PartPrice>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PartPrice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        result.add(PartPrice.fromJson(row as Map<String, dynamic>));
      }

      return result.toList(growable: growable);
    }
    return null;
  }
}
