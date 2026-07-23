import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_detail.g.dart';

@JsonSerializable(explicitToJson: true)
class TransactionDetail {
  TransactionDetail({
    required this.paymentRecordId,
    required this.transactionType,
    required this.amount,
    required this.at,
  });

  factory TransactionDetail.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailFromJson(json);
  Map<String, dynamic> toJson() => _$TransactionDetailToJson(this);

  final String paymentRecordId;
  final TransactionType transactionType;
  final double amount;
  final DateTime at;
}
