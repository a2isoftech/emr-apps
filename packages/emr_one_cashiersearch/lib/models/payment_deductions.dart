import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_deductions.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentDeductions {
  PaymentDeductions({
    required this.grossAmount,
    required this.totalFee,
    required this.netPayable,
    required this.netPaid,
    required this.roundingAdjustmentOnFee,
    required this.cashDeductions,
    this.advanceDetails,
    this.encashmentValues,
    this.paymentDeductionItems = const [],
  });

  factory PaymentDeductions.fromJson(Map<String, dynamic> json) =>
      _$PaymentDeductionsFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentDeductionsToJson(this);

  double grossAmount;
  double totalFee;
  double cashDeductions;
  double netPayable;
  double netPaid;
  double roundingAdjustmentOnFee;
  AdvanceAdjustmentResult? advanceDetails;
  EncashmentValues? encashmentValues;
  List<PaymentDeductionItem> paymentDeductionItems;
}
