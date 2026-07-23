import 'package:emr_one_elv_inspection/models/raven_migration/catalytic_converter_configuration.dart';

class SetCatalyticConverterResult {
  SetCatalyticConverterResult({
    required this.success,
    this.catalyticConverter,
    this.price,
    this.errorMessage,
  });

  final bool success;
  final CatalyticConverterConfiguration? catalyticConverter;
  final double? price;
  final String? errorMessage;
}
