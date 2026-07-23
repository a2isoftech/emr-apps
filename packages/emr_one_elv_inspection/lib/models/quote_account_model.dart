import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quote_account_model.g.dart';

@JsonSerializable()
class QuoteAccountModel {
  QuoteAccountModel({
    required this.accountNumber,
    required this.accountType,
  });

  factory QuoteAccountModel.fromJson(Map<String, dynamic> json) =>
      _$QuoteAccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteAccountModelToJson(this);

  String accountNumber;

  @JsonKey(
    name: 'accountType',
    fromJson: accountTypeFromJson,
    toJson: accountTypeToJson,
  )
  QuoteAccountType accountType;
}
