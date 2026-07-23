import 'package:emr_one_elv_quotes/models/common_classes/cat/techemet_cat.dart';

class TechemetCatLookUpData {
  /// Returns a new [TechemetCatLookUpData] instance.
  TechemetCatLookUpData({
    required this.make,
    required this.model,
    required this.year,
    required this.variant,
    required this.engineSize,
    required this.horsePower,
    this.fuelType,
    this.currencyLong,
    this.currencyShort,
    this.searchReturn = const [],
  });

  String make;
  String model;
  int year;
  String variant;
  double engineSize;
  double horsePower;
  String? fuelType;
  String? currencyLong;
  String? currencyShort;
  List<TechemetCat> searchReturn;

  static TechemetCatLookUpData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return TechemetCatLookUpData(
        make: json['make'] as String,
        model: json['model'] as String,
        year: json['year'] as int,
        variant: json['variant'] as String,
        engineSize: json['engineSize'] as double,
        horsePower: json['horsePower'] as double,
        fuelType: json['fuelType'] as String?,
        currencyLong: json['currencyLong'] as String?,
        currencyShort: json['currencyShort'] as String?,
        searchReturn: TechemetCat.listFromJson(json['searchReturn'])!,
      );
    }
    return null;
  }
}
