import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable()
class Account {
  Account({
    required this.contactName,
    required this.jobTitle,
    required this.contactEmail,
    required this.town,
    required this.county,
    required this.telephoneNumber,
    required this.countryCode,
    required this.houseNumber,
    required this.postCode,
    required this.mobileNumber,
    required this.faxNumber,
    required this.website,
    required this.address1,
    required this.address2,
    required this.address3,
    required this.vatNumber,
    required this.eoriNumber,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  String contactName;

  String jobTitle;

  String contactEmail;

  String town;

  String county;

  String telephoneNumber;

  String countryCode;

  String houseNumber;

  String postCode;

  String mobileNumber;

  String faxNumber;

  String website;

  String address1;

  String address2;

  String address3;

  String vatNumber;

  String eoriNumber;

  /// `toJson` is the convention for a class to declare
  /// support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
