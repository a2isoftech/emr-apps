import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'truck_info.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TruckInfo {
  TruckInfo({
    this.dispatchYard,
    this.haulierType,
    this.assetNumber,
    this.vrm,
    this.driverName,
    this.haulierCode,
    this.haulierName,
  });

  factory TruckInfo.fromJson(Map<String, dynamic> json) =>
      _$TruckInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TruckInfoToJson(this);

  String? dispatchYard;
  String? haulierType;
  String? assetNumber;
  String? vrm;
  String? driverName;
  String? haulierCode;
  String? haulierName;
}
