import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_term.g.dart';

@JsonSerializable()
class PaymentTerm {
  PaymentTerm(
    this.financialPaymentMethod,
  );

  factory PaymentTerm.fromJson(Map<String, dynamic> json) =>
      _$PaymentTermFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentTermToJson(this);

  PaymentMethod? financialPaymentMethod;
}
