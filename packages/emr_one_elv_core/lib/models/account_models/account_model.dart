import 'package:collection/collection.dart';
import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_sharedtypes/enums/account_type_enum.dart';

class AccountModel {
  AccountModel({
    required this.accountNumber,
    required this.accountLocationCode,
    required this.defaultYardCode,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.address,
    required this.email,
    required this.landlineNumber,
    required this.mobileNumber,
    required this.contactId,
    required this.name,
    required this.accountType,
    this.title,
    this.dateOfBirth,
  });

  static AccountModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value as Map<String, dynamic>;
      return AccountModel(
        accountNumber: json['accountNumber'] as String,
        accountLocationCode: json['accountLocationCode'] as String?,
        defaultYardCode: json['defaultYardCode'] as String? ?? 'XXXX',
        title: json['title'] as String?,
        firstName: json['firstName'] as String? ?? '',
        middleName: json['middleName'] as String? ?? '',
        //A lot of live accounts have last name in
        ////middleName causing validation issues hence the below code.
        lastName: json['lastName'] as String? ??
            json['middleName'] as String? ??
            'MISSING LAST NAME',
        dateOfBirth: json['dateOfBirth'] as String? ?? '',
        address: Address.fromJson(json['address'])!,
        email: json['email'] as String? ?? '',
        landlineNumber: json['landlineNumber'] as String? ?? '',
        mobileNumber: json['mobileNumber'] as String? ?? '',
        contactId: json['contactId'] as int?,
        name: json['name'] as String? ?? '',
        accountType: AccountTypeEnum.values.firstWhereOrNull(
              (v) => v.index == json['accountType'] as int,
            ) ??
            AccountTypeEnum.none,
      );
    }
    return null;
  }

  final String accountNumber;
  final String? accountLocationCode;
  final String defaultYardCode;
  final String? title;
  final String firstName;
  final String middleName;
  final String lastName;
  final String? dateOfBirth;
  final Address address;
  final String email;
  final String landlineNumber;
  final String mobileNumber;
  final int? contactId;
  final String name;
  final AccountTypeEnum accountType;

  Map<String, dynamic> toJson() => {
        'accountNumber': accountNumber,
        if (accountLocationCode != null)
          'accountLocationCode': accountLocationCode,
        'defaultYardCode': defaultYardCode,
        'title': title,
        'firstName': firstName,
        'middleName': middleName,
        'lastName': lastName,
        'dateOfBirth': dateOfBirth,
        'address': address.toJson(),
        'email': email,
        'landlineNumber': landlineNumber,
        'mobileNumber': mobileNumber,
        'contactId': contactId,
        'name': name,
      };

  static List<AccountModel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AccountModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
