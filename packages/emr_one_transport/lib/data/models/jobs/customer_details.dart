
import 'package:json_annotation/json_annotation.dart';

part 'customer_details.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class CustomerDetails {
  CustomerDetails({this.code, this.name, this.sicCode});

factory CustomerDetails.fromJson(Map<String, dynamic> json) =>
_$CustomerDetailsFromJson(json);

Map<String, dynamic> toJson() => _$CustomerDetailsToJson(this);

  String? code;
  String? name;
  String? sicCode;

}
