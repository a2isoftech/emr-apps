import 'package:emr_one_elv_core/models/quote_models/active_quote.dart';

extension ActiveQuoteExtensions on ActiveQuote {
  String getSummary() {
    final primaryInfo = [
      vehicleDescription.make?.trim() ?? '',
      vehicleDescription.model?.trim() ?? '',
      vehicleDescription.variant?.trim() ?? '',
      '(${vehicleDescription.year})',
    ].where((i) => i != '');

    final secondaryInfo = [
      vehicleDescription.fuelType?.trim() ?? '',
      vehicleDescription.bodyType?.trim() ?? '',
      vehicleDescription.engineSize,
      vehicleDescription.transmission?.trim() ?? '',
    ].where((i) => i != '');

    final vin = (vehicleDescription.vin?.trim() ?? '').isNotEmpty
        ? '[VIN:${vehicleDescription.vin!.trim()}]'
        : '';
    final reg = (vehicleDescription.vehicleReg?.trim() ?? '').isNotEmpty
        ? '[Reg Number:${vehicleDescription.vehicleReg!.trim()}]'
        : '';

    return "${primaryInfo.join(" ")}: ${secondaryInfo.join(", ")} $vin $reg"
        .trim();
  }
}
