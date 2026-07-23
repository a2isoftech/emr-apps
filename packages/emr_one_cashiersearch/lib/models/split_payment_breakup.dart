import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:json_annotation/json_annotation.dart';

part 'split_payment_breakup.g.dart';

@JsonSerializable(explicitToJson: true)
class SplitPaymentBreakup {
  SplitPaymentBreakup({
    this.amount = 0,
    this.paymentMethod = PaymentMethod.none,
  });

  factory SplitPaymentBreakup.fromJson(Map<String, dynamic> json) =>
      _$SplitPaymentBreakupFromJson(json);

  Map<String, dynamic> toJson() => _$SplitPaymentBreakupToJson(this);

  final double amount;
  PaymentMethod paymentMethod;
}
