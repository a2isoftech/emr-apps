import 'package:emr_sharedtypes/models/consignment/hazardous_waste_product.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:flutter/material.dart';

class HazardousRequestData {
  HazardousRequestData({
    required this.id,
    required String component,
    required String concentration,
    required String hazardCodes,
    required String physicalForm,
    required String europeanWasteCode,
    required String containerType,
    required String description,
    required this.productCode,
    String? wasteManagementOperationRDCode,
    UomValue? weight,
  }) {
    this.component = ValueNotifier(component);
    this.concentration = ValueNotifier(concentration);
    this.hazardCodes = ValueNotifier(hazardCodes);
    this.containerType = ValueNotifier(containerType);
    this.physicalForm = ValueNotifier(physicalForm);
    this.europeanWasteCode = ValueNotifier(europeanWasteCode);
    this.description = ValueNotifier(description);
    this.wasteManagementOperationRDCode =
        ValueNotifier(wasteManagementOperationRDCode);
    this.weight = ValueNotifier(weight);
  }

  factory HazardousRequestData.fromHwGrades(
    HazardousWasteProduct grade,
    UomValue? netWeight,
  ) {
    return HazardousRequestData(
      id: grade.id,
      component: grade.component,
      concentration: grade.concentration,
      hazardCodes: grade.hazardCodes,
      containerType: grade.containerType,
      description: grade.description,
      physicalForm: grade.physicalForm,
      europeanWasteCode: grade.europeanWasteCode,
      wasteManagementOperationRDCode: grade.wasteManagementOperationRDCode,
      productCode: grade.productCode,
      weight: netWeight,
    );
  }

  final String id;
  late ValueNotifier<String> component;
  late String productCode;
  late ValueNotifier<String> concentration;
  late ValueNotifier<String> hazardCodes;
  late ValueNotifier<String> physicalForm;
  late ValueNotifier<String> containerType;
  late ValueNotifier<String> europeanWasteCode;
  late ValueNotifier<String> description;
  late ValueNotifier<String?> wasteManagementOperationRDCode;
  late ValueNotifier<UomValue?> weight;
}
