import 'package:collection/collection.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/models/arising_point.dart';
import 'package:emr_one_crm/models/gpl_grade.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

Input$CreateContractLineDepotPremiumInput getDepot(
  PartyNewContractViewModel model,
  CrmDeliveryMethod deliveryMethod,
  GplGrade grade,
  ContractLine? contractLine,
  ArisingPoint arisingPoint,
  Depot depot,
) {
  if (model.pricingList.isNotEmpty &&
      model.pricingList.any((element) => element.grade.gradeCode.isNotEmpty)) {
    if (deliveryMethod == CrmDeliveryMethod.delivered) {
      final delPrice = model.pricingList
          .where((element) => element.grade.gradeCode == grade.gradeCode)
          .first
          .deliveredPrice;
      return _mapDepotPremium(delPrice, depot, contractLine: contractLine);
    } else {
      return _mapDepotPremium(
        model.pricingList
            .where((element) => element.grade.gradeCode == grade.gradeCode)
            .first
            .collectedPrice,
        depot,
        contractLine: contractLine,
      );
    }
  } else {
    if (deliveryMethod == CrmDeliveryMethod.delivered) {
      return _mapDepotPremium(
        grade.deliveryRate,
        model.depot,
        contractLine: contractLine,
      );
    } else {
      return _mapDepotPremium(
        grade.collectedRate,
        model.depot,
        contractLine: contractLine,
      );
    }
  }
}

List<Input$CreateContractLineDepotPremiumInput> getDepots(
  PartyNewContractViewModel model,
  CrmDeliveryMethod deliveryMethod,
  GplGrade grade,
  ContractLine? contractLine,
) {
  var depotPremiums = <Input$CreateContractLineDepotPremiumInput>[];
  for (final depot in model.selectedDepots) {
    if (model.pricingList.isNotEmpty &&
        model.pricingList.any(
          (element) => element.grade.gradeCode.isNotEmpty,
        )) {
      final gradePrice = model.pricingList
          .where((element) => element.grade.gradeCode == grade.gradeCode)
          .first;
      final delPrice = gradePrice.deliveredPrice;
      final colPrice = gradePrice.collectedPrice;
      if (deliveryMethod == CrmDeliveryMethod.both) {
        depotPremiums = [
          ...depotPremiums,
          _mapDepotPremium(delPrice, depot, contractLine: contractLine),
          _mapDepotPremium(colPrice, depot, contractLine: contractLine),
        ];
      } else if (deliveryMethod == CrmDeliveryMethod.delivered) {
        depotPremiums = [
          ...depotPremiums,
          _mapDepotPremium(delPrice, depot, contractLine: contractLine),
        ];
      } else {
        depotPremiums = [
          ...depotPremiums,
          _mapDepotPremium(colPrice, depot, contractLine: contractLine),
        ];
      }
    } else {
      if (deliveryMethod == CrmDeliveryMethod.delivered) {
        depotPremiums = [
          ...depotPremiums,
          _mapDepotPremium(
            grade.deliveryRate,
            model.depot,
            contractLine: contractLine,
          ),
        ];
      } else {
        depotPremiums = [
          ...depotPremiums,
          _mapDepotPremium(
            grade.collectedRate,
            model.depot,
            contractLine: contractLine,
          ),
        ];
      }
    }
  }
  return depotPremiums;
}

Input$CreateContractLineDepotPremiumInput _mapDepotPremium(
  ValueUomPair rate,
  Depot depot, {
  required ContractLine? contractLine,
}) {
  // Try to find a matching depot premium when we're editing a contract.
  final depotPremium = contractLine?.depotPremiums.firstWhereOrNull(
    (dp) => dp.depot.code == depot.code,
  );

  return Input$CreateContractLineDepotPremiumInput(
    depotPremiumId: depotPremium?.depotPremiumId,
    contractLineId: contractLine?.contractLineId,
    depotNo: depot.code,
    rate: rate.value == 0 ? null : Input$UomValueInput(
      uom: Enum$Uom.values[rate.uom.toApiEnumIndex],
      value: rate.value,
    ),
    rateDeltaType: Enum$CommodityRateDeltaType.VALUE,
  );
}

List<Input$ContractLineLocationInput> getLineLocations(
  PartyNewContractViewModel model,
  List<ArisingPoint>? arisingPoints,
  UomValue? haulageCharge,
) {
  final lineLocations = List<Input$ContractLineLocationInput>.empty(
    growable: true,
  );
  for (final arisingPoint in arisingPoints!) {
    lineLocations.add(
      Input$ContractLineLocationInput(
        fullyCharged: model.isFullyCharged,
        locationId: arisingPoint.id,
        haulageCharge: (haulageCharge != null &&
                haulageCharge.value > 0 &&
                !model.isFullyCharged)
            ? Input$UomValueInput(
                uom: Enum$Uom.values[haulageCharge.uom.toApiEnumIndex],
                value: haulageCharge.value,
              )
            : null,
      ),
    );
  }
  return lineLocations;
}

List<T> mapLinesFromGrades<T>(
  PartyNewContractViewModel model, {
  required bool isFixed,
}) {
  final lines = <T>[];

  if (model.pricingList.isNotEmpty &&
      model.pricingList.any((element) => element.grade.gradeCode.isNotEmpty)) {
    for (final entry in model.pricingList) {
      if (model.deliveryMethods.contains(CrmDeliveryMethod.both) ||
          (model.deliveryMethods.contains(CrmDeliveryMethod.collected) &&
              model.deliveryMethods.contains(CrmDeliveryMethod.delivered))) {
        lines.add(
          _convertToLine(
            entry.grade,
            CrmDeliveryMethod.both,
            model,
            entry.arisingPoints,
            entry.haulageCharge,
            isFixed: isFixed,
            loadCount: entry.loadCount,
          ) as T,
        );
      } else {
        if (model.deliveryMethods.contains(CrmDeliveryMethod.collected)) {
          lines.add(
            _convertToLine(
              entry.grade,
              CrmDeliveryMethod.collected,
              model,
              entry.arisingPoints,
              entry.haulageCharge,
              isFixed: isFixed,
              loadCount: entry.loadCount,
            ) as T,
          );
        }

        if (model.deliveryMethods.contains(CrmDeliveryMethod.delivered)) {
          lines.add(
            _convertToLine(
              entry.grade,
              CrmDeliveryMethod.delivered,
              model,
              entry.arisingPoints,
              entry.haulageCharge,
              isFixed: isFixed,
              loadCount: entry.loadCount,
            ) as T,
          );
        }
      }
    }
  } else {
    for (final grade in model.gplGrades) {
      if (!model.selectedGrades
          .contains('${grade.gradeCode}_${grade.brokerReference}')) {
        continue;
      }

      if (model.deliveryMethods.contains(CrmDeliveryMethod.both) ||
          (model.deliveryMethods.contains(CrmDeliveryMethod.collected) &&
              model.deliveryMethods.contains(CrmDeliveryMethod.delivered))) {
        lines.add(
          _convertToLine(
            grade,
            CrmDeliveryMethod.both,
            model,
            model.selectedArisingPoints,
            model.haulageAdjustment,
            isFixed: isFixed,
          ) as T,
        );
      } else {
        if (model.deliveryMethods.contains(CrmDeliveryMethod.collected)) {
          lines.add(
            _convertToLine(
              grade,
              CrmDeliveryMethod.collected,
              model,
              model.selectedArisingPoints,
              model.haulageAdjustment,
              isFixed: isFixed,
            ) as T,
          );
        }

        if (model.deliveryMethods.contains(CrmDeliveryMethod.delivered)) {
          lines.add(
            _convertToLine(
              grade,
              CrmDeliveryMethod.delivered,
              model,
              model.selectedArisingPoints,
              model.haulageAdjustment,
              isFixed: isFixed,
            ) as T,
          );
        }
      }
    }
  }

  return lines;
}

dynamic _convertToLine(
  GplGrade grade,
  CrmDeliveryMethod deliveryMethod,
  PartyNewContractViewModel model,
  List<ArisingPoint>? arisingPoint,
  UomValue? haulageCharge, {
  required bool isFixed,
  int loadCount = 0,
}) {
  // Try to find a matching contract line when we're editing a contract.
  final contractLine = model.contract?.lines.firstWhereOrNull(
    (cl) =>
        cl.grade == grade.gradeCode &&
        cl.brokerReference == grade.brokerReference,
  );
  final collectedDelta = model.collectedDelta;
  final gradePrice = model.pricingList
      .where(
        (element) =>
            element.grade.gradeCode == grade.gradeCode &&
            element.grade.brokerReference == grade.brokerReference,
      )
      .firstOrNull;
  final delPrice = gradePrice?.deliveredPrice ?? grade.deliveryRate;
  final colPrice = gradePrice?.collectedPrice ?? grade.collectedRate;
  if (isFixed) {
    return Input$CreateFixedContractLineInput(
      contractLineId: contractLine?.contractLineId,
      grade: grade.gradeCode,
      materialDescription: grade.materialDescription,
      collectedPrice: (colPrice.value == 0 && colPrice.uom == Uom.unknown)
          ? null
          : Input$UomValueInput(
              uom: Enum$Uom.values[colPrice.uom.toApiEnumIndex],
              value: double.parse(
                ((colPrice.value) - (collectedDelta?.value ?? 0))
                    .toStringAsFixed(4),
              ),
            ),
      deliveredPrice: (delPrice.value == 0 && delPrice.uom == Uom.unknown)
          ? null
          : Input$UomValueInput(
              uom: Enum$Uom.values[delPrice.uom.toApiEnumIndex],
              value: delPrice.value,
            ),
      contractLineLocation: getLineLocations(
        model,
        arisingPoint,
        haulageCharge,
      ),
      deliveryMethod:
          Enum$ContractLineDeliveryMethod.values[deliveryMethod.index],
      deliveryPeriod: '',
      depotPremium: getDepots(model, deliveryMethod, grade, contractLine),
      // When delivered and collected are selected, we split the weight over
      // both contract lines.
      targetTonnage: Input$UomValueInput(
        uom: Enum$Uom.values[grade.contractWeight.uom.toApiEnumIndex],
        value: grade.contractWeight.value,
      ),
      targetLoads: loadCount,
      haulageCharge: haulageCharge != null
          ? Input$UomValueInput(
              uom: Enum$Uom.values[haulageCharge.uom.toApiEnumIndex],
              value: haulageCharge.value,
            )
          : Input$UomValueInput(
              uom: Enum$Uom.LD,
              value: 0,
            ),
      brokerReference: grade.brokerReference,
    );
  } else {
    return Input$CreateSpotContractLineInput(
      contractLineId: contractLine?.contractLineId,
      grade: grade.gradeCode,
      materialDescription: grade.materialDescription,
      collectedPrice: (colPrice.value == 0 && colPrice.uom == Uom.unknown)
          ? null
          : Input$UomValueInput(
              uom: Enum$Uom.values[colPrice.uom.toApiEnumIndex],
              value: double.parse(
                ((colPrice.value) - (collectedDelta?.value ?? 0))
                    .toStringAsFixed(4),
              ),
            ),
      deliveredPrice: (delPrice.value == 0 && delPrice.uom == Uom.unknown)
          ? null
          : Input$UomValueInput(
              uom: Enum$Uom.values[delPrice.uom.toApiEnumIndex],
              value: delPrice.value,
            ),
      deliveryMethod:
          Enum$ContractLineDeliveryMethod.values[deliveryMethod.index],
      deliveryPeriod: '',
      contractLineLocation: getLineLocations(
        model,
        arisingPoint,
        haulageCharge,
      ),
      targetLoads: loadCount,
      depotPremium: getDepots(model, deliveryMethod, grade, contractLine),
      haulageCharge: haulageCharge != null
          ? Input$UomValueInput(
              uom: Enum$Uom.values[haulageCharge.uom.toApiEnumIndex],
              value: haulageCharge.value,
            )
          : Input$UomValueInput(
              uom: Enum$Uom.LD,
              value: 0,
            ),
      brokerReference: grade.brokerReference,
    );
  }
}
