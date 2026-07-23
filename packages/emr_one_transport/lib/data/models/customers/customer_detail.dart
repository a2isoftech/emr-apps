import 'package:emr_one_transport/data/models/common/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_detail.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class CustomerDetail {
  CustomerDetail(
    this.customerName,
    this.customerCode,
    this.locationCode,
    this.address,
  );

  factory CustomerDetail.fromJson(Map<String, dynamic> json) =>
      _$CustomerDetailFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDetailToJson(this);

  final String customerName;
  final String customerCode;
  final String? locationCode;
  final Address? address;
}
