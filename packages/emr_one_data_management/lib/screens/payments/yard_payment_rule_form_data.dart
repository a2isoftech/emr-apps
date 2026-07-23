import 'package:emr_one_data_management/emr_one_data_management_constants.dart';
import 'package:emr_sharedtypes/models/inventory/product.dart';
import 'package:emr_sharedtypes/models/payment_rules.dart';
import 'package:emr_sharedtypes/models/product_rule.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:flutter/material.dart';

/// Data structure representing a per-product payment rule row
class YardProductRule {
  YardProductRule({
    required this.productId,
    required bool isAuthorityReportable,
    required bool isDrivingLicenceRequired,
    required bool isCashCardRequired,
    required bool iscopperSellersLicenseRequired,
    required bool isExemptedSellerStatusRequired,
    required bool isPreventCashPayment,
    required bool isProofOfOwnershipRequired,
    required bool isVehicleDetailsRequired,
    required bool isExecutedAffidavitDocumentRequired,
    required bool isAllowedForAutoConfirm,
  })  : authorityReportable = ValueNotifier(isAuthorityReportable),
        drivingLicenceRequired = ValueNotifier(isDrivingLicenceRequired),
        cashCardRequired = ValueNotifier(isCashCardRequired),
        copperSellersLicenseRequired =
            ValueNotifier(iscopperSellersLicenseRequired),
        exemptedSellerStatusRequired =
            ValueNotifier(isExemptedSellerStatusRequired),
        preventCashPayment = ValueNotifier(isPreventCashPayment),
        proofOfOwnershipRequired = ValueNotifier(isProofOfOwnershipRequired),
        vehicleDetailsRequired = ValueNotifier(isVehicleDetailsRequired),
        executedAffidavitDocumentRequired =
            ValueNotifier(isExecutedAffidavitDocumentRequired),
        allowedForAutoConfirm = ValueNotifier(isAllowedForAutoConfirm);

  final String productId;
  final ValueNotifier<bool> authorityReportable;
  final ValueNotifier<bool> drivingLicenceRequired;
  final ValueNotifier<bool> cashCardRequired;
  final ValueNotifier<bool> copperSellersLicenseRequired;
  final ValueNotifier<bool> exemptedSellerStatusRequired;
  final ValueNotifier<bool> preventCashPayment;
  final ValueNotifier<bool> proofOfOwnershipRequired;
  final ValueNotifier<bool> vehicleDetailsRequired;
  final ValueNotifier<bool> executedAffidavitDocumentRequired;
  final ValueNotifier<bool> allowedForAutoConfirm;
}

// @EmrFormModel
class YardPaymentRuleFormData {
  YardPaymentRuleFormData({
    bool? authorityReportable,
    bool? drivingLicenceRequired,
    bool? cashCardRequired,
    bool? copperSellersLicenseRequired,
    bool? exemptedSellerStatusRequired,
    bool? preventCashPayment,
    bool? proofOfOwnershipRequired,
    bool? vehicleDetailsRequired,
    bool? executedAffidavitDocumentRequired,
    bool? allowedForAutoConfirm,
    String? id,
    String? yardId,
    List<String>? authorityReportableProductIds,
    List<String>? drivingLicenceRequiredProductIds,
    List<String>? cashCardProductIds,
    List<String>? copperSellersLicenseProductIds,
    List<String>? exemptedSellerStatusProductIds,
    List<String>? preventCashPaymentProductIds,
    List<String>? proofOfOwnershipProductIds,
    List<String>? vehicleDetailsProductIds,
    List<String>? executedAffidavitDocumentProductIds,
    List<String>? allowedForAutoConfirmProductIds,
    List<String>? completeProductIds,
    Product? defaultProduct,
    Yard? selectedYard,
    List<ProductRuleRow>? productRuleRowList,
  }) {
    this.id = ValueNotifier(id);
    this.yardId = ValueNotifier(yardId);
    this.authorityReportable = ValueNotifier(authorityReportable ?? false);
    this.drivingLicenceRequired =
        ValueNotifier(drivingLicenceRequired ?? false);
    this.authorityReportableProductIds =
        ValueNotifier(authorityReportableProductIds ?? []);
    this.drivingLicenceRequiredProductIds =
        ValueNotifier(drivingLicenceRequiredProductIds ?? []);
    this.completeProductIds = ValueNotifier(completeProductIds ?? []);
    this.productRuleRowList = ValueNotifier(productRuleRowList ?? []);
    this.defaultProduct = ValueNotifier(defaultProduct);
    this.selectedYard = ValueNotifier(selectedYard);
    this.cashCardRequired = ValueNotifier(cashCardRequired ?? false);
    this.copperSellersLicenseRequired =
        ValueNotifier(copperSellersLicenseRequired ?? false);
    this.exemptedSellerStatusRequired =
        ValueNotifier(exemptedSellerStatusRequired ?? false);
    this.preventCashPayment = ValueNotifier(preventCashPayment ?? false);
    this.proofOfOwnershipRequired =
        ValueNotifier(proofOfOwnershipRequired ?? false);
    this.vehicleDetailsRequired =
        ValueNotifier(vehicleDetailsRequired ?? false);
    this.executedAffidavitDocumentRequired =
        ValueNotifier(executedAffidavitDocumentRequired ?? false);
    this.allowedForAutoConfirm = ValueNotifier(allowedForAutoConfirm ?? false);
    this.cashCardProductIds = ValueNotifier(cashCardProductIds ?? []);
    this.copperSellersLicenseProductIds =
        ValueNotifier(copperSellersLicenseProductIds ?? []);
    this.exemptedSellerStatusProductIds =
        ValueNotifier(exemptedSellerStatusProductIds ?? []);
    this.preventCashPaymentProductIds =
        ValueNotifier(preventCashPaymentProductIds ?? []);
    this.proofOfOwnershipProductIds =
        ValueNotifier(proofOfOwnershipProductIds ?? []);
    this.vehicleDetailsProductIds =
        ValueNotifier(vehicleDetailsProductIds ?? []);
    this.executedAffidavitDocumentProductIds =
        ValueNotifier(executedAffidavitDocumentProductIds ?? []);
    this.allowedForAutoConfirmProductIds =
        ValueNotifier(allowedForAutoConfirmProductIds ?? []);
  }

  factory YardPaymentRuleFormData.fromYardPaymentRule(
    PaymentRules paymentRules,
  ) {
    final combinedProductIds = {
      ...paymentRules.authorityReportableProductIds,
      ...paymentRules.drivingLicenceRequiredProductIds,
      ...paymentRules.cashCardRequiredProductIds,
      ...paymentRules.copperSellersLicenseRequiredProductIds,
      ...paymentRules.exemptedSellerStatusRequiredProductIds,
      ...paymentRules.preventCashPaymentProductIds,
      ...paymentRules.proofOfOwnershipRequiredProductIds,
      ...paymentRules.vehicleDetailsRequiredProductIds,
      ...paymentRules.executedAffidavitDocumentRequiredProductIds,
      ...paymentRules.allowedForAutoConfirmProductIds,
    }.toList();

    return YardPaymentRuleFormData(
      id: paymentRules.id,
      yardId: paymentRules.id.split('/').last,
      authorityReportable: paymentRules.authorityReportable,
      drivingLicenceRequired: paymentRules.drivingLicenceRequired,
      authorityReportableProductIds: paymentRules.authorityReportableProductIds,
      drivingLicenceRequiredProductIds:
          paymentRules.drivingLicenceRequiredProductIds,
      cashCardRequired: paymentRules.cashCardRequired,
      cashCardProductIds: paymentRules.cashCardRequiredProductIds,
      copperSellersLicenseRequired: paymentRules.copperSellersLicenseRequired,
      copperSellersLicenseProductIds:
          paymentRules.copperSellersLicenseRequiredProductIds,
      exemptedSellerStatusRequired: paymentRules.exemptedSellerStatusRequired,
      exemptedSellerStatusProductIds:
          paymentRules.exemptedSellerStatusRequiredProductIds,
      proofOfOwnershipRequired: paymentRules.proofOfOwnershipRequired,
      proofOfOwnershipProductIds:
          paymentRules.proofOfOwnershipRequiredProductIds,
      preventCashPayment: paymentRules.preventCashPayment,
      preventCashPaymentProductIds: paymentRules.preventCashPaymentProductIds,
      vehicleDetailsRequired: paymentRules.vehicleDetailsRequired,
      vehicleDetailsProductIds: paymentRules.vehicleDetailsRequiredProductIds,
      executedAffidavitDocumentRequired:
          paymentRules.executedAffidavitDocumentRequired,
      executedAffidavitDocumentProductIds:
          paymentRules.executedAffidavitDocumentRequiredProductIds,
      allowedForAutoConfirm: paymentRules.allowedForAutoConfirm,
      allowedForAutoConfirmProductIds:
          paymentRules.allowedForAutoConfirmProductIds,
      completeProductIds: combinedProductIds,
    );
  }

  late bool hasDefaultProduct = false;

  PaymentRules toYardPaymentRule() {
    const defaultProductId = 'Default';

    final defaultRule = productRuleRowList.value.firstWhere(
      (row) => row.productId == defaultProductId,
      orElse: () => throw Exception('Default product not found'),
    );

    final defaultProductauthorityReportableValue =
        defaultRule.authorityReportable;
    final defaultdrivingLicenceRequiredValue =
        defaultRule.drivingLicenceRequired;
    final defaultCashCardProductRequiredValue = defaultRule.cashCardRequired;
    final defaultCopperSellersLicenseRequiredValue =
        defaultRule.copperSellersLicenseRequired;
    final defaultexemptedSellerValue = defaultRule.exemptedSellerStatusRequired;
    final defaultpreventCashPaymentValue = defaultRule.proofOfOwnershipRequired;
    final defaultProofOfOwnershipValue = defaultRule.proofOfOwnershipRequired;
    final defaultVehicleDetailsValue = defaultRule.vehicleDetailsRequired;
    final defaultExecutedAffidavitValue =
        defaultRule.executedAffidavitDocumentRequired;
    final defaultAllowedForAutoConfirmValue = defaultRule.allowedForAutoConfirm;

    final authorityReportableProductIdsCopy = productRuleRowList.value
        .where(
          (row) =>
              row.productId != defaultProductId &&
              row.authorityReportable != defaultProductauthorityReportableValue,
        )
        .map((row) => row.productId)
        .toList();

    final drivingLicenceProductIdsCopy = productRuleRowList.value
        .where(
          (row) =>
              row.productId != defaultProductId &&
              row.drivingLicenceRequired != defaultdrivingLicenceRequiredValue,
        )
        .map((row) => row.productId)
        .toList();

    final ccProductIdsCopy = productRuleRowList.value
        .where(
          (row) =>
              row.productId != defaultProductId &&
              row.cashCardRequired != defaultCashCardProductRequiredValue,
        )
        .map((row) => row.productId)
        .toList();

    final copperSellersProductIdsCopy = productRuleRowList.value
        .where(
          (row) =>
              row.productId != defaultProductId &&
              row.copperSellersLicenseRequired !=
                  defaultCopperSellersLicenseRequiredValue,
        )
        .map((row) => row.productId)
        .toList();

    final exemptedSellerProductIdsCopy = productRuleRowList.value
        .where(
          (row) =>
              row.productId != defaultProductId &&
              row.exemptedSellerStatusRequired != defaultexemptedSellerValue,
        )
        .map((row) => row.productId)
        .toList();

    final preventCashPaymentProductIdsCopy = productRuleRowList.value
        .where(
          (row) =>
              row.productId != defaultProductId &&
              row.preventCashPayment != defaultpreventCashPaymentValue,
        )
        .map((row) => row.productId)
        .toList();

    final proofOfOwnershipProductIdsCopy = productRuleRowList.value
        .where(
          (row) =>
              row.productId != defaultProductId &&
              row.proofOfOwnershipRequired != defaultProofOfOwnershipValue,
        )
        .map((row) => row.productId)
        .toList();

    final vehicleDetailsProductIdsCopy = productRuleRowList.value
        .where(
          (row) =>
              row.productId != defaultProductId &&
              row.vehicleDetailsRequired != defaultVehicleDetailsValue,
        )
        .map((row) => row.productId)
        .toList();

    final executedAffidavitProductIdsCopy = productRuleRowList.value
        .where(
          (row) =>
              row.productId != defaultProductId &&
              row.executedAffidavitDocumentRequired !=
                  defaultExecutedAffidavitValue,
        )
        .map((row) => row.productId)
        .toList();

    final allowedForAutoConfirmProductIdsCopy = productRuleRowList.value
        .where(
          (row) =>
              row.productId != defaultProductId &&
              row.allowedForAutoConfirm != defaultAllowedForAutoConfirmValue,
        )
        .map((row) => row.productId)
        .toList();

    return PaymentRules(
      yardCode: (selectedYard.value == null
          ? id.value?.split('/').last
          : selectedYard.value!.yardCode)!,
      id: id.value ?? EmrOneDataManagementConstants.kEmptyGuid,
      authorityReportable: defaultProductauthorityReportableValue,
      authorityReportableProductIds: authorityReportableProductIdsCopy,
      drivingLicenceRequired: defaultdrivingLicenceRequiredValue,
      drivingLicenceRequiredProductIds: drivingLicenceProductIdsCopy,
      cashCardRequired: defaultCashCardProductRequiredValue,
      cashCardRequiredProductIds: ccProductIdsCopy,
      copperSellersLicenseRequired: defaultCopperSellersLicenseRequiredValue,
      copperSellersLicenseRequiredProductIds: copperSellersProductIdsCopy,
      exemptedSellerStatusRequired: defaultexemptedSellerValue,
      exemptedSellerStatusRequiredProductIds: exemptedSellerProductIdsCopy,
      preventCashPayment: defaultpreventCashPaymentValue,
      preventCashPaymentProductIds: preventCashPaymentProductIdsCopy,
      proofOfOwnershipRequired: defaultProofOfOwnershipValue,
      proofOfOwnershipRequiredProductIds: proofOfOwnershipProductIdsCopy,
      vehicleDetailsRequired: defaultVehicleDetailsValue,
      vehicleDetailsRequiredProductIds: vehicleDetailsProductIdsCopy,
      executedAffidavitDocumentRequired: defaultExecutedAffidavitValue,
      executedAffidavitDocumentRequiredProductIds:
          executedAffidavitProductIdsCopy,
      allowedForAutoConfirm: defaultAllowedForAutoConfirmValue,
      allowedForAutoConfirmProductIds: allowedForAutoConfirmProductIdsCopy,
    );
  }

  late final ValueNotifier<String?> id;
  late final ValueNotifier<String?> yardId;
  late final ValueNotifier<bool> authorityReportable;
  late final ValueNotifier<bool> drivingLicenceRequired;
  late final ValueNotifier<List<String>> authorityReportableProductIds;
  late final ValueNotifier<List<String>> drivingLicenceRequiredProductIds;
  late final ValueNotifier<List<String>> completeProductIds;
  late final ValueNotifier<List<ProductRuleRow>> productRuleRowList;
  late final ValueNotifier<Product?> defaultProduct;
  late final ValueNotifier<Yard?> selectedYard;
  late final ValueNotifier<bool> cashCardRequired;
  late final ValueNotifier<List<String>> cashCardProductIds;
  late final ValueNotifier<bool> copperSellersLicenseRequired;
  late final ValueNotifier<List<String>> copperSellersLicenseProductIds;
  late final ValueNotifier<bool> exemptedSellerStatusRequired;
  late final ValueNotifier<List<String>> exemptedSellerStatusProductIds;
  late final ValueNotifier<bool> preventCashPayment;
  late final ValueNotifier<List<String>> preventCashPaymentProductIds;
  late final ValueNotifier<bool> proofOfOwnershipRequired;
  late final ValueNotifier<List<String>> proofOfOwnershipProductIds;
  late final ValueNotifier<bool> vehicleDetailsRequired;
  late final ValueNotifier<List<String>> vehicleDetailsProductIds;
  late final ValueNotifier<bool> executedAffidavitDocumentRequired;
  late final ValueNotifier<List<String>> executedAffidavitDocumentProductIds;
  late final ValueNotifier<bool> allowedForAutoConfirm;
  late final ValueNotifier<List<String>> allowedForAutoConfirmProductIds;

  List<String> get allProductIds {
    final authorityList = authorityReportableProductIds.value;
    final drivingList = drivingLicenceRequiredProductIds.value;
    final cashCardList = cashCardProductIds.value;
    final copperSellersLicenseList = copperSellersLicenseProductIds.value;
    final exemptedSellerStatusList = exemptedSellerStatusProductIds.value;
    final preventCashPaymentList = preventCashPaymentProductIds.value;
    final proofOfOwnershipList = proofOfOwnershipProductIds.value;
    final vehicleDetailsList = vehicleDetailsProductIds.value;
    final executedAffidavitDocumentList =
        executedAffidavitDocumentProductIds.value;
    final allowedForAutoConfirmList = allowedForAutoConfirmProductIds.value;
    return {
      ...authorityList,
      ...drivingList,
      ...cashCardList,
      ...copperSellersLicenseList,
      ...exemptedSellerStatusList,
      ...preventCashPaymentList,
      ...proofOfOwnershipList,
      ...vehicleDetailsList,
      ...executedAffidavitDocumentList,
      ...allowedForAutoConfirmList,
    }.toList();
  }

  List<YardProductRule> get productRules {
    final allIds = completeProductIds.value.toSet();
    return allIds.map((productId) {
      return YardProductRule(
        productId: productId,
        isAuthorityReportable:
            authorityReportableProductIds.value.contains(productId),
        isDrivingLicenceRequired:
            drivingLicenceRequiredProductIds.value.contains(productId),
        isCashCardRequired: cashCardProductIds.value.contains(productId),
        iscopperSellersLicenseRequired:
            copperSellersLicenseProductIds.value.contains(productId),
        isExemptedSellerStatusRequired:
            exemptedSellerStatusProductIds.value.contains(productId),
        isPreventCashPayment:
            preventCashPaymentProductIds.value.contains(productId),
        isProofOfOwnershipRequired:
            proofOfOwnershipProductIds.value.contains(productId),
        isVehicleDetailsRequired:
            vehicleDetailsProductIds.value.contains(productId),
        isExecutedAffidavitDocumentRequired:
            executedAffidavitDocumentProductIds.value.contains(productId),
        isAllowedForAutoConfirm:
            allowedForAutoConfirmProductIds.value.contains(productId),
      );
    }).toList();
  }

  void updateFromProductRules(List<YardProductRule> rules) {
    authorityReportableProductIds.value = rules
        .where((r) => r.authorityReportable.value)
        .map((r) => r.productId)
        .toList();

    drivingLicenceRequiredProductIds.value = rules
        .where((r) => r.drivingLicenceRequired.value)
        .map((r) => r.productId)
        .toList();

    cashCardProductIds.value = rules
        .where((r) => r.cashCardRequired.value)
        .map((r) => r.productId)
        .toList();

    copperSellersLicenseProductIds.value = rules
        .where((r) => r.copperSellersLicenseRequired.value)
        .map((r) => r.productId)
        .toList();

    exemptedSellerStatusProductIds.value = rules
        .where((r) => r.exemptedSellerStatusRequired.value)
        .map((r) => r.productId)
        .toList();

    preventCashPaymentProductIds.value = rules
        .where((r) => r.preventCashPayment.value)
        .map((r) => r.productId)
        .toList();

    proofOfOwnershipProductIds.value = rules
        .where((r) => r.proofOfOwnershipRequired.value)
        .map((r) => r.productId)
        .toList();

    vehicleDetailsProductIds.value = rules
        .where((r) => r.vehicleDetailsRequired.value)
        .map((r) => r.productId)
        .toList();

    executedAffidavitDocumentProductIds.value = rules
        .where((r) => r.executedAffidavitDocumentRequired.value)
        .map((r) => r.productId)
        .toList();

    allowedForAutoConfirmProductIds.value = rules
        .where((r) => r.allowedForAutoConfirm.value)
        .map((r) => r.productId)
        .toList();
  }
}
