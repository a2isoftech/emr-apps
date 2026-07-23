import 'dart:collection';

import 'package:collection/collection.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_one_crm/temp/mock_data.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart' hide Contract;
import 'package:flutter/widgets.dart';

class PartyNewContractViewModel {
  PartyNewContractViewModel(
    this.partyAccountNo, {
    this.isSpot = true,
    this.orderBook,
  });

  factory PartyNewContractViewModel.fromContract(
    Contract contract,
    String partyAccountNo,
    List<ArisingPoint> arisingPoints,
    List<OrderBook> orderBooks,
    List<Grade> grades, {
    required bool isEditing,
    required bool isCloning,
  }) {
    // The screen is split into delivered and collected. Here we're checking
    // whether the collected lines all have common values that we can use to
    // pre-populate the screen. If there are mixed values we let the user fill
    // them in as we're unable to decide for them.
    final deliveredLines = contract.lines
        .where(
          (element) =>
              element.deliveryMethod == CrmDeliveryMethod.delivered ||
              element.deliveryMethod == CrmDeliveryMethod.both,
        )
        .toList();

    final nonDeliveredLines = contract.lines
        .where(
          (element) =>
              element.deliveryMethod != CrmDeliveryMethod.delivered ||
              element.deliveryMethod == CrmDeliveryMethod.both,
        )
        .toList();

    // Check whether all the non-delivered lines are collectedFullyCharged.
    final isFullyCharged = nonDeliveredLines.every(
      (element) =>
          element.lineLocations?.any((element) => element.fullyCharged) ??
          false,
    );

    // Check whether all the non-delivered
    // lines have the same haulageAdjustment.
    final linesHaveSameHaulageAdjustment = nonDeliveredLines
        .singleValueIn((element) => element.haulageAdjustment!.value);

    // Check whether all the lines have the same depot (which can be 'ANY') for
    // all depot premiums.
    final linesHaveSameDepot = contract.lines
        .expand<DepotPremium>((element) => element.depotPremiums)
        .singleValueIn((element) => element.depot.code);

    // Check whether all the lines have the same arising point.
    final linesHaveSameArisingPoint =
        contract.lines.map((element) => element.arisingPointId).singleValueIn();

    // Check whether all the lines have the same C to F adjustment.
    final linesHaveSameCToFAdjustment = nonDeliveredLines
        .map((element) => element.cToFAdjustment)
        .singleValueIn();

    // Map the lines to collected and/or delivered.
    final deliveryMethods = HashSet<CrmDeliveryMethod>();
    if (contract.lines.any(
      (element) =>
          element.deliveryMethod == CrmDeliveryMethod.collected ||
          element.deliveryMethod == CrmDeliveryMethod.collectedLessCharge ||
          element.deliveryMethod == CrmDeliveryMethod.collectedFullyCharged ||
          element.deliveryMethod == CrmDeliveryMethod.both,
    )) {
      deliveryMethods.add(CrmDeliveryMethod.collected);
    }
    if (contract.lines.any(
      (element) =>
          element.deliveryMethod == CrmDeliveryMethod.delivered ||
          element.deliveryMethod == CrmDeliveryMethod.both,
    )) {
      deliveryMethods.add(CrmDeliveryMethod.delivered);
    }

    final uniqueGradeBrokerPairs = contract.lines
        .map((l) => MapEntry(l.grade, (l.brokerReference ?? '').trim()))
        .toSet();

    final gplGrades = uniqueGradeBrokerPairs
        .map((pair) {
          final gradeCode = pair.key;
          final brokerRef = pair.value;

          final contractLine = contract.lines.firstWhere(
            (line) =>
                line.grade == gradeCode &&
                (line.brokerReference ?? '').trim() == brokerRef,
          );

          final deliveredRate = deliveredLines
              .firstWhereOrNull(
                (element) => element.grade == gradeCode,
              )
              ?.depotPremiums
              .first
              .rate;

          final collectedRate = nonDeliveredLines
              .firstWhereOrNull(
                (element) => element.grade == gradeCode,
              )
              ?.depotPremiums
              .first
              .rate;

          final matchingGrades = grades
              .where((element) => element.gradeCode == gradeCode)
              .toList();

          final formattedGrade = <GplGrade>[];

          for (final element in matchingGrades) {
            if (element is GplGrade) {
              formattedGrade.add(
                GplGrade(
                  element.gradeCode,
                  element.description,
                  element.gradeGroup,
                  element.gradeType,
                  element.baseRate,
                  ValueUomPair(
                    isRate: true,
                    value: isEditing ? (deliveredRate?.value ?? 0) : 0,
                    uom: (deliveredRate ?? collectedRate!).uom,
                  ),
                  ValueUomPair(
                    isRate: true,
                    value: isEditing ? (collectedRate?.value ?? 0) : 0,
                    uom: (collectedRate ?? deliveredRate!).uom,
                  ),
                  (isEditing || isCloning) && !contractLine.isSpot
                      ? contractLine.targetTonnage
                      : ValueUomPair(),
                  element.materialDescription,
                  contractLine.targetLoads ?? 0,
                  [],
                  brokerRef.isNotEmpty
                      ? brokerRef
                      : (element.brokerReference ?? ''),
                ),
              );
            }
          }
          return formattedGrade;
        })
        .expand((list) => list)
        .toList();

    // Populate the new view model with as much information as we can.
    final newModel = PartyNewContractViewModel(partyAccountNo)
      ..contract = contract
      ..isSpot = contract.type == ContractTypeEnum.spot
      ..isFullyCharged = isFullyCharged
      ..orderBook = orderBooks.firstWhere(
        (x) => x.id == contract.orderBookTypeId,
      )
      ..contractType = contract.bookType == ContractBookType.purchase
          ? ContractType.purchase()
          : ContractType.sales()
      ..targetLoads = contract.targetLoads
      ..defaultUom = contract.lines.first.targetTonnage.uom.uomId
      ..priceType = MockData.getPriceTypes()
              .singleWhere((pt) => pt.id == contract.priceTypeId)
      ..currencyCode = contract.currencyCode
      ..internalNotes = isEditing ? contract.internalNotes : null
      ..externalNotes = isEditing ? contract.externalNotes : null
      ..deliveryNotes = isEditing ? contract.deliveryNotes : null
      ..paymentNotes = isEditing ? contract.paymentNotes : null
      ..haulageAdjustment = linesHaveSameHaulageAdjustment &&
              (nonDeliveredLines.first.haulageAdjustment!.value) > 0
          ? nonDeliveredLines.first.haulageAdjustment
          : null
      ..cToFAdjustment = (isEditing && linesHaveSameCToFAdjustment)
          ? nonDeliveredLines.first.cToFAdjustment
          : null
      ..depot = linesHaveSameDepot
          ? contract.lines.first.depotPremiums.first.depot
          : Depot.any()
      ..arisingPoint = linesHaveSameArisingPoint
          ? contract.lines.first.arisingPointId == ArisingPoint.any().id
              ? ArisingPoint.any()
              : arisingPoints.firstWhere(
                  (element) =>
                      element.id == contract.lines.first.arisingPointId,
                )
          : ArisingPoint.any()
      ..deliveryMethods = deliveryMethods
      ..gplGrades = gplGrades
      ..startDate = isEditing ? contract.startDate! : DateTime.now()
      ..endDate = isEditing
          ? contract.endDate!
          : DateTime.now().add(_initialEndDateDuration)
      ..customerContractRef = isEditing ? contract.customerContractRef : null;

    return newModel;
  }

  static const _initialEndDateDuration = Duration(days: 14);

  // When editing a contract, we keep hold of it for mapping Ids when saving.
  Contract? contract;

  // Step 1.

  final String partyAccountNo;

  bool isSpot = false;

  bool isFullyCharged = false;
  
  bool isLessCharged = false;

  bool displayCollectedDeltaOnRemittance = false;

  bool hasCToF = false;

  OrderBook? orderBook;

  ContractType? contractType;

  int targetLoads = 0;

  int defaultUom = 0;

  PriceType? priceType;

  String? currencyCode;

  String? internalNotes;

  String? externalNotes;

  String? deliveryNotes;

  String? paymentNotes;

  String? internalLME;
  
  int? classification;

  String? placeOfDelivery;

  String? customerContractRef;

  DateTime startDate = DateTime.now();

  DateTime endDate = DateTime.now().add(_initialEndDateDuration);

  UomValue? haulageAdjustment;

  UomValue? collectedDelta;

  double? cToFAdjustment;

  Depot depot = Depot.any();
  bool regenerateGrades = false;
  List<PricingList> pricingList = List.empty(growable: true);
  List<PricingList> pricingUpdateModel = [];
  ArisingPoint? arisingPoint;
  List<ArisingPoint> selectedArisingPoints = [];
  HashSet<CrmDeliveryMethod> deliveryMethods = HashSet<CrmDeliveryMethod>();
  List<Depot> selectedDepots = [];
  ArisingPoint? selectedDeliveryPoint; 
  // Step 2.

  List<PartyNewSpotGradeViewModel> grades = [];

  final HashSet<String> selectedGrades = HashSet<String>();

  List<GplGrade> gplGrades = [];
}

class PricingList {
  PricingList({
    required this.grade,
    required this.targetWeightPerLoad,
    required this.collectedPrice,
    required this.deliveredPrice,
    required this.weight,
    this.arisingPoints,
    this.depots,
    this.haulageCharge,
    this.loadCount = 0,
  });

  factory PricingList.empty() {
    return PricingList(
      grade: GplGrade.empty(),
      targetWeightPerLoad: ValueUomPair(),
      collectedPrice: ValueUomPair(),
      deliveredPrice: ValueUomPair(),
      weight: ValueUomPair(),
    );
  }

  factory PricingList.copy(PricingList e) {
    return PricingList(
      grade: GplGrade(
        e.grade.gradeCode,
        e.grade.description,
        e.grade.gradeGroup,
        e.grade.gradeType,
        e.grade.baseRate,
        e.grade.deliveryRate,
        e.grade.collectedRate,
        e.grade.contractWeight,
        e.grade.materialDescription,
        e.grade.targetLoads,
        [],
        e.grade.brokerReference ?? '',
      ),
      targetWeightPerLoad: e.targetWeightPerLoad,
      collectedPrice: e.collectedPrice,
      deliveredPrice: e.deliveredPrice,
      weight: e.weight,
      depots: e.depots,
      arisingPoints: e.arisingPoints,
      haulageCharge: e.haulageCharge,
      loadCount: e.loadCount,
    );
  }

  GplGrade grade;
  ValueUomPair targetWeightPerLoad;
  ValueUomPair collectedPrice;
  ValueUomPair deliveredPrice;
  ValueUomPair weight;
  int loadCount;
  List<Depot>? depots;
  List<ArisingPoint>? arisingPoints;
  UomValue? haulageCharge;
}

class PartyNewSpotGradeViewModel {
  PartyNewSpotGradeViewModel();
  final key = GlobalKey();

  Grade grade = Grade.empty();

  ValueUomPair? contractWeight;

  String? materialDescription;

  String? deliveryPeriod;

  CrmDeliveryMethod? deliveryMethod;

  ArisingPoint arisingPoint = ArisingPoint.any();

  bool selected = true;

  ValueUomPair? collectedRate;

  ValueUomPair? deliveredRate;
}

extension ContractLineExtensions on Iterable<ContractLine> {
  bool singleValueIn<T>(T Function(ContractLine) toElement) =>
      map(toElement).toSet().toList().length == 1;
}

extension DepotPremiumExtensions on Iterable<DepotPremium> {
  bool singleValueIn<T>(T Function(DepotPremium) toElement) =>
      map(toElement).toSet().toList().length == 1;
}

extension IntExtensions on Iterable<int> {
  bool singleValueIn() => map((x) => x).toSet().toList().length == 1;
}

extension DoubleExtensions on Iterable<double?> {
  bool singleValueIn() => map((x) => x).toSet().toList().length == 1;
}
