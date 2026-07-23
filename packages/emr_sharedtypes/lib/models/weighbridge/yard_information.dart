import 'package:json_annotation/json_annotation.dart';

part 'yard_information.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class YardInformation {
  YardInformation(
      {this.wmlExemptionNo, this.wasteCarrierRegNo,});

  factory YardInformation.fromJson(Map<String, dynamic> json) =>
      _$YardInformationFromJson(json);

  Map<String, dynamic> toJson() => _$YardInformationToJson(this);

  final String? wmlExemptionNo;
  final String? wasteCarrierRegNo;
}
