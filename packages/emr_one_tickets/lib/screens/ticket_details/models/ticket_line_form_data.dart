import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class TicketLineFormData {
  TicketLineFormData({
    required this.binNo,
    required this.consignmentNoteNo,
    required this.costs,
    required this.created,
    required this.deductions,
    required this.grossWeight,
    required this.grossWeightDateTime,
    required this.hasSeenZero,
    required this.isGrossFromPreviousWeight,
    required this.lineNumber,
    required this.location,
    required this.manualGrossWeightReason,
    required this.modified,
    required this.netWeight,
    required this.packingListReference,
    required this.partyWasteStreamNumber,
    required this.payableAfterCostAndDeduction,
    required this.payableBeforeCostAndDeduction,
    required this.priceOrigin,
    required this.product,
    required this.rate,
    required this.sealNumber,
    required this.tareWeightSerial,
    required this.stockAsProduct,
    required this.weightSerial,
  });

  TicketLineFormData.empty({required this.lineNumber, Uom unit = Uom.mt})
    : binNo = ValueNotifier(null),
      consignmentNoteNo = ValueNotifier(null),
      costs = ValueNotifier([]),
      created = ValueNotifier(null),
      deductions = ValueNotifier([]),
      grossWeight = ValueNotifier(null),
      grossWeightDateTime = ValueNotifier(null),
      hasSeenZero = ValueNotifier(false),
      isGrossFromPreviousWeight = ValueNotifier(false),
      location = ValueNotifier(PickerItem<String, String>('', '')),
      manualGrossWeightReason = ValueNotifier(null),
      modified = ValueNotifier(null),
      netWeight = ValueNotifier(null),
      packingListReference = ValueNotifier(null),
      partyWasteStreamNumber = ValueNotifier(null),
      payableAfterCostAndDeduction = ValueNotifier(0),
      payableBeforeCostAndDeduction = ValueNotifier(0),
      priceOrigin = ValueNotifier(Enum$PriceOriginType.NONE),
      product = ValueNotifier(PickerItem<String, String>('', '')),
      rate = ValueNotifier(UomValue.rate(0, unit)),
      sealNumber = ValueNotifier(null),
      tareWeightSerial = ValueNotifier(null),
      stockAsProduct = ValueNotifier(PickerItem<String, String>('', '')),
      weightSerial = ValueNotifier(null);

  TicketLineFormData copyWith({
    String? binNo,
    String? consignmentNoteNo,
    List<CostFormData>? costs,
    Created? created,
    List<DeductionFormData>? deductions,
    UomValue? grossWeight,
    DateTime? grossWeightDateTime,
    bool? hasSeenZero,
    bool? isGrossFromPreviousWeight,
    int? lineNumber,
    PickerItem<String, String>? location,
    String? manualGrossWeightReason,
    Modified? modified,
    UomValue? netWeight,
    String? packingListReference,
    String? partyWasteStreamNumber,
    double? payableAfterCostAndDeduction,
    double? payableBeforeCostAndDeduction,
    Enum$PriceOriginType? priceOrigin,
    PickerItem<String, String>? product,
    UomValue? rate,
    String? sealNumber,
    String? tareWeightSerial,
    PickerItem<String, String>? stockAsProduct,
    String? weightSerial,
  }) {
    return TicketLineFormData(
      binNo: ValueNotifier<String?>(binNo ?? this.binNo.value),
      consignmentNoteNo: ValueNotifier<String?>(
        consignmentNoteNo ?? this.consignmentNoteNo.value,
      ),
      costs: ValueNotifier<List<CostFormData>>(
        costs ?? List<CostFormData>.from(this.costs.value),
      ),
      created: ValueNotifier<Created?>(created ?? this.created.value),
      deductions: ValueNotifier<List<DeductionFormData>>(
        deductions ?? List<DeductionFormData>.from(this.deductions.value),
      ),
      grossWeight: ValueNotifier<UomValue?>(
        grossWeight ?? this.grossWeight.value,
      ),
      grossWeightDateTime: ValueNotifier<DateTime?>(
        grossWeightDateTime ?? this.grossWeightDateTime.value,
      ),
      hasSeenZero: ValueNotifier<bool>(hasSeenZero ?? this.hasSeenZero.value),
      isGrossFromPreviousWeight: ValueNotifier<bool>(
        isGrossFromPreviousWeight ?? this.isGrossFromPreviousWeight.value,
      ),
      lineNumber: lineNumber ?? this.lineNumber,
      location: ValueNotifier<PickerItem<String, String>>(
        location ?? this.location.value,
      ),
      manualGrossWeightReason: ValueNotifier<String?>(
        manualGrossWeightReason ?? this.manualGrossWeightReason.value,
      ),
      modified: ValueNotifier<Modified?>(modified ?? this.modified.value),
      netWeight: ValueNotifier<UomValue?>(netWeight ?? this.netWeight.value),
      packingListReference: ValueNotifier<String?>(
        packingListReference ?? this.packingListReference.value,
      ),
      partyWasteStreamNumber: ValueNotifier<String?>(
        partyWasteStreamNumber ?? this.partyWasteStreamNumber.value,
      ),
      payableAfterCostAndDeduction: ValueNotifier<double>(
        payableAfterCostAndDeduction ?? this.payableAfterCostAndDeduction.value,
      ),
      payableBeforeCostAndDeduction: ValueNotifier<double>(
        payableBeforeCostAndDeduction ??
            this.payableBeforeCostAndDeduction.value,
      ),
      priceOrigin: ValueNotifier<Enum$PriceOriginType?>(
        priceOrigin ?? this.priceOrigin.value,
      ),
      product: ValueNotifier<PickerItem<String, String>>(
        product ?? this.product.value,
      ),
      rate: ValueNotifier<UomValue>(rate ?? this.rate.value),
      sealNumber: ValueNotifier<String?>(sealNumber ?? this.sealNumber.value),
      tareWeightSerial: ValueNotifier<String?>(
        tareWeightSerial ?? this.tareWeightSerial.value,
      ),
      stockAsProduct: ValueNotifier<PickerItem<String, String>>(
        stockAsProduct ?? this.stockAsProduct.value,
      ),
      weightSerial: ValueNotifier<String?>(
        weightSerial ?? this.weightSerial.value,
      ),
    );
  }

  final ValueNotifier<String?> binNo;

  final ValueNotifier<String?> consignmentNoteNo;

  final ValueNotifier<List<CostFormData>> costs;

  final ValueNotifier<Created?> created;

  final ValueNotifier<List<DeductionFormData>> deductions;

  final ValueNotifier<UomValue?> grossWeight;

  final ValueNotifier<DateTime?> grossWeightDateTime;

  final ValueNotifier<bool> hasSeenZero;

  final ValueNotifier<bool> isGrossFromPreviousWeight;

  final int lineNumber;

  final ValueNotifier<PickerItem<String, String>> location;

  final ValueNotifier<String?> manualGrossWeightReason;

  final ValueNotifier<Modified?> modified;

  final ValueNotifier<UomValue?> netWeight;

  final ValueNotifier<String?> packingListReference;

  final ValueNotifier<String?> partyWasteStreamNumber;

  final ValueNotifier<double> payableAfterCostAndDeduction;

  final ValueNotifier<double> payableBeforeCostAndDeduction;

  final ValueNotifier<Enum$PriceOriginType?> priceOrigin;

  final ValueNotifier<PickerItem<String, String>> product;

  final ValueNotifier<UomValue> rate;

  final ValueNotifier<String?> sealNumber;

  final ValueNotifier<String?> tareWeightSerial;

  final ValueNotifier<PickerItem<String, String>> stockAsProduct;

  final ValueNotifier<String?> weightSerial;
}
