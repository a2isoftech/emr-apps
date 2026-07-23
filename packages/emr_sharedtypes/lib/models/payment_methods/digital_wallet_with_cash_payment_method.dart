import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_method_base.dart';
import 'package:emr_sharedtypes/models/rounding.dart';
import 'package:json_annotation/json_annotation.dart';

part 'digital_wallet_with_cash_payment_method.g.dart';

@JsonSerializable()
class DigitalWalletWithCashPaymentMethod extends PaymentMethodBase {
  const DigitalWalletWithCashPaymentMethod({
    required super.paymentMethod,
    required super.enabled,
    required this.rounding,
    required super.maxUpperLimit,
    this.commissionPercent,
  });

  factory DigitalWalletWithCashPaymentMethod.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DigitalWalletWithCashPaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$DigitalWalletWithCashPaymentMethodToJson(this);

  final Rounding rounding;
  final double? commissionPercent;
}
