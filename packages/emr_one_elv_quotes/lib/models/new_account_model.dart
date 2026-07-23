import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_one_elv_quotes/common/common.dart';

class NewAccountModel {
  NewAccountModel({
    required this.titleItems,
    required this.canEmail,
    required this.canPost,
    required this.canPhone,
    required this.canSms,
    required this.isManualAddress,
    this.accountId,
    this.title,
    this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.email,
    this.address,
    this.mobile,
    this.yardCode,
  });

  factory NewAccountModel.initial() => NewAccountModel(
        titleItems: _createTitleItems(),
        canEmail: false,
        canPost: false,
        canPhone: false,
        canSms: false,
        isManualAddress: false,
      );

  CustomControlItems<String> titleItems;
  bool canEmail;
  bool canPost;
  bool canSms;
  bool canPhone;
  bool isManualAddress;
  String? accountId;
  String? title;
  String? firstName;
  String? lastName;
  DateTime? dateOfBirth;
  String? email;
  Address? address;
  String? mobile;
  String? yardCode;

  static CustomControlItems<String> _createTitleItems() =>
      CustomControlItems.fromIterable<String>(
        ['Mr', 'Mrs', 'Miss', 'Ms', 'Dr'],
        (item) => item,
      );
}
