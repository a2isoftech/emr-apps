import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_method_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manual_cheque_payment_method.g.dart';

@JsonSerializable()
class ManualChequePaymentMethod extends PaymentMethodBase {
  const ManualChequePaymentMethod({
    required super.paymentMethod,
    required super.enabled,
    required super.maxUpperLimit,
  });

  // Uncomment when ready to use JSON serialization
  factory ManualChequePaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$ManualChequePaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ManualChequePaymentMethodToJson(this);
}
