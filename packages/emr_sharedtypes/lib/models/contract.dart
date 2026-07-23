import 'package:json_annotation/json_annotation.dart';

part 'contract.g.dart';

@JsonSerializable()
class Contract {
  Contract({
    this.id,
    this.accountId,
    this.accountCode,
    this.accountName,
    this.customerReference,
    this.internalReference,
    this.contractOrderBookTypeName,
    this.status,
    this.pricingBasis,
    this.noOfLines,
    this.contractType,
    this.deliveryMethod,
    this.products,
    this.active = true,
  });

  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);

  Map<String, dynamic> toJson() => _$ContractToJson(this);

  String? id;
  String? accountId;
  String? accountCode;
  String? accountName;
  String? customerReference;
  String? internalReference;
  String? contractOrderBookTypeName;
  String? status;
  String? pricingBasis;
  String? noOfLines;
  String? contractType;
  String? deliveryMethod;
  List<String>? products;
  bool active;
}
