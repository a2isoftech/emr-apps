import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_deduction_item.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentDeductionItem {
  PaymentDeductionItem({
    this.paymentMethod = PaymentMethod.none,
    this.grossAmount = 0,
    this.totalFee = 0,
    this.payableAfterCostAndDeduction = 0,
    this.payableAmount = 0,
    this.roundingAdjustment = 0,
    this.encashmentValues,
  });

  factory PaymentDeductionItem.fromJson(Map<String, dynamic> json) =>
      _$PaymentDeductionItemFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentDeductionItemToJson(this);

  final PaymentMethod paymentMethod;
  final double grossAmount;
  final double totalFee;
  final double payableAfterCostAndDeduction;
  final double payableAmount;
  final double roundingAdjustment;
  final EncashmentValues? encashmentValues;
}
