import 'package:emr_one_portal/screens/screens.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account_details_model.g.dart';

@JsonSerializable()
class AccountDetailsModel {
  AccountDetailsModel({
    required this.partyAccountNumber,
    required this.accountName,
    required this.accountDetails,
    required this.bankDetails,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory AccountDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AccountDetailsModelFromJson(json);

  factory AccountDetailsModel.clone(AccountDetailsModel original) {
    final accountJson = original.accountDetails.toJson();
    final bankDetailsJson = original.bankDetails.toJson();
    return AccountDetailsModel(
      partyAccountNumber: original.partyAccountNumber,
      accountName: original.accountName,
      accountDetails: Account.fromJson(accountJson),
      bankDetails: BankDetails.fromJson(bankDetailsJson),
    );
  }

  String accountName;

  String partyAccountNumber;

  final Account accountDetails;

  final BankDetails bankDetails;

  /// `toJson` is the convention for a class to
  /// declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$AccountDetailsModelToJson(this);
}
