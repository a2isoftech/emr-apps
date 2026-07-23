import 'package:emr_one_yard_management/models/depot/depots_wrap_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'depots_data_model.g.dart';

@JsonSerializable()
class DepotsDataModel {
  DepotsDataModel({required this.data});

  factory DepotsDataModel.fromJson(Map<String, dynamic> json) =>
      _$DepotsDataModelFromJson(json);
  DepotsWrapModel data;
  Map<String, dynamic> toJson() => _$DepotsDataModelToJson(this);
}
