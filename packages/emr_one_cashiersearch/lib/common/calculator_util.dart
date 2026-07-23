import 'package:decimal/decimal.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart' hide Uom;
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class CalculatorUtil {
  static LineCalculatorResult calculateWeightAndPrice({
    required UomValue grossWeight,
    required UomValue rate,
    required List<Deductions> deductions,
    required TicketLine ticketLine,
    required UomValue dirt,
    UomValue? netWeightInput,
  }) {
    final netWeight =
        netWeightInput ??
        UomValue.fromValue(
          (grossWeight.roundOff() -
                  calculateWeightDeduction(
                    deductions
                        .where(
                          (e) =>
                              e.typeId != CashierConstants.kDeductionTypeDirt,
                        )
                        .toList(),
                  ))
              .roundOff(grossWeight.uom),
          grossWeight.uom,
        );

    final payableWeight = UomValue.fromValue(
      netWeight.roundOff() - dirt.value,
      netWeight.uom,
    );

    final price = (ticketLine.elvQuoteIds.isNotEmpty
        ? ticketLine.price
        : ticketLine.extendedProperties.containsKey(
            CashierConstants.kExtendedPropertyTechemetCatPrice,
          )
        ? ticketLine.price
        : grossWeight.value <= 0
        ? 0.00
        : !rate.uom.isConvertible || !payableWeight.uom.isConvertible
        ? ticketLine.price
        : payableWeight.roundOff() *
              (rate.convertRate(payableWeight.uom).value));

    final totalAmount = (ticketLine.elvQuoteIds.isNotEmpty
        ? ticketLine.price
        : ticketLine.extendedProperties.containsKey(
            CashierConstants.kExtendedPropertyTechemetCatPrice,
          )
        ? ticketLine.price
        : grossWeight.value <= 0
        ? 0.00
        : !rate.uom.isConvertible || !payableWeight.uom.isConvertible
        ? ticketLine.price
        : (payableWeight.roundOff() *
                  (rate.convertRate(payableWeight.uom).value)) -
              calculateCashDeduction(deductions));

    return LineCalculatorResult(
      netWeight: netWeight,
      payableWeight: payableWeight,
      price: price,
      totalAmount: totalAmount,
    );
  }

  static double calculateWeightDeduction(List<Deductions>? deductions) {
    final weightDeductions = deductions
        ?.where((x) => x.typeId != 'deductionTypes/Value')
        .toList();
    if (weightDeductions == null || weightDeductions.isEmpty) return 0;
    return weightDeductions
        .toList()
        .map((e) => e.weight ?? UomValue.weight(0, Uom.mt))
        .map((e) => e.roundOff())
        .reduce((a, b) => a + b);
  }

  static double calculateCashDeduction(List<Deductions>? deductions) {
    final cashDeduction = deductions
        ?.where((x) => x.typeId == 'deductionTypes/Value')
        .toList();
    if (cashDeduction == null || cashDeduction.isEmpty) return 0;
    return cashDeduction
        .toList()
        .map((e) => e.value ?? 0)
        .reduce((a, b) => a + b);
  }

  static UomValue getNetPayableWeight(TicketLine line) => UomValue.fromValue(
    line.netWeight!.roundOff() - (line.totalDirtDeduction?.roundOff() ?? 0),
    line.netWeight!.uom,
  );

  static double _roundUpToUnit(double d, Decimal presicion) {
    final unit = presicion.toDouble();
    var roundedUpValue = (d / unit).toInt() * unit;

    if (roundedUpValue != d) {
      roundedUpValue += unit > 0.01 ? unit : 0.00;
    }
    return roundedUpValue;
  }

  static double _roundDownToUnit(double d, Decimal presicion) {
    final unit = presicion.toDouble();
    return (d / unit).toInt() * unit;
  }

  static double round(double value, Decimal precisionValue) =>
      switch (precisionValue.compareTo(Decimal.zero)) {
        1 => _roundUpToUnit(value, precisionValue),
        -1 => _roundDownToUnit(value, precisionValue.abs()),
        _ => value,
      };
}
