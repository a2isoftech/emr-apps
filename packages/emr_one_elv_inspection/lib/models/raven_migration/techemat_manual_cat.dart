import 'package:emr_one_elv_core/models/enums/part_location_enum.dart';
import 'package:emr_one_elv_inspection/converter/bool_notifier_converter.dart';
import 'package:emr_one_elv_inspection/enums/catalytic_converter_classification_enum.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/techemet_search_response.dart';
import 'package:flutter/material.dart';

class TechemetManualCat extends TechemetSearchResponse {
  TechemetManualCat({
    required super.id,
    required super.fill,
    required super.unitCost,
    required super.unitCostPaid,
    required super.make,
    required super.model,
    required super.serial,
    required super.sealNo,
    this.classification = CatalyticConverterClassificationEnum.original,
    this.partLocation = PartLocationEnum.manifold,
    ValueNotifier<bool>? isSelected,
  }) : isSelected = isSelected ?? ValueNotifier<bool>(false);

  CatalyticConverterClassificationEnum classification;
  PartLocationEnum partLocation;
  @BoolNotifierConverter()
  ValueNotifier<bool> isSelected;
}
