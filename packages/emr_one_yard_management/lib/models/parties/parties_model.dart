import 'package:json_annotation/json_annotation.dart';

part 'parties_model.g.dart';

@JsonSerializable()
class PartiesModel {
  PartiesModel({required this.partyAccountNo, required this.partyName});

  factory PartiesModel.fromJson(Map<String, dynamic> json) =>
      _$PartiesModelFromJson(json);
  String partyAccountNo;
  String partyName;

  Map<String, dynamic> toJson() => _$PartiesModelToJson(this);
}
