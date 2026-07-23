
import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class Address {
  Address(
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.address5,
    this.address6,
    this.postCode,
    this.what3Words,
    this.countryCode,
  );

factory Address.fromJson(Map<String, dynamic> json) =>
_$AddressFromJson(json);

Map<String, dynamic> toJson() => _$AddressToJson(this);

  String? address1 ;
  String? address2 ;
  String? address3 ;
  String? address4 ;
  String? address5 ;
  String? address6 ;
  String? postCode ;
  String? what3Words ;
  String? countryCode ;
  // LatLong? GeoLocation = null
}
