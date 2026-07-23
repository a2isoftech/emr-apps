import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_record_item.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentRecordItem {
  PaymentRecordItem({
    required this.paymentMethod,
    this.totalAmount = 0,
    this.totalFee = 0,
    this.payableAfterCost = 0,
    this.payableAmount = 0,
    this.paymentMethodDetails = const {},
  });

  factory PaymentRecordItem.fromJson(Map<String, dynamic> json) =>
      _$PaymentRecordItemFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentRecordItemToJson(this);

  final double totalAmount;
  final double totalFee;
  final double payableAfterCost;
  final double payableAmount;
  final PaymentMethod paymentMethod;
  final Map<String, dynamic> paymentMethodDetails;
}
