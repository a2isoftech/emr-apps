
import 'dart:core';

import 'package:emr_one_transport/data/models/common/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location_info.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class LocationInfo {
  LocationInfo({
    this.code,
    this.name,
    this.address,
    this.description,
    this.active,
    this.sitePermitHolder,
    this.sitePermitOrExemptionNumber,
});

factory LocationInfo.fromJson(Map<String, dynamic> json) =>
_$LocationInfoFromJson(json);

Map<String, dynamic> toJson() => _$LocationInfoToJson(this);

  String? code;
  String? name;
  Address? address;
  //Guid PrimaryContactId = default(Guid);
  String? description = '';
  bool? active = true;
  bool? sitePermitHolder = false;
  String? sitePermitOrExemptionNumber = '';
}
