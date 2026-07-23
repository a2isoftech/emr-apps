import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_one_elv_quotes/models/common_classes/create_account/create_account_contact_prefs.dart';

class CreateAccountRequest {
  /// Returns a new [CreateAccountRequest] instance.
  CreateAccountRequest({
    required this.address,
    required this.firstName,
    required this.surname,
    required this.emailAddress,
    required this.contactPreferences,
    required this.dateOfBirth,
    required this.yardCode,
    this.referrerTypeId,
    this.title,
    this.mobileNumber,
  });

  Address address;
  String firstName;
  String surname;
  String emailAddress;
  CreateAccountContactPreferences contactPreferences;
  DateTime dateOfBirth;
  String yardCode;
  int? referrerTypeId;
  String? title;
  String? mobileNumber;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (referrerTypeId != null) {
      json['referrerTypeId'] = referrerTypeId;
    }
    json['address'] = address.toJson();
    json['firstName'] = firstName;
    json['surname'] = surname;
    if (title != null) {
      json['title'] = title;
    }
    json['emailAddress'] = emailAddress;
    if (mobileNumber != null) {
      json['mobileNumber'] = mobileNumber;
    }
    json['contactPreferences'] = contactPreferences.toJson();
    json['dateOfBirth'] = dateOfBirth.toUtc().toIso8601String();
    json['yardCode'] = yardCode;
    return json;
  }

  static CreateAccountRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CreateAccountRequest(
        address: Address.fromJson(json['address'])!,
        firstName: json['firstName'] as String,
        surname: json['surname'] as String,
        emailAddress: json['emailAddress'] as String,
        contactPreferences: CreateAccountContactPreferences.fromJson(
          json['contactPreferences'],
        )!,
        dateOfBirth: json['dateOfBirth'] as DateTime,
        yardCode: json['yardCode'] as String,
        referrerTypeId: json['referrerTypeId'] as int?,
        title: json['title'] as String?,
        mobileNumber: json['mobileNumber'] as String?,
      );
    }
    return null;
  }
}
