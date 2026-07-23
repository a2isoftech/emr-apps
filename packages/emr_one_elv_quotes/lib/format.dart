// ignore_for_file: use_late_for_private_fields_and_variables

import 'package:intl/date_symbol_data_local.dart' as date_symbol;
import 'package:intl/intl.dart';

enum WeightUom {
  metricKilogram,
  imperialPound,
}

enum DistanceEnum {
  kilometer,
  miles,
}

//todo: This needs to be made a singleton!
class Format {
  static final Map<String, String> _territoryLocales = {
    'A11': 'en_GB',
    'A42': 'en_US',
  };

  static final Map<String, WeightUom> _weightUoms = {
    'A11': WeightUom.metricKilogram,
    'A42': WeightUom.imperialPound,
  };

  static final Map<WeightUom, String> _weightSuffixes = {
    WeightUom.metricKilogram: '/ KG',
    WeightUom.imperialPound: '/ LB',
  };

  static final Map<WeightUom, String> _weightPatterns = {
    WeightUom.metricKilogram: '#,##0 kg',
    WeightUom.imperialPound: '#,##0 lb',
  };

  static final Map<DistanceEnum, String> _distancePatterns = {
    DistanceEnum.kilometer: '#,##0.00 km',
    DistanceEnum.miles: '#,##0.00 mile(s)',
  };

  static DateFormat? _dateFormat;
  static NumberFormat? _numberFormat;
  static NumberFormat? _moneyFormat;
  static NumberFormat? _weightFormat;

  static String? locale;
  static String? weightSuffix;

  static void localize(String territory) {
    locale = _territoryLocales[territory];

    date_symbol.initializeDateFormatting(locale);
    _dateFormat = DateFormat.yMd(locale);

    _numberFormat = NumberFormat(locale);

    _moneyFormat = NumberFormat.simpleCurrency(locale: locale);

    final weightUom = _weightUoms[territory];
    weightSuffix = _weightSuffixes[weightUom];
    final weightPattern = _weightPatterns[weightUom];
    _weightFormat = NumberFormat(weightPattern, locale);
  }

  static String date(DateTime value) => _dateFormat!.format(value);
  static String number(num value) => _numberFormat!.format(value);
  static String money(num value) => _moneyFormat!.format(value);
  static String moneyFromDouble(double value) => _moneyFormat!.format(value);
  static String weight(num value) => _weightFormat!.format(value);
  static String distance(num value, DistanceEnum distanceType) =>
      NumberFormat(_distancePatterns[distanceType]).format(value);

  static DateTime parseDate(String text) => _dateFormat!.parseStrict(text);
}
