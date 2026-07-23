import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_method_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'split_payment_method.g.dart';

@JsonSerializable()
class SplitPaymentMethod extends PaymentMethodBase {
  const SplitPaymentMethod({
    required super.paymentMethod,
    required super.enabled,
    required super.maxUpperLimit,
  });

  // Uncomment when ready to use JSON serialization
  factory SplitPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$SplitPaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SplitPaymentMethodToJson(this);
}
