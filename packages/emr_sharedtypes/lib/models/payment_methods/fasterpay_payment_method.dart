import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_method_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fasterpay_payment_method.g.dart';

@JsonSerializable()
class FasterpayPaymentMethod extends PaymentMethodBase {
  const FasterpayPaymentMethod({
    required super.paymentMethod,
    required super.enabled,
    required super.maxUpperLimit,
    this.flatFeeValue,
    this.bankCode,
  });

  // Uncomment when ready to use JSON serialization
  factory FasterpayPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$FasterpayPaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FasterpayPaymentMethodToJson(this);

  final double? flatFeeValue;
  final String? bankCode;
}
