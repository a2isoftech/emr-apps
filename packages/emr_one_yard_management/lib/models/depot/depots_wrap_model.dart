import 'package:emr_one_yard_management/models/depot/depots_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'depots_wrap_model.g.dart';

@JsonSerializable()
class DepotsWrapModel {
  DepotsWrapModel({required this.depots});

  factory DepotsWrapModel.fromJson(Map<String, dynamic> json) =>
      _$DepotsWrapModelFromJson(json);
  List<DepotsModel> depots;
  Map<String, dynamic> toJson() => _$DepotsWrapModelToJson(this);
}
