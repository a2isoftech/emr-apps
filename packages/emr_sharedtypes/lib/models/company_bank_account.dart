import 'package:emr_sharedtypes/models/address.dart';
import 'package:emr_sharedtypes/models/company.dart';
import 'package:emr_sharedtypes/models/territory.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company_bank_account.g.dart';

@JsonSerializable()
class CompanyBankAccount {
  CompanyBankAccount({
    required this.id,
    required this.code,
    required this.territoryCode,
    required this.territoryId,
    required this.companyCode,
    required this.companyId,
    required this.bankName,
    required this.defaultAccount,
    required this.company,
    required this.territory,
    required this.sortCode,
    required this.accountNumber,
    required this.address,
  });

  factory CompanyBankAccount.fromJson(Map<String, dynamic> json) =>
      _$CompanyBankAccountFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyBankAccountToJson(this);

  final String id;
  final String code;
  final String territoryCode;
  final String territoryId;
  final String companyCode;
  final String companyId;
  final String bankName;
  final String defaultAccount;
  final Company? company;
  final Territory? territory;
  final String sortCode;
  final String accountNumber;
  final Address address;
}
