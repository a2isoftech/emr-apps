import 'dart:core';

import 'package:emr_one_transport/data/models/jobs/haulier_details.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_truck_and_haulier.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SearchTruckAndHaulier {
  SearchTruckAndHaulier({
    this.internalTrucks = const [],
    this.hauliers = const [],
  });

  factory SearchTruckAndHaulier.fromJson(Map<String, dynamic> json) =>
      _$SearchTruckAndHaulierFromJson(json);

  Map<String, dynamic> toJson() => _$SearchTruckAndHaulierToJson(this);

  List<TruckInfo> internalTrucks;
  List<HaulierDetails> hauliers;
}
