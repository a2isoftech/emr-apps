import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_method_base.g.dart';

@JsonSerializable()
class PaymentMethodBase {
  const PaymentMethodBase({
    required this.paymentMethod,
    required this.enabled,
    required this.maxUpperLimit,
  });

  factory PaymentMethodBase.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodBaseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodBaseToJson(this);

  final PaymentMethod paymentMethod;
  final bool enabled;
  final double maxUpperLimit;
}
