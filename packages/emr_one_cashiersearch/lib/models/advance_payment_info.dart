import 'package:emr_one_cashiersearch/models/transaction_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'advance_payment_info.g.dart';

@JsonSerializable(explicitToJson: true)
class AdvancePaymentInfo {
  AdvancePaymentInfo({
    required this.transactionDetails,
    required this.outstandingBalance,
  });

  factory AdvancePaymentInfo.fromJson(Map<String, dynamic> json) =>
      _$AdvancePaymentInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AdvancePaymentInfoToJson(this);

  final List<TransactionDetail> transactionDetails;
  final double outstandingBalance;
}
