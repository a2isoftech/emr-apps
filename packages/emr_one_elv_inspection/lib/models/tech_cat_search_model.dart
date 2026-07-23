// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:emr_one_elv_inspection/converter/converter.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tech_cat_search_model.g.dart';

@JsonSerializable()
class TechCatSearchModel {
  TechCatSearchModel({
    required this.converterValue,
    required this.serialNumber,
    required this.engineSizeMatch,
    required this.horsePowerMatch,
    required this.fuelTypeMatch,
    required this.matchingProbability,
    required this.techemetPriceCountSheetDetailId,
    this.catalyticFill,
    this.sid,
    this.variantMatch,
    this.unitCost,
    this.unitCostPaid,
    this.id,
    this.catLocation,
    this.catClassification,
    this.sealNo,
    ValueNotifier<bool>? isSelected,
    this.isManual = false,
    this.vehicleCatId,
    this.make,
    this.model,
    this.image,
  }) : isSelected = isSelected ?? ValueNotifier(false);

  factory TechCatSearchModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TechCatSearchModelFromJson(json);

  Map<String, dynamic> toJson() => _$TechCatSearchModelToJson(this);

  double converterValue;
  String serialNumber;
  final int engineSizeMatch;
  final int horsePowerMatch;
  final int fuelTypeMatch;
  final int matchingProbability;
  double? catalyticFill;
  final int? sid;
  final int? variantMatch;
  final double? unitCost;
  final double? unitCostPaid;
  final String? id;
  String? catLocation;
  String? catClassification;
  String? sealNo;
  @BoolNotifierConverter()
  ValueNotifier<bool> isSelected;
  bool isManual;
  final int? vehicleCatId;
  String? make;
  String? model;
  String? image;
  final int? techemetPriceCountSheetDetailId;
}
