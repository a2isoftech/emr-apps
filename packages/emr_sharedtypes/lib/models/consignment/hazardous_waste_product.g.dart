// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hazardous_waste_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HazardousWasteProduct _$HazardousWasteProductFromJson(
        Map<String, dynamic> json) =>
    HazardousWasteProduct(
      id: json['id'] as String,
      productCode: json['productCode'] as String,
      europeanWasteCode: json['europeanWasteCode'] as String,
      component: json['component'] as String,
      concentration: json['concentration'] as String,
      physicalForm: json['physicalForm'] as String,
      hazardCodes: json['hazardCodes'] as String,
      containerType: json['containerType'] as String,
      description: json['description'] as String,
      packingGroup: json['packingGroup'] as String,
      properShippingName: json['properShippingName'] as String,
      specialHandlingRequirements:
          json['specialHandlingRequirements'] as String,
      uniDnumber: json['uniDnumber'] as String,
      unClass: json['unClass'] as String,
      purchasesOrSales: json['purchasesOrSales'] as String,
      wasteManagementOperationRDCode:
          json['wasteManagementOperationRDCode'] as String,
    );

Map<String, dynamic> _$HazardousWasteProductToJson(
        HazardousWasteProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productCode': instance.productCode,
      'europeanWasteCode': instance.europeanWasteCode,
      'component': instance.component,
      'concentration': instance.concentration,
      'physicalForm': instance.physicalForm,
      'hazardCodes': instance.hazardCodes,
      'containerType': instance.containerType,
      'description': instance.description,
      'purchasesOrSales': instance.purchasesOrSales,
      'uniDnumber': instance.uniDnumber,
      'unClass': instance.unClass,
      'properShippingName': instance.properShippingName,
      'packingGroup': instance.packingGroup,
      'specialHandlingRequirements': instance.specialHandlingRequirements,
      'wasteManagementOperationRDCode': instance.wasteManagementOperationRDCode,
    };
