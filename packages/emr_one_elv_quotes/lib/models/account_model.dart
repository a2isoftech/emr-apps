import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_sharedtypes/enums/enums.dart';

class AccountModel {
  AccountModel({
    required this.code,
    required this.name,
    required this.address,
    required this.email,
    required this.mobilePhone,
    required this.landline,
    required this.accountType,
    required this.locations,
    required this.contact,
  });

  String? code;
  String? name;
  Address address;
  String? email;
  String? mobilePhone;
  String? landline;
  List<Contact>? contact;
  AccountTypeEnum accountType;
  List<AccountLocation> locations;
}
