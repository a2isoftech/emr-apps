import 'package:emr_one_elv_core/models/address.dart';

class AccountLocation {
  AccountLocation({
    required this.code,
    required this.name,
    required this.address,
  });
  String code;
  String name;
  Address address;
}
