import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_method_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auto_cheque_payment_method.g.dart';

@JsonSerializable()
class AutoChequePaymentMethod extends PaymentMethodBase {
  const AutoChequePaymentMethod({
    required super.paymentMethod,
    required super.enabled,
    required this.enforceIdentification,
    required this.logoPath,
    required super.maxUpperLimit,
    this.bankCode,
  });

  // Uncomment when ready to use JSON serialization
  factory AutoChequePaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$AutoChequePaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AutoChequePaymentMethodToJson(this);

  final bool enforceIdentification;
  final String logoPath;
  final String? bankCode;
}
