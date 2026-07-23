import 'package:json_annotation/json_annotation.dart';

part 'email_address_model.g.dart';

@JsonSerializable()
class SmEmailAddressModel {
  SmEmailAddressModel(this.address, this.name);

  factory SmEmailAddressModel.fromJson(Map<String, dynamic> json) =>
      _$SmEmailAddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$SmEmailAddressModelToJson(this);

  final String address;
  final String name;
}
