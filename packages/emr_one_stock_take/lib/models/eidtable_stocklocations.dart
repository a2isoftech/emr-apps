import 'package:emr_one_stock_take/models/select_option.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EditableStockLocations {
  EditableStockLocations({
    required this.id,
    required this.locationCode,
    required this.productCode,
    required this.productClass,
    required this.productLine,
    required this.description,
    required this.defaultUom,
    this.snapshotAt,
    this.productDesc,
    String? weighedByName,
    String? weighedById,
    UomValue? weight,
    DateTime? weighedDate,
    DateTime? weighedTime,
  })  : weight = ValueNotifier(weight),
        weighedBy = weighedById == null
            ? ValueNotifier(null)
            : ValueNotifier(
                SelectOption(key: weighedById, name: weighedByName ?? ''),
              ),
        weighedDate = ValueNotifier(weighedDate),
        weighedTime = ValueNotifier(weighedTime);

  final String id;
  final String locationCode;
  final String productCode;
  final String productClass;
  final String productLine;
  final String description;
  final String? productDesc;
  final Uom defaultUom;
  final DateTime? snapshotAt;
  final ValueNotifier<UomValue?> weight;
  final ValueNotifier<SelectOption?> weighedBy;
  final ValueNotifier<DateTime?> weighedDate;
  final ValueNotifier<DateTime?> weighedTime;
}
