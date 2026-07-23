import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';

class ActiveQuote {
  ActiveQuote({
    required this.total,
    required this.id,
    required this.basePrice,
    required this.vehicleDescription,
    required this.vehicleConfiguration,
    required this.quoteStatus,
    this.proofOfOwnership,
    this.catValue,
    this.hasTechemetCat,
    this.expires,
    this.haulageCost,
    this.partPrices,
  });

  double total;
  int id;
  double basePrice;
  String? proofOfOwnership;
  double? catValue;
  bool? hasTechemetCat;
  VehicleDetail vehicleDescription;
  VehicleConfiguration vehicleConfiguration;
  DateTime? expires;
  QuoteStatusEnum quoteStatus;
  double? haulageCost;
  List<PartPrice>? partPrices;

  static ActiveQuote? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ActiveQuote(
        total: json['total'] as double,
        id: json['id'] as int,
        basePrice: json['basePrice'] as double,
        proofOfOwnership: json['proofOfOwnership'] as String?,
        catValue: json['catValue'] as double?,
        hasTechemetCat: json['hasTechemetCat'] as bool?,
        vehicleDescription:
            VehicleDetail.fromJson(json['vehicleDescription'])!,
        vehicleConfiguration:
            VehicleConfiguration.fromJson(json['vehicleConfiguration'])!,
        expires: DateTime.tryParse(json['expires'] as String? ?? ''),
        quoteStatus: QuoteStatusEnum.mapFromInt(json['quoteStatus'] as int),
        haulageCost: json['haulageCost'] as double?,
      );
    }
    return null;
  }

  static List<ActiveQuote>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ActiveQuote>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActiveQuote.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
