import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_method_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auto_cheque_with_encashment_atm_payment_method.g.dart';

@JsonSerializable()
class AutoChequeWithEncashmentAtmPaymentMethod extends PaymentMethodBase {
  const AutoChequeWithEncashmentAtmPaymentMethod({
    required super.paymentMethod,
    required super.enabled,
    required this.enforceIdentification,
    required this.logoPath,
    required this.agent,
    required super.maxUpperLimit,
    this.minCommission,
    this.commissionPercent,
    this.minDenomination,
    this.flatFeeThreshold,
    this.flatFeeValue,
    this.bankCode,
  });

  // Uncomment when ready to use JSON serialization
  factory AutoChequeWithEncashmentAtmPaymentMethod.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AutoChequeWithEncashmentAtmPaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AutoChequeWithEncashmentAtmPaymentMethodToJson(this);

  final bool enforceIdentification;
  final String logoPath;
  final String agent;
  final double? minCommission;
  final double? commissionPercent;
  final double? minDenomination;
  final double? flatFeeThreshold;
  final double? flatFeeValue;
  final String? bankCode;
}
