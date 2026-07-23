import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:flutter/material.dart';

class RepriceFormData {
  RepriceFormData({
    required this.originalTicketLine,
    required int lineNumber,
    required UomValue netWeight,
    required UomValue dirt,
    required bool isActive,
    required this.extendedProperties,
    required this.grossWeightDateTime,
    Product? product,
    Location? location,
    UomValue? rate,
    double? price,
    double? cashAndDeduction,
    double? payable,
    UomValue? payableWeight,
    Created? created,
    Modified? modified,
  }) {
    this.lineNumber = ValueNotifier(lineNumber);
    this.isActive = ValueNotifier(isActive);
    this.product = ValueNotifier(product);
    this.location = ValueNotifier(location);
    this.netWeight = ValueNotifier(netWeight);
    netWeightValue = ValueNotifier(
      netWeight.value > 0 ? netWeight.value : null,
    );
    netWeightController = ValueNotifier(netWeightValue.value?.toString() ?? '');
    this.dirt = ValueNotifier(dirt);
    dirtValue = ValueNotifier(dirt.value);
    dirtController = ValueNotifier(dirtValue.value.toString());
    this.rate = ValueNotifier(rate);
    rateTextEditController = TextEditingController(
      text: rate?.value.toString() ?? '',
    );
    this.price = ValueNotifier(price ?? 0);
    this.cashAndDeduction = ValueNotifier(cashAndDeduction);
    this.payable = ValueNotifier(payable ?? 0);
    this.payableWeight = ValueNotifier(payableWeight ?? netWeight);
    this.created = ValueNotifier(created);
    this.modified = ValueNotifier(modified);
    _addListeners();
  }

  factory RepriceFormData.fromLine(TicketLine line) {
    final uom = line.netWeight!.uom;
    final copiedNetWeight = UomValue.fromJson(line.netWeight!.toJson());
    final dirtDeduction = line.deductions
        .firstWhereOrNull(
          (x) => x.typeId == CashierConstants.kDeductionTypeDirt,
        )
        ?.weight;
    final copiedDirt = (dirtDeduction == null)
        ? UomValue.fromValue(0, copiedNetWeight.uom)
        : UomValue.fromJson(dirtDeduction.toJson());
    final copiedRate = (line.rate == null)
        ? null
        : UomValue.fromJson(line.rate!.toJson());
    final result = CalculatorUtil.calculateWeightAndPrice(
      grossWeight: line.grossWeight ?? UomValue.fromValue(0, uom),
      rate: line.rate ?? UomValue.fromValue(0, uom, isRate: true),
      deductions: line.deductions,
      ticketLine: line,
      dirt: copiedDirt,
    );

    final payableWeight = result.payableWeight;
    final price = result.price;
    final payable = result.totalAmount;
    return RepriceFormData(
      extendedProperties: line.extendedProperties,
      originalTicketLine: line,
      lineNumber: line.lineNumber!,
      isActive: line.isActive,
      product: line.product,
      location: line.location,
      netWeight: copiedNetWeight,
      dirt: copiedDirt,
      rate: copiedRate,
      price: price.roundOff(uom),
      cashAndDeduction: line.totalCostDeduction?.roundOff(uom),
      payable: payable.roundOff(uom),
      payableWeight: payableWeight,
      created: line.created,
      modified: line.modified,
      grossWeightDateTime: line.grossWeightDateTime,
    );
  }

  void _addListeners() {
    netWeightValue.addListener(_calculateWeightAndPrice);
    dirtValue.addListener(_calculateWeightAndPrice);
    rate.addListener(_calculateWeightAndPrice);
    price.addListener(_calculateWeightAndPrice);
    product.addListener(_onProductChange);
  }

  void _onProductChange() {
    location.value = null;
  }

  TicketLine toTicketLine() {
    final calculatedGrossWeight = originalTicketLine.grossWeight == null
        ? UomValue.fromJson(netWeight.value.toJson())
        : UomValue.fromValue(
            originalTicketLine.grossWeight!.value -
                (originalTicketLine.netWeight!.value - netWeight.value.value),
            netWeight.value.uom,
          );

    final deductions = originalTicketLine.deductions
        .map((x) => Deductions.fromJson(x.toJson()))
        .toList();
    final dirtDeduction = deductions.firstWhereOrNull(
      (x) => x.typeId == CashierConstants.kDeductionTypeDirt,
    );

    if (dirt.value.value == 0 && dirtDeduction != null) {
      deductions.remove(dirtDeduction);
    } else if (dirt.value.value != 0) {
      if (dirtDeduction != null) {
        dirtDeduction.weight = dirt.value;
      } else {
        deductions.add(
          Deductions(
            weight: dirt.value,
            typeId: CashierConstants.kDeductionTypeDirt,
            created: Created(userInfoId: '', userName: '', at: DateTime.now()),
            modified: Modified(
              userInfoId: '',
              userName: '',
              at: DateTime.now(),
            ),
          ),
        );
      }
    }

    return TicketLine(isActive: true)
      ..lineNumber = lineNumber.value
      ..product = product.value
      ..productId = product.value?.id
      ..location = location.value
      ..locationId = location.value?.id
      ..netWeight = netWeight.value
      ..grossWeight = calculatedGrossWeight
      ..rate = rate.value
      ..price = price.value
      ..totalCostDeduction = cashAndDeduction.value
      ..created = created.value
      ..modified = modified.value
      ..extendedProperties = extendedProperties
      ..deductions = deductions
      ..grossWeightDateTime =
          (grossWeightDateTime == DateTime.utc(1) &&
              calculatedGrossWeight.value > 0)
          ? DateTime.now()
          : grossWeightDateTime;
  }

  void _calculateWeightAndPrice() {
    final uom = netWeight.value.uom;
    final netWeighValueRounded = (netWeightValue.value ?? 0.0).roundOff(uom);
    netWeight.value.value = netWeighValueRounded;
    final dirtValueRounded = dirtValue.value.roundOff(uom);
    dirt.value.value = dirtValueRounded;

    final result = CalculatorUtil.calculateWeightAndPrice(
      grossWeight: originalTicketLine.grossWeight ?? netWeight.value,
      rate: rate.value ?? UomValue.fromValue(0, uom, isRate: true),
      deductions: originalTicketLine.deductions,
      ticketLine: originalTicketLine,
      netWeightInput: netWeight.value,
      dirt: dirt.value,
    );
    if (result.netWeight.value != originalTicketLine.netWeight!.value) {
      if (!extendedProperties.containsKey(
        CashierConstants.kExtendedPropertyWeightChange,
      )) {
        extendedProperties.addAll({
          CashierConstants.kExtendedPropertyWeightChange: jsonEncode({
            'previousValue': originalTicketLine.netWeight,
            'newValue': result.netWeight,
          }),
        });
      } else {
        extendedProperties[CashierConstants.kExtendedPropertyWeightChange] =
            jsonEncode({
              'previousValue': originalTicketLine.netWeight,
              'newValue': result.netWeight,
            });
      }
    }

    final originalDirtValue =
        originalTicketLine.deductions
            .firstWhereOrNull(
              (x) => x.typeId == CashierConstants.kDeductionTypeDirt,
            )
            ?.value ??
        0;

    if (dirt.value.value != originalDirtValue) {
      if (!extendedProperties.containsKey(
        CashierConstants.kExtendedPropertyDirtChange,
      )) {
        extendedProperties.addAll({
          CashierConstants.kExtendedPropertyDirtChange: jsonEncode({
            'previousValue': originalDirtValue,
            'newValue': dirt.value.value,
          }),
        });
      } else {
        extendedProperties[CashierConstants.kExtendedPropertyDirtChange] =
            jsonEncode({
              'previousValue': originalDirtValue,
              'newValue': dirt.value.value,
            });
      }
    }

    if (rate.value?.value != originalTicketLine.rate!.value) {
      if (!extendedProperties.containsKey(
        CashierConstants.kExtendedPropertyRateChange,
      )) {
        extendedProperties.addAll({
          CashierConstants.kExtendedPropertyRateChange: jsonEncode({
            'previousValue': originalTicketLine.rate,
            'newValue': rate.value,
          }),
        });
      } else {
        extendedProperties[CashierConstants.kExtendedPropertyRateChange] =
            jsonEncode({
              'previousValue': originalTicketLine.rate,
              'newValue': rate.value,
            });
      }
    }

    payableWeight.value = result.payableWeight;
    price.value = result.price;
    payable.value = result.totalAmount;
  }

  void dispose() {
    product.dispose();
    location.dispose();
    netWeight.dispose();
    rate.dispose();
    dirt.dispose();
    price.dispose();
    cashAndDeduction.dispose();
    payable.dispose();
  }

  final TicketLine originalTicketLine;
  late ValueNotifier<Product?> product;
  late ValueNotifier<Location?> location;
  late ValueNotifier<int> lineNumber;
  late ValueNotifier<bool> isActive;
  late ValueNotifier<UomValue?> rate;
  late ValueNotifier<double> price;
  late ValueNotifier<double?> cashAndDeduction;
  late ValueNotifier<UomValue> payableWeight;
  late ValueNotifier<double> payable;
  late ValueNotifier<Created?> created;
  late ValueNotifier<Modified?> modified;
  late final TextEditingController rateTextEditController;
  late Map<String, dynamic> extendedProperties;
  final DateTime grossWeightDateTime;
  late ValueNotifier<UomValue> netWeight;
  late ValueNotifier<double?> netWeightValue;
  late final ValueNotifier<String> netWeightController;
  late ValueNotifier<UomValue> dirt;
  late ValueNotifier<double> dirtValue;
  late final ValueNotifier<String> dirtController;
}
