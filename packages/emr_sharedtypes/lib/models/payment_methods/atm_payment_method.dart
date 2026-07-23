import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_method_base.dart';
import 'package:emr_sharedtypes/models/rounding.dart';
import 'package:json_annotation/json_annotation.dart';

part 'atm_payment_method.g.dart';

@JsonSerializable()
class AtmPaymentMethod extends PaymentMethodBase {
  const AtmPaymentMethod({
    required super.paymentMethod,
    required super.enabled,
    required this.rounding,
    required super.maxUpperLimit,
  });

  // Uncomment when ready to use JSON serialization
  factory AtmPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$AtmPaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AtmPaymentMethodToJson(this);

  final Rounding rounding;
}
