import 'dart:core';

import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'haulier_details.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class HaulierDetails {
  HaulierDetails({
    this.haulierCode,
    this.haulierName,
    this.haulierType,
    this.assetNumber,
    this.vrm,
    this.trucks = const [],
  });

  factory HaulierDetails.fromJson(Map<String, dynamic> json) =>
      _$HaulierDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$HaulierDetailsToJson(this);

  String? haulierCode;
  String? haulierName;
  String? haulierType;
  String? assetNumber;
  String? vrm;
  List<TruckInfo> trucks;
}
