import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_method_base.dart';
import 'package:emr_sharedtypes/models/rounding.dart';
import 'package:json_annotation/json_annotation.dart';

part 'digital_wallet_with_atm_payment_method.g.dart';

@JsonSerializable()
class DigitalWalletWithAtmPaymentMethod extends PaymentMethodBase {
  const DigitalWalletWithAtmPaymentMethod({
    required super.paymentMethod,
    required super.enabled,
    required this.rounding,
    required super.maxUpperLimit,
    this.commissionPercent,
  });

  // Uncomment when ready to use JSON serialization
  factory DigitalWalletWithAtmPaymentMethod.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DigitalWalletWithAtmPaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$DigitalWalletWithAtmPaymentMethodToJson(this);

  final Rounding rounding;
  final double? commissionPercent;
}
