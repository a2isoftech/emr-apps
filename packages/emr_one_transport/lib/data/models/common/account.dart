import 'package:emr_one_transport/data/models/common/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Account {
  Account({
    this.customerName,
    this.customerCode,
    this.locationName,
    this.locationCode,
    this.address,
    this.countryCode,
    this.postalCode,
    this.sicCode,
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);

  String? customerName;
  String? customerCode;
  String? locationName;
  String? locationCode;
  Address? address;
  String? countryCode;
  String? postalCode;
  String? sicCode;
}
