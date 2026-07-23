import 'package:json_annotation/json_annotation.dart';

part 'hazardous_waste_product.g.dart';

@JsonSerializable()
class HazardousWasteProduct {
  HazardousWasteProduct({
    required this.id,
    required this.productCode,
    required this.europeanWasteCode,
    required this.component,
    required this.concentration,
    required this.physicalForm,
    required this.hazardCodes,
    required this.containerType,
    required this.description,
    required this.packingGroup,
    required this.properShippingName,
    required this.specialHandlingRequirements,
    required this.uniDnumber,
    required this.unClass,
    required this.purchasesOrSales,
    required this.wasteManagementOperationRDCode,
  });

  factory HazardousWasteProduct.fromJson(Map<String, dynamic> json) =>
      _$HazardousWasteProductFromJson(json);
  final String id;
  final String productCode;
  final String europeanWasteCode;
  final String component;
  final String concentration;
  final String physicalForm;
  final String hazardCodes;
  final String containerType;
  final String description;

  final String purchasesOrSales;
  final String uniDnumber;
  final String unClass;
  final String properShippingName;
  final String packingGroup;
  final String specialHandlingRequirements;
  final String wasteManagementOperationRDCode;
  Map<String, dynamic> toJson() => _$HazardousWasteProductToJson(this);
}
