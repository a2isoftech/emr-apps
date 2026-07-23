import 'package:json_annotation/json_annotation.dart';

part 'payment_amount.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentAmount {
  PaymentAmount({
    required this.amount,
    required this.currencyCode,
    required this.exchangeRate,
  });

  factory PaymentAmount.fromJson(Map<String, dynamic> json) =>
      _$PaymentAmountFromJson(json);
  final double amount;
  final String currencyCode;
  final double exchangeRate;

  Map<String, dynamic> toJson() => _$PaymentAmountToJson(this);
}
