import 'package:json_annotation/json_annotation.dart';

part 'bank_details.g.dart';

@JsonSerializable()
class BankDetails {
  BankDetails({
    required this.accountNumber,
    required this.sortCode,
    required this.ref,
    required this.bankName,
    required this.accountName,
    required this.iban,
    required this.swift,
    required this.paymentTerms,
  });

  factory BankDetails.fromJson(Map<String, dynamic> json) =>
      _$BankDetailsFromJson(json);

  String accountNumber;

  String sortCode;

  String ref;

  String bankName;

  String accountName;

  String iban;

  String swift;

  String paymentTerms;

  Map<String, dynamic> toJson() => _$BankDetailsToJson(this);
}
