import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_method_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cash_payment_method.g.dart';

@JsonSerializable()
class CashPaymentMethod extends PaymentMethodBase {
  const CashPaymentMethod({
    required super.paymentMethod,
    required super.enabled,
    required super.maxUpperLimit,
    this.numberOfRemittancesToPrint,
  });

  // Uncomment when ready to use JSON serialization
  factory CashPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$CashPaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CashPaymentMethodToJson(this);

  final int? numberOfRemittancesToPrint;
}
