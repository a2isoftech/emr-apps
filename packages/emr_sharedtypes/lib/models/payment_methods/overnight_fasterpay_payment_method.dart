import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_method_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'overnight_fasterpay_payment_method.g.dart';

@JsonSerializable()
class OvernightFasterpayPaymentMethod extends PaymentMethodBase {
  const OvernightFasterpayPaymentMethod({
    required super.paymentMethod,
    required super.enabled,
    required super.maxUpperLimit,
    this.bankCode,
  });

  // Uncomment when ready to use JSON serialization
  factory OvernightFasterpayPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$OvernightFasterpayPaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$OvernightFasterpayPaymentMethodToJson(this);

  final String? bankCode;
}
