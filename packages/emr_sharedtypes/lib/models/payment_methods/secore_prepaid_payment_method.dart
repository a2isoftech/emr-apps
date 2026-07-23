import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_method_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'secore_prepaid_payment_method.g.dart';

@JsonSerializable()
class SecorePrepaidPaymentMethod extends PaymentMethodBase {
  const SecorePrepaidPaymentMethod({
    required super.paymentMethod,
    required super.enabled,
    required super.maxUpperLimit,
    this.commissionPercent = 0,
  });

  // Uncomment when ready to use JSON serialization
  factory SecorePrepaidPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$SecorePrepaidPaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SecorePrepaidPaymentMethodToJson(this);

  final double commissionPercent;
}
