import 'package:gql/ast.dart';

class Fragment$PaymentRuleFragment {
  Fragment$PaymentRuleFragment({
    required this.authorityReportable,
    required this.authorityReportableProductIds,
    required this.drivingLicenceRequired,
    required this.drivingLicenceRequiredProductIds,
    required this.id,
    required this.cashCardRequired,
    required this.cashCardRequiredProductIds,
    required this.copperSellersLicenseRequired,
    required this.copperSellersLicenseRequiredProductIds,
    required this.executedAffidavitDocumentRequiredProductIds,
    required this.exemptedSellerStatusRequired,
    required this.exemptedSellerStatusRequiredProductIds,
    required this.preventCashPayment,
    required this.preventCashPaymentProductIds,
    required this.proofOfOwnershipRequired,
    required this.proofOfOwnershipRequiredProductIds,
    required this.vehicleDetailsRequired,
    required this.vehicleDetailsRequiredProductIds,
    required this.executedAffidavitDocumentRequired,
    required this.allowedForAutoConfirm,
    required this.allowedForAutoConfirmProductIds,
    required this.yardCode,
    this.$__typename = 'PaymentRules',
  });

  factory Fragment$PaymentRuleFragment.fromJson(Map<String, dynamic> json) {
    final l$authorityReportable = json['authorityReportable'];
    final l$authorityReportableProductIds =
        json['authorityReportableProductIds'];
    final l$drivingLicenceRequired = json['drivingLicenceRequired'];
    final l$drivingLicenceRequiredProductIds =
        json['drivingLicenceRequiredProductIds'];
    final l$id = json['id'];
    final l$cashCardRequired = json['cashCardRequired'];
    final l$cashCardRequiredProductIds = json['cashCardRequiredProductIds'];
    final l$copperSellersLicenseRequired = json['copperSellersLicenseRequired'];
    final l$copperSellersLicenseRequiredProductIds =
        json['copperSellersLicenseRequiredProductIds'];
    final l$executedAffidavitDocumentRequiredProductIds =
        json['executedAffidavitDocumentRequiredProductIds'];
    final l$exemptedSellerStatusRequired = json['exemptedSellerStatusRequired'];
    final l$exemptedSellerStatusRequiredProductIds =
        json['exemptedSellerStatusRequiredProductIds'];
    final l$preventCashPayment = json['preventCashPayment'];
    final l$preventCashPaymentProductIds = json['preventCashPaymentProductIds'];
    final l$proofOfOwnershipRequired = json['proofOfOwnershipRequired'];
    final l$proofOfOwnershipRequiredProductIds =
        json['proofOfOwnershipRequiredProductIds'];
    final l$vehicleDetailsRequired = json['vehicleDetailsRequired'];
    final l$vehicleDetailsRequiredProductIds =
        json['vehicleDetailsRequiredProductIds'];
    final l$executedAffidavitDocumentRequired =
        json['executedAffidavitDocumentRequired'];
    final l$allowedForAutoConfirm = json['allowedForAutoConfirm'];
    final l$allowedForAutoConfirmProductIds =
        json['allowedForAutoConfirmProductIds'];
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentRuleFragment(
      authorityReportable: (l$authorityReportable as bool),
      authorityReportableProductIds:
          (l$authorityReportableProductIds as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      drivingLicenceRequired: (l$drivingLicenceRequired as bool),
      drivingLicenceRequiredProductIds:
          (l$drivingLicenceRequiredProductIds as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      id: (l$id as String),
      cashCardRequired: (l$cashCardRequired as bool),
      cashCardRequiredProductIds:
          (l$cashCardRequiredProductIds as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      copperSellersLicenseRequired: (l$copperSellersLicenseRequired as bool),
      copperSellersLicenseRequiredProductIds:
          (l$copperSellersLicenseRequiredProductIds as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      executedAffidavitDocumentRequiredProductIds:
          (l$executedAffidavitDocumentRequiredProductIds as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      exemptedSellerStatusRequired: (l$exemptedSellerStatusRequired as bool),
      exemptedSellerStatusRequiredProductIds:
          (l$exemptedSellerStatusRequiredProductIds as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      preventCashPayment: (l$preventCashPayment as bool),
      preventCashPaymentProductIds:
          (l$preventCashPaymentProductIds as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      proofOfOwnershipRequired: (l$proofOfOwnershipRequired as bool),
      proofOfOwnershipRequiredProductIds:
          (l$proofOfOwnershipRequiredProductIds as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      vehicleDetailsRequired: (l$vehicleDetailsRequired as bool),
      vehicleDetailsRequiredProductIds:
          (l$vehicleDetailsRequiredProductIds as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      executedAffidavitDocumentRequired:
          (l$executedAffidavitDocumentRequired as bool),
      allowedForAutoConfirm: (l$allowedForAutoConfirm as bool),
      allowedForAutoConfirmProductIds:
          (l$allowedForAutoConfirmProductIds as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      yardCode: (l$yardCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool authorityReportable;

  final List<String> authorityReportableProductIds;

  final bool drivingLicenceRequired;

  final List<String> drivingLicenceRequiredProductIds;

  final String id;

  final bool cashCardRequired;

  final List<String> cashCardRequiredProductIds;

  final bool copperSellersLicenseRequired;

  final List<String> copperSellersLicenseRequiredProductIds;

  final List<String> executedAffidavitDocumentRequiredProductIds;

  final bool exemptedSellerStatusRequired;

  final List<String> exemptedSellerStatusRequiredProductIds;

  final bool preventCashPayment;

  final List<String> preventCashPaymentProductIds;

  final bool proofOfOwnershipRequired;

  final List<String> proofOfOwnershipRequiredProductIds;

  final bool vehicleDetailsRequired;

  final List<String> vehicleDetailsRequiredProductIds;

  final bool executedAffidavitDocumentRequired;

  final bool allowedForAutoConfirm;

  final List<String> allowedForAutoConfirmProductIds;

  final String yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$authorityReportable = authorityReportable;
    _resultData['authorityReportable'] = l$authorityReportable;
    final l$authorityReportableProductIds = authorityReportableProductIds;
    _resultData['authorityReportableProductIds'] =
        l$authorityReportableProductIds.map((e) => e).toList();
    final l$drivingLicenceRequired = drivingLicenceRequired;
    _resultData['drivingLicenceRequired'] = l$drivingLicenceRequired;
    final l$drivingLicenceRequiredProductIds = drivingLicenceRequiredProductIds;
    _resultData['drivingLicenceRequiredProductIds'] =
        l$drivingLicenceRequiredProductIds.map((e) => e).toList();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$cashCardRequired = cashCardRequired;
    _resultData['cashCardRequired'] = l$cashCardRequired;
    final l$cashCardRequiredProductIds = cashCardRequiredProductIds;
    _resultData['cashCardRequiredProductIds'] = l$cashCardRequiredProductIds
        .map((e) => e)
        .toList();
    final l$copperSellersLicenseRequired = copperSellersLicenseRequired;
    _resultData['copperSellersLicenseRequired'] =
        l$copperSellersLicenseRequired;
    final l$copperSellersLicenseRequiredProductIds =
        copperSellersLicenseRequiredProductIds;
    _resultData['copperSellersLicenseRequiredProductIds'] =
        l$copperSellersLicenseRequiredProductIds.map((e) => e).toList();
    final l$executedAffidavitDocumentRequiredProductIds =
        executedAffidavitDocumentRequiredProductIds;
    _resultData['executedAffidavitDocumentRequiredProductIds'] =
        l$executedAffidavitDocumentRequiredProductIds.map((e) => e).toList();
    final l$exemptedSellerStatusRequired = exemptedSellerStatusRequired;
    _resultData['exemptedSellerStatusRequired'] =
        l$exemptedSellerStatusRequired;
    final l$exemptedSellerStatusRequiredProductIds =
        exemptedSellerStatusRequiredProductIds;
    _resultData['exemptedSellerStatusRequiredProductIds'] =
        l$exemptedSellerStatusRequiredProductIds.map((e) => e).toList();
    final l$preventCashPayment = preventCashPayment;
    _resultData['preventCashPayment'] = l$preventCashPayment;
    final l$preventCashPaymentProductIds = preventCashPaymentProductIds;
    _resultData['preventCashPaymentProductIds'] = l$preventCashPaymentProductIds
        .map((e) => e)
        .toList();
    final l$proofOfOwnershipRequired = proofOfOwnershipRequired;
    _resultData['proofOfOwnershipRequired'] = l$proofOfOwnershipRequired;
    final l$proofOfOwnershipRequiredProductIds =
        proofOfOwnershipRequiredProductIds;
    _resultData['proofOfOwnershipRequiredProductIds'] =
        l$proofOfOwnershipRequiredProductIds.map((e) => e).toList();
    final l$vehicleDetailsRequired = vehicleDetailsRequired;
    _resultData['vehicleDetailsRequired'] = l$vehicleDetailsRequired;
    final l$vehicleDetailsRequiredProductIds = vehicleDetailsRequiredProductIds;
    _resultData['vehicleDetailsRequiredProductIds'] =
        l$vehicleDetailsRequiredProductIds.map((e) => e).toList();
    final l$executedAffidavitDocumentRequired =
        executedAffidavitDocumentRequired;
    _resultData['executedAffidavitDocumentRequired'] =
        l$executedAffidavitDocumentRequired;
    final l$allowedForAutoConfirm = allowedForAutoConfirm;
    _resultData['allowedForAutoConfirm'] = l$allowedForAutoConfirm;
    final l$allowedForAutoConfirmProductIds = allowedForAutoConfirmProductIds;
    _resultData['allowedForAutoConfirmProductIds'] =
        l$allowedForAutoConfirmProductIds.map((e) => e).toList();
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$authorityReportable = authorityReportable;
    final l$authorityReportableProductIds = authorityReportableProductIds;
    final l$drivingLicenceRequired = drivingLicenceRequired;
    final l$drivingLicenceRequiredProductIds = drivingLicenceRequiredProductIds;
    final l$id = id;
    final l$cashCardRequired = cashCardRequired;
    final l$cashCardRequiredProductIds = cashCardRequiredProductIds;
    final l$copperSellersLicenseRequired = copperSellersLicenseRequired;
    final l$copperSellersLicenseRequiredProductIds =
        copperSellersLicenseRequiredProductIds;
    final l$executedAffidavitDocumentRequiredProductIds =
        executedAffidavitDocumentRequiredProductIds;
    final l$exemptedSellerStatusRequired = exemptedSellerStatusRequired;
    final l$exemptedSellerStatusRequiredProductIds =
        exemptedSellerStatusRequiredProductIds;
    final l$preventCashPayment = preventCashPayment;
    final l$preventCashPaymentProductIds = preventCashPaymentProductIds;
    final l$proofOfOwnershipRequired = proofOfOwnershipRequired;
    final l$proofOfOwnershipRequiredProductIds =
        proofOfOwnershipRequiredProductIds;
    final l$vehicleDetailsRequired = vehicleDetailsRequired;
    final l$vehicleDetailsRequiredProductIds = vehicleDetailsRequiredProductIds;
    final l$executedAffidavitDocumentRequired =
        executedAffidavitDocumentRequired;
    final l$allowedForAutoConfirm = allowedForAutoConfirm;
    final l$allowedForAutoConfirmProductIds = allowedForAutoConfirmProductIds;
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$authorityReportable,
      Object.hashAll(l$authorityReportableProductIds.map((v) => v)),
      l$drivingLicenceRequired,
      Object.hashAll(l$drivingLicenceRequiredProductIds.map((v) => v)),
      l$id,
      l$cashCardRequired,
      Object.hashAll(l$cashCardRequiredProductIds.map((v) => v)),
      l$copperSellersLicenseRequired,
      Object.hashAll(l$copperSellersLicenseRequiredProductIds.map((v) => v)),
      Object.hashAll(
        l$executedAffidavitDocumentRequiredProductIds.map((v) => v),
      ),
      l$exemptedSellerStatusRequired,
      Object.hashAll(l$exemptedSellerStatusRequiredProductIds.map((v) => v)),
      l$preventCashPayment,
      Object.hashAll(l$preventCashPaymentProductIds.map((v) => v)),
      l$proofOfOwnershipRequired,
      Object.hashAll(l$proofOfOwnershipRequiredProductIds.map((v) => v)),
      l$vehicleDetailsRequired,
      Object.hashAll(l$vehicleDetailsRequiredProductIds.map((v) => v)),
      l$executedAffidavitDocumentRequired,
      l$allowedForAutoConfirm,
      Object.hashAll(l$allowedForAutoConfirmProductIds.map((v) => v)),
      l$yardCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentRuleFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$authorityReportable = authorityReportable;
    final lOther$authorityReportable = other.authorityReportable;
    if (l$authorityReportable != lOther$authorityReportable) {
      return false;
    }
    final l$authorityReportableProductIds = authorityReportableProductIds;
    final lOther$authorityReportableProductIds =
        other.authorityReportableProductIds;
    if (l$authorityReportableProductIds.length !=
        lOther$authorityReportableProductIds.length) {
      return false;
    }
    for (int i = 0; i < l$authorityReportableProductIds.length; i++) {
      final l$authorityReportableProductIds$entry =
          l$authorityReportableProductIds[i];
      final lOther$authorityReportableProductIds$entry =
          lOther$authorityReportableProductIds[i];
      if (l$authorityReportableProductIds$entry !=
          lOther$authorityReportableProductIds$entry) {
        return false;
      }
    }
    final l$drivingLicenceRequired = drivingLicenceRequired;
    final lOther$drivingLicenceRequired = other.drivingLicenceRequired;
    if (l$drivingLicenceRequired != lOther$drivingLicenceRequired) {
      return false;
    }
    final l$drivingLicenceRequiredProductIds = drivingLicenceRequiredProductIds;
    final lOther$drivingLicenceRequiredProductIds =
        other.drivingLicenceRequiredProductIds;
    if (l$drivingLicenceRequiredProductIds.length !=
        lOther$drivingLicenceRequiredProductIds.length) {
      return false;
    }
    for (int i = 0; i < l$drivingLicenceRequiredProductIds.length; i++) {
      final l$drivingLicenceRequiredProductIds$entry =
          l$drivingLicenceRequiredProductIds[i];
      final lOther$drivingLicenceRequiredProductIds$entry =
          lOther$drivingLicenceRequiredProductIds[i];
      if (l$drivingLicenceRequiredProductIds$entry !=
          lOther$drivingLicenceRequiredProductIds$entry) {
        return false;
      }
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$cashCardRequired = cashCardRequired;
    final lOther$cashCardRequired = other.cashCardRequired;
    if (l$cashCardRequired != lOther$cashCardRequired) {
      return false;
    }
    final l$cashCardRequiredProductIds = cashCardRequiredProductIds;
    final lOther$cashCardRequiredProductIds = other.cashCardRequiredProductIds;
    if (l$cashCardRequiredProductIds.length !=
        lOther$cashCardRequiredProductIds.length) {
      return false;
    }
    for (int i = 0; i < l$cashCardRequiredProductIds.length; i++) {
      final l$cashCardRequiredProductIds$entry =
          l$cashCardRequiredProductIds[i];
      final lOther$cashCardRequiredProductIds$entry =
          lOther$cashCardRequiredProductIds[i];
      if (l$cashCardRequiredProductIds$entry !=
          lOther$cashCardRequiredProductIds$entry) {
        return false;
      }
    }
    final l$copperSellersLicenseRequired = copperSellersLicenseRequired;
    final lOther$copperSellersLicenseRequired =
        other.copperSellersLicenseRequired;
    if (l$copperSellersLicenseRequired != lOther$copperSellersLicenseRequired) {
      return false;
    }
    final l$copperSellersLicenseRequiredProductIds =
        copperSellersLicenseRequiredProductIds;
    final lOther$copperSellersLicenseRequiredProductIds =
        other.copperSellersLicenseRequiredProductIds;
    if (l$copperSellersLicenseRequiredProductIds.length !=
        lOther$copperSellersLicenseRequiredProductIds.length) {
      return false;
    }
    for (int i = 0; i < l$copperSellersLicenseRequiredProductIds.length; i++) {
      final l$copperSellersLicenseRequiredProductIds$entry =
          l$copperSellersLicenseRequiredProductIds[i];
      final lOther$copperSellersLicenseRequiredProductIds$entry =
          lOther$copperSellersLicenseRequiredProductIds[i];
      if (l$copperSellersLicenseRequiredProductIds$entry !=
          lOther$copperSellersLicenseRequiredProductIds$entry) {
        return false;
      }
    }
    final l$executedAffidavitDocumentRequiredProductIds =
        executedAffidavitDocumentRequiredProductIds;
    final lOther$executedAffidavitDocumentRequiredProductIds =
        other.executedAffidavitDocumentRequiredProductIds;
    if (l$executedAffidavitDocumentRequiredProductIds.length !=
        lOther$executedAffidavitDocumentRequiredProductIds.length) {
      return false;
    }
    for (
      int i = 0;
      i < l$executedAffidavitDocumentRequiredProductIds.length;
      i++
    ) {
      final l$executedAffidavitDocumentRequiredProductIds$entry =
          l$executedAffidavitDocumentRequiredProductIds[i];
      final lOther$executedAffidavitDocumentRequiredProductIds$entry =
          lOther$executedAffidavitDocumentRequiredProductIds[i];
      if (l$executedAffidavitDocumentRequiredProductIds$entry !=
          lOther$executedAffidavitDocumentRequiredProductIds$entry) {
        return false;
      }
    }
    final l$exemptedSellerStatusRequired = exemptedSellerStatusRequired;
    final lOther$exemptedSellerStatusRequired =
        other.exemptedSellerStatusRequired;
    if (l$exemptedSellerStatusRequired != lOther$exemptedSellerStatusRequired) {
      return false;
    }
    final l$exemptedSellerStatusRequiredProductIds =
        exemptedSellerStatusRequiredProductIds;
    final lOther$exemptedSellerStatusRequiredProductIds =
        other.exemptedSellerStatusRequiredProductIds;
    if (l$exemptedSellerStatusRequiredProductIds.length !=
        lOther$exemptedSellerStatusRequiredProductIds.length) {
      return false;
    }
    for (int i = 0; i < l$exemptedSellerStatusRequiredProductIds.length; i++) {
      final l$exemptedSellerStatusRequiredProductIds$entry =
          l$exemptedSellerStatusRequiredProductIds[i];
      final lOther$exemptedSellerStatusRequiredProductIds$entry =
          lOther$exemptedSellerStatusRequiredProductIds[i];
      if (l$exemptedSellerStatusRequiredProductIds$entry !=
          lOther$exemptedSellerStatusRequiredProductIds$entry) {
        return false;
      }
    }
    final l$preventCashPayment = preventCashPayment;
    final lOther$preventCashPayment = other.preventCashPayment;
    if (l$preventCashPayment != lOther$preventCashPayment) {
      return false;
    }
    final l$preventCashPaymentProductIds = preventCashPaymentProductIds;
    final lOther$preventCashPaymentProductIds =
        other.preventCashPaymentProductIds;
    if (l$preventCashPaymentProductIds.length !=
        lOther$preventCashPaymentProductIds.length) {
      return false;
    }
    for (int i = 0; i < l$preventCashPaymentProductIds.length; i++) {
      final l$preventCashPaymentProductIds$entry =
          l$preventCashPaymentProductIds[i];
      final lOther$preventCashPaymentProductIds$entry =
          lOther$preventCashPaymentProductIds[i];
      if (l$preventCashPaymentProductIds$entry !=
          lOther$preventCashPaymentProductIds$entry) {
        return false;
      }
    }
    final l$proofOfOwnershipRequired = proofOfOwnershipRequired;
    final lOther$proofOfOwnershipRequired = other.proofOfOwnershipRequired;
    if (l$proofOfOwnershipRequired != lOther$proofOfOwnershipRequired) {
      return false;
    }
    final l$proofOfOwnershipRequiredProductIds =
        proofOfOwnershipRequiredProductIds;
    final lOther$proofOfOwnershipRequiredProductIds =
        other.proofOfOwnershipRequiredProductIds;
    if (l$proofOfOwnershipRequiredProductIds.length !=
        lOther$proofOfOwnershipRequiredProductIds.length) {
      return false;
    }
    for (int i = 0; i < l$proofOfOwnershipRequiredProductIds.length; i++) {
      final l$proofOfOwnershipRequiredProductIds$entry =
          l$proofOfOwnershipRequiredProductIds[i];
      final lOther$proofOfOwnershipRequiredProductIds$entry =
          lOther$proofOfOwnershipRequiredProductIds[i];
      if (l$proofOfOwnershipRequiredProductIds$entry !=
          lOther$proofOfOwnershipRequiredProductIds$entry) {
        return false;
      }
    }
    final l$vehicleDetailsRequired = vehicleDetailsRequired;
    final lOther$vehicleDetailsRequired = other.vehicleDetailsRequired;
    if (l$vehicleDetailsRequired != lOther$vehicleDetailsRequired) {
      return false;
    }
    final l$vehicleDetailsRequiredProductIds = vehicleDetailsRequiredProductIds;
    final lOther$vehicleDetailsRequiredProductIds =
        other.vehicleDetailsRequiredProductIds;
    if (l$vehicleDetailsRequiredProductIds.length !=
        lOther$vehicleDetailsRequiredProductIds.length) {
      return false;
    }
    for (int i = 0; i < l$vehicleDetailsRequiredProductIds.length; i++) {
      final l$vehicleDetailsRequiredProductIds$entry =
          l$vehicleDetailsRequiredProductIds[i];
      final lOther$vehicleDetailsRequiredProductIds$entry =
          lOther$vehicleDetailsRequiredProductIds[i];
      if (l$vehicleDetailsRequiredProductIds$entry !=
          lOther$vehicleDetailsRequiredProductIds$entry) {
        return false;
      }
    }
    final l$executedAffidavitDocumentRequired =
        executedAffidavitDocumentRequired;
    final lOther$executedAffidavitDocumentRequired =
        other.executedAffidavitDocumentRequired;
    if (l$executedAffidavitDocumentRequired !=
        lOther$executedAffidavitDocumentRequired) {
      return false;
    }
    final l$allowedForAutoConfirm = allowedForAutoConfirm;
    final lOther$allowedForAutoConfirm = other.allowedForAutoConfirm;
    if (l$allowedForAutoConfirm != lOther$allowedForAutoConfirm) {
      return false;
    }
    final l$allowedForAutoConfirmProductIds = allowedForAutoConfirmProductIds;
    final lOther$allowedForAutoConfirmProductIds =
        other.allowedForAutoConfirmProductIds;
    if (l$allowedForAutoConfirmProductIds.length !=
        lOther$allowedForAutoConfirmProductIds.length) {
      return false;
    }
    for (int i = 0; i < l$allowedForAutoConfirmProductIds.length; i++) {
      final l$allowedForAutoConfirmProductIds$entry =
          l$allowedForAutoConfirmProductIds[i];
      final lOther$allowedForAutoConfirmProductIds$entry =
          lOther$allowedForAutoConfirmProductIds[i];
      if (l$allowedForAutoConfirmProductIds$entry !=
          lOther$allowedForAutoConfirmProductIds$entry) {
        return false;
      }
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$PaymentRuleFragment
    on Fragment$PaymentRuleFragment {
  CopyWith$Fragment$PaymentRuleFragment<Fragment$PaymentRuleFragment>
  get copyWith => CopyWith$Fragment$PaymentRuleFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentRuleFragment<TRes> {
  factory CopyWith$Fragment$PaymentRuleFragment(
    Fragment$PaymentRuleFragment instance,
    TRes Function(Fragment$PaymentRuleFragment) then,
  ) = _CopyWithImpl$Fragment$PaymentRuleFragment;

  factory CopyWith$Fragment$PaymentRuleFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentRuleFragment;

  TRes call({
    bool? authorityReportable,
    List<String>? authorityReportableProductIds,
    bool? drivingLicenceRequired,
    List<String>? drivingLicenceRequiredProductIds,
    String? id,
    bool? cashCardRequired,
    List<String>? cashCardRequiredProductIds,
    bool? copperSellersLicenseRequired,
    List<String>? copperSellersLicenseRequiredProductIds,
    List<String>? executedAffidavitDocumentRequiredProductIds,
    bool? exemptedSellerStatusRequired,
    List<String>? exemptedSellerStatusRequiredProductIds,
    bool? preventCashPayment,
    List<String>? preventCashPaymentProductIds,
    bool? proofOfOwnershipRequired,
    List<String>? proofOfOwnershipRequiredProductIds,
    bool? vehicleDetailsRequired,
    List<String>? vehicleDetailsRequiredProductIds,
    bool? executedAffidavitDocumentRequired,
    bool? allowedForAutoConfirm,
    List<String>? allowedForAutoConfirmProductIds,
    String? yardCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentRuleFragment<TRes>
    implements CopyWith$Fragment$PaymentRuleFragment<TRes> {
  _CopyWithImpl$Fragment$PaymentRuleFragment(this._instance, this._then);

  final Fragment$PaymentRuleFragment _instance;

  final TRes Function(Fragment$PaymentRuleFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? authorityReportable = _undefined,
    Object? authorityReportableProductIds = _undefined,
    Object? drivingLicenceRequired = _undefined,
    Object? drivingLicenceRequiredProductIds = _undefined,
    Object? id = _undefined,
    Object? cashCardRequired = _undefined,
    Object? cashCardRequiredProductIds = _undefined,
    Object? copperSellersLicenseRequired = _undefined,
    Object? copperSellersLicenseRequiredProductIds = _undefined,
    Object? executedAffidavitDocumentRequiredProductIds = _undefined,
    Object? exemptedSellerStatusRequired = _undefined,
    Object? exemptedSellerStatusRequiredProductIds = _undefined,
    Object? preventCashPayment = _undefined,
    Object? preventCashPaymentProductIds = _undefined,
    Object? proofOfOwnershipRequired = _undefined,
    Object? proofOfOwnershipRequiredProductIds = _undefined,
    Object? vehicleDetailsRequired = _undefined,
    Object? vehicleDetailsRequiredProductIds = _undefined,
    Object? executedAffidavitDocumentRequired = _undefined,
    Object? allowedForAutoConfirm = _undefined,
    Object? allowedForAutoConfirmProductIds = _undefined,
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentRuleFragment(
      authorityReportable:
          authorityReportable == _undefined || authorityReportable == null
          ? _instance.authorityReportable
          : (authorityReportable as bool),
      authorityReportableProductIds:
          authorityReportableProductIds == _undefined ||
              authorityReportableProductIds == null
          ? _instance.authorityReportableProductIds
          : (authorityReportableProductIds as List<String>),
      drivingLicenceRequired:
          drivingLicenceRequired == _undefined || drivingLicenceRequired == null
          ? _instance.drivingLicenceRequired
          : (drivingLicenceRequired as bool),
      drivingLicenceRequiredProductIds:
          drivingLicenceRequiredProductIds == _undefined ||
              drivingLicenceRequiredProductIds == null
          ? _instance.drivingLicenceRequiredProductIds
          : (drivingLicenceRequiredProductIds as List<String>),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      cashCardRequired:
          cashCardRequired == _undefined || cashCardRequired == null
          ? _instance.cashCardRequired
          : (cashCardRequired as bool),
      cashCardRequiredProductIds:
          cashCardRequiredProductIds == _undefined ||
              cashCardRequiredProductIds == null
          ? _instance.cashCardRequiredProductIds
          : (cashCardRequiredProductIds as List<String>),
      copperSellersLicenseRequired:
          copperSellersLicenseRequired == _undefined ||
              copperSellersLicenseRequired == null
          ? _instance.copperSellersLicenseRequired
          : (copperSellersLicenseRequired as bool),
      copperSellersLicenseRequiredProductIds:
          copperSellersLicenseRequiredProductIds == _undefined ||
              copperSellersLicenseRequiredProductIds == null
          ? _instance.copperSellersLicenseRequiredProductIds
          : (copperSellersLicenseRequiredProductIds as List<String>),
      executedAffidavitDocumentRequiredProductIds:
          executedAffidavitDocumentRequiredProductIds == _undefined ||
              executedAffidavitDocumentRequiredProductIds == null
          ? _instance.executedAffidavitDocumentRequiredProductIds
          : (executedAffidavitDocumentRequiredProductIds as List<String>),
      exemptedSellerStatusRequired:
          exemptedSellerStatusRequired == _undefined ||
              exemptedSellerStatusRequired == null
          ? _instance.exemptedSellerStatusRequired
          : (exemptedSellerStatusRequired as bool),
      exemptedSellerStatusRequiredProductIds:
          exemptedSellerStatusRequiredProductIds == _undefined ||
              exemptedSellerStatusRequiredProductIds == null
          ? _instance.exemptedSellerStatusRequiredProductIds
          : (exemptedSellerStatusRequiredProductIds as List<String>),
      preventCashPayment:
          preventCashPayment == _undefined || preventCashPayment == null
          ? _instance.preventCashPayment
          : (preventCashPayment as bool),
      preventCashPaymentProductIds:
          preventCashPaymentProductIds == _undefined ||
              preventCashPaymentProductIds == null
          ? _instance.preventCashPaymentProductIds
          : (preventCashPaymentProductIds as List<String>),
      proofOfOwnershipRequired:
          proofOfOwnershipRequired == _undefined ||
              proofOfOwnershipRequired == null
          ? _instance.proofOfOwnershipRequired
          : (proofOfOwnershipRequired as bool),
      proofOfOwnershipRequiredProductIds:
          proofOfOwnershipRequiredProductIds == _undefined ||
              proofOfOwnershipRequiredProductIds == null
          ? _instance.proofOfOwnershipRequiredProductIds
          : (proofOfOwnershipRequiredProductIds as List<String>),
      vehicleDetailsRequired:
          vehicleDetailsRequired == _undefined || vehicleDetailsRequired == null
          ? _instance.vehicleDetailsRequired
          : (vehicleDetailsRequired as bool),
      vehicleDetailsRequiredProductIds:
          vehicleDetailsRequiredProductIds == _undefined ||
              vehicleDetailsRequiredProductIds == null
          ? _instance.vehicleDetailsRequiredProductIds
          : (vehicleDetailsRequiredProductIds as List<String>),
      executedAffidavitDocumentRequired:
          executedAffidavitDocumentRequired == _undefined ||
              executedAffidavitDocumentRequired == null
          ? _instance.executedAffidavitDocumentRequired
          : (executedAffidavitDocumentRequired as bool),
      allowedForAutoConfirm:
          allowedForAutoConfirm == _undefined || allowedForAutoConfirm == null
          ? _instance.allowedForAutoConfirm
          : (allowedForAutoConfirm as bool),
      allowedForAutoConfirmProductIds:
          allowedForAutoConfirmProductIds == _undefined ||
              allowedForAutoConfirmProductIds == null
          ? _instance.allowedForAutoConfirmProductIds
          : (allowedForAutoConfirmProductIds as List<String>),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentRuleFragment<TRes>
    implements CopyWith$Fragment$PaymentRuleFragment<TRes> {
  _CopyWithStubImpl$Fragment$PaymentRuleFragment(this._res);

  TRes _res;

  call({
    bool? authorityReportable,
    List<String>? authorityReportableProductIds,
    bool? drivingLicenceRequired,
    List<String>? drivingLicenceRequiredProductIds,
    String? id,
    bool? cashCardRequired,
    List<String>? cashCardRequiredProductIds,
    bool? copperSellersLicenseRequired,
    List<String>? copperSellersLicenseRequiredProductIds,
    List<String>? executedAffidavitDocumentRequiredProductIds,
    bool? exemptedSellerStatusRequired,
    List<String>? exemptedSellerStatusRequiredProductIds,
    bool? preventCashPayment,
    List<String>? preventCashPaymentProductIds,
    bool? proofOfOwnershipRequired,
    List<String>? proofOfOwnershipRequiredProductIds,
    bool? vehicleDetailsRequired,
    List<String>? vehicleDetailsRequiredProductIds,
    bool? executedAffidavitDocumentRequired,
    bool? allowedForAutoConfirm,
    List<String>? allowedForAutoConfirmProductIds,
    String? yardCode,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionPaymentRuleFragment = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentRuleFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'PaymentRules'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'authorityReportable'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'authorityReportableProductIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'drivingLicenceRequired'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'drivingLicenceRequiredProductIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'cashCardRequired'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'cashCardRequiredProductIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'copperSellersLicenseRequired'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'copperSellersLicenseRequiredProductIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'executedAffidavitDocumentRequiredProductIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'exemptedSellerStatusRequired'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'exemptedSellerStatusRequiredProductIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'preventCashPayment'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'preventCashPaymentProductIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'proofOfOwnershipRequired'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'proofOfOwnershipRequiredProductIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'vehicleDetailsRequired'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'vehicleDetailsRequiredProductIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'executedAffidavitDocumentRequired'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'allowedForAutoConfirm'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'allowedForAutoConfirmProductIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'yardCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentPaymentRuleFragment = DocumentNode(
  definitions: [fragmentDefinitionPaymentRuleFragment],
);
