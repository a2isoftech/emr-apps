import '../schema.graphql.dart';
import 'company_fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'territory_fragment.graphql.dart';

class Fragment$YardFragment {
  Fragment$YardFragment({
    required this.active,
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.addressLine4,
    this.addressLine5,
    this.addressLine6,
    required this.companyCode,
    required this.companyId,
    required this.defaultRetailAccountPool,
    this.extendedProperties,
    required this.id,
    required this.managerIds,
    required this.name,
    this.postCode,
    required this.regionId,
    required this.shortName,
    required this.tags,
    this.telephone,
    required this.territoryCode,
    required this.territoryId,
    required this.timeZoneId,
    this.wasteCarrierRegNo,
    this.wmlExemptionNo,
    required this.yardCode,
    this.company,
    this.territory,
    required this.created,
    this.geoLocation,
    this.managers,
    required this.modified,
    this.region,
    this.timezone,
    required this.promptForPhotoDefault,
    required this.enforceIssueDateForUtilityBill,
    required this.defaultPaymentMethod,
    required this.blockExpiredUtilityBill,
    required this.primaryCashierPaymentSystem,
    required this.paymentMethods,
    this.$__typename = 'Yard',
  });

  factory Fragment$YardFragment.fromJson(Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$addressLine1 = json['addressLine1'];
    final l$addressLine2 = json['addressLine2'];
    final l$addressLine3 = json['addressLine3'];
    final l$addressLine4 = json['addressLine4'];
    final l$addressLine5 = json['addressLine5'];
    final l$addressLine6 = json['addressLine6'];
    final l$companyCode = json['companyCode'];
    final l$companyId = json['companyId'];
    final l$defaultRetailAccountPool = json['defaultRetailAccountPool'];
    final l$extendedProperties = json['extendedProperties'];
    final l$id = json['id'];
    final l$managerIds = json['managerIds'];
    final l$name = json['name'];
    final l$postCode = json['postCode'];
    final l$regionId = json['regionId'];
    final l$shortName = json['shortName'];
    final l$tags = json['tags'];
    final l$telephone = json['telephone'];
    final l$territoryCode = json['territoryCode'];
    final l$territoryId = json['territoryId'];
    final l$timeZoneId = json['timeZoneId'];
    final l$wasteCarrierRegNo = json['wasteCarrierRegNo'];
    final l$wmlExemptionNo = json['wmlExemptionNo'];
    final l$yardCode = json['yardCode'];
    final l$company = json['company'];
    final l$territory = json['territory'];
    final l$created = json['created'];
    final l$geoLocation = json['geoLocation'];
    final l$managers = json['managers'];
    final l$modified = json['modified'];
    final l$region = json['region'];
    final l$timezone = json['timezone'];
    final l$promptForPhotoDefault = json['promptForPhotoDefault'];
    final l$enforceIssueDateForUtilityBill =
        json['enforceIssueDateForUtilityBill'];
    final l$defaultPaymentMethod = json['defaultPaymentMethod'];
    final l$blockExpiredUtilityBill = json['blockExpiredUtilityBill'];
    final l$primaryCashierPaymentSystem = json['primaryCashierPaymentSystem'];
    final l$paymentMethods = json['paymentMethods'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment(
      active: (l$active as bool),
      addressLine1: (l$addressLine1 as String?),
      addressLine2: (l$addressLine2 as String?),
      addressLine3: (l$addressLine3 as String?),
      addressLine4: (l$addressLine4 as String?),
      addressLine5: (l$addressLine5 as String?),
      addressLine6: (l$addressLine6 as String?),
      companyCode: (l$companyCode as String),
      companyId: (l$companyId as String),
      defaultRetailAccountPool: (l$defaultRetailAccountPool as String),
      extendedProperties: (l$extendedProperties as Map<String, dynamic>?),
      id: (l$id as String),
      managerIds: (l$managerIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      name: (l$name as String),
      postCode: (l$postCode as String?),
      regionId: (l$regionId as String),
      shortName: (l$shortName as String),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      telephone: (l$telephone as String?),
      territoryCode: (l$territoryCode as String),
      territoryId: (l$territoryId as String),
      timeZoneId: (l$timeZoneId as String),
      wasteCarrierRegNo: (l$wasteCarrierRegNo as String?),
      wmlExemptionNo: (l$wmlExemptionNo as String?),
      yardCode: (l$yardCode as String),
      company: l$company == null
          ? null
          : Fragment$CompanyFragment.fromJson(
              (l$company as Map<String, dynamic>),
            ),
      territory: l$territory == null
          ? null
          : Fragment$TerritoryFragment.fromJson(
              (l$territory as Map<String, dynamic>),
            ),
      created: Fragment$YardFragment$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      geoLocation: l$geoLocation == null
          ? null
          : Fragment$YardFragment$geoLocation.fromJson(
              (l$geoLocation as Map<String, dynamic>),
            ),
      managers: (l$managers as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Fragment$YardFragment$managers.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      modified: Fragment$YardFragment$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      region: l$region == null
          ? null
          : Fragment$YardFragment$region.fromJson(
              (l$region as Map<String, dynamic>),
            ),
      timezone: l$timezone == null
          ? null
          : Fragment$YardFragment$timezone.fromJson(
              (l$timezone as Map<String, dynamic>),
            ),
      promptForPhotoDefault: (l$promptForPhotoDefault as bool),
      enforceIssueDateForUtilityBill:
          (l$enforceIssueDateForUtilityBill as bool),
      defaultPaymentMethod: fromJson$Enum$PaymentMethod(
        (l$defaultPaymentMethod as String),
      ),
      blockExpiredUtilityBill: (l$blockExpiredUtilityBill as bool),
      primaryCashierPaymentSystem: fromJson$Enum$PaymentSystem(
        (l$primaryCashierPaymentSystem as String),
      ),
      paymentMethods: Fragment$YardFragment$paymentMethods.fromJson(
        (l$paymentMethods as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String? addressLine1;

  final String? addressLine2;

  final String? addressLine3;

  final String? addressLine4;

  final String? addressLine5;

  final String? addressLine6;

  final String companyCode;

  final String companyId;

  final String defaultRetailAccountPool;

  final Map<String, dynamic>? extendedProperties;

  final String id;

  final List<String> managerIds;

  final String name;

  final String? postCode;

  final String regionId;

  final String shortName;

  final List<String> tags;

  final String? telephone;

  final String territoryCode;

  final String territoryId;

  final String timeZoneId;

  final String? wasteCarrierRegNo;

  final String? wmlExemptionNo;

  final String yardCode;

  final Fragment$CompanyFragment? company;

  final Fragment$TerritoryFragment? territory;

  final Fragment$YardFragment$created created;

  final Fragment$YardFragment$geoLocation? geoLocation;

  final List<Fragment$YardFragment$managers?>? managers;

  final Fragment$YardFragment$modified modified;

  final Fragment$YardFragment$region? region;

  final Fragment$YardFragment$timezone? timezone;

  final bool promptForPhotoDefault;

  final bool enforceIssueDateForUtilityBill;

  final Enum$PaymentMethod defaultPaymentMethod;

  final bool blockExpiredUtilityBill;

  final Enum$PaymentSystem primaryCashierPaymentSystem;

  final Fragment$YardFragment$paymentMethods paymentMethods;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$addressLine1 = addressLine1;
    _resultData['addressLine1'] = l$addressLine1;
    final l$addressLine2 = addressLine2;
    _resultData['addressLine2'] = l$addressLine2;
    final l$addressLine3 = addressLine3;
    _resultData['addressLine3'] = l$addressLine3;
    final l$addressLine4 = addressLine4;
    _resultData['addressLine4'] = l$addressLine4;
    final l$addressLine5 = addressLine5;
    _resultData['addressLine5'] = l$addressLine5;
    final l$addressLine6 = addressLine6;
    _resultData['addressLine6'] = l$addressLine6;
    final l$companyCode = companyCode;
    _resultData['companyCode'] = l$companyCode;
    final l$companyId = companyId;
    _resultData['companyId'] = l$companyId;
    final l$defaultRetailAccountPool = defaultRetailAccountPool;
    _resultData['defaultRetailAccountPool'] = l$defaultRetailAccountPool;
    final l$extendedProperties = extendedProperties;
    _resultData['extendedProperties'] = l$extendedProperties;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$managerIds = managerIds;
    _resultData['managerIds'] = l$managerIds.map((e) => e).toList();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$postCode = postCode;
    _resultData['postCode'] = l$postCode;
    final l$regionId = regionId;
    _resultData['regionId'] = l$regionId;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e).toList();
    final l$telephone = telephone;
    _resultData['telephone'] = l$telephone;
    final l$territoryCode = territoryCode;
    _resultData['territoryCode'] = l$territoryCode;
    final l$territoryId = territoryId;
    _resultData['territoryId'] = l$territoryId;
    final l$timeZoneId = timeZoneId;
    _resultData['timeZoneId'] = l$timeZoneId;
    final l$wasteCarrierRegNo = wasteCarrierRegNo;
    _resultData['wasteCarrierRegNo'] = l$wasteCarrierRegNo;
    final l$wmlExemptionNo = wmlExemptionNo;
    _resultData['wmlExemptionNo'] = l$wmlExemptionNo;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$company = company;
    _resultData['company'] = l$company?.toJson();
    final l$territory = territory;
    _resultData['territory'] = l$territory?.toJson();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$geoLocation = geoLocation;
    _resultData['geoLocation'] = l$geoLocation?.toJson();
    final l$managers = managers;
    _resultData['managers'] = l$managers?.map((e) => e?.toJson()).toList();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$region = region;
    _resultData['region'] = l$region?.toJson();
    final l$timezone = timezone;
    _resultData['timezone'] = l$timezone?.toJson();
    final l$promptForPhotoDefault = promptForPhotoDefault;
    _resultData['promptForPhotoDefault'] = l$promptForPhotoDefault;
    final l$enforceIssueDateForUtilityBill = enforceIssueDateForUtilityBill;
    _resultData['enforceIssueDateForUtilityBill'] =
        l$enforceIssueDateForUtilityBill;
    final l$defaultPaymentMethod = defaultPaymentMethod;
    _resultData['defaultPaymentMethod'] = toJson$Enum$PaymentMethod(
      l$defaultPaymentMethod,
    );
    final l$blockExpiredUtilityBill = blockExpiredUtilityBill;
    _resultData['blockExpiredUtilityBill'] = l$blockExpiredUtilityBill;
    final l$primaryCashierPaymentSystem = primaryCashierPaymentSystem;
    _resultData['primaryCashierPaymentSystem'] = toJson$Enum$PaymentSystem(
      l$primaryCashierPaymentSystem,
    );
    final l$paymentMethods = paymentMethods;
    _resultData['paymentMethods'] = l$paymentMethods.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$addressLine1 = addressLine1;
    final l$addressLine2 = addressLine2;
    final l$addressLine3 = addressLine3;
    final l$addressLine4 = addressLine4;
    final l$addressLine5 = addressLine5;
    final l$addressLine6 = addressLine6;
    final l$companyCode = companyCode;
    final l$companyId = companyId;
    final l$defaultRetailAccountPool = defaultRetailAccountPool;
    final l$extendedProperties = extendedProperties;
    final l$id = id;
    final l$managerIds = managerIds;
    final l$name = name;
    final l$postCode = postCode;
    final l$regionId = regionId;
    final l$shortName = shortName;
    final l$tags = tags;
    final l$telephone = telephone;
    final l$territoryCode = territoryCode;
    final l$territoryId = territoryId;
    final l$timeZoneId = timeZoneId;
    final l$wasteCarrierRegNo = wasteCarrierRegNo;
    final l$wmlExemptionNo = wmlExemptionNo;
    final l$yardCode = yardCode;
    final l$company = company;
    final l$territory = territory;
    final l$created = created;
    final l$geoLocation = geoLocation;
    final l$managers = managers;
    final l$modified = modified;
    final l$region = region;
    final l$timezone = timezone;
    final l$promptForPhotoDefault = promptForPhotoDefault;
    final l$enforceIssueDateForUtilityBill = enforceIssueDateForUtilityBill;
    final l$defaultPaymentMethod = defaultPaymentMethod;
    final l$blockExpiredUtilityBill = blockExpiredUtilityBill;
    final l$primaryCashierPaymentSystem = primaryCashierPaymentSystem;
    final l$paymentMethods = paymentMethods;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$addressLine1,
      l$addressLine2,
      l$addressLine3,
      l$addressLine4,
      l$addressLine5,
      l$addressLine6,
      l$companyCode,
      l$companyId,
      l$defaultRetailAccountPool,
      l$extendedProperties,
      l$id,
      Object.hashAll(l$managerIds.map((v) => v)),
      l$name,
      l$postCode,
      l$regionId,
      l$shortName,
      Object.hashAll(l$tags.map((v) => v)),
      l$telephone,
      l$territoryCode,
      l$territoryId,
      l$timeZoneId,
      l$wasteCarrierRegNo,
      l$wmlExemptionNo,
      l$yardCode,
      l$company,
      l$territory,
      l$created,
      l$geoLocation,
      l$managers == null ? null : Object.hashAll(l$managers.map((v) => v)),
      l$modified,
      l$region,
      l$timezone,
      l$promptForPhotoDefault,
      l$enforceIssueDateForUtilityBill,
      l$defaultPaymentMethod,
      l$blockExpiredUtilityBill,
      l$primaryCashierPaymentSystem,
      l$paymentMethods,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment || runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$addressLine1 = addressLine1;
    final lOther$addressLine1 = other.addressLine1;
    if (l$addressLine1 != lOther$addressLine1) {
      return false;
    }
    final l$addressLine2 = addressLine2;
    final lOther$addressLine2 = other.addressLine2;
    if (l$addressLine2 != lOther$addressLine2) {
      return false;
    }
    final l$addressLine3 = addressLine3;
    final lOther$addressLine3 = other.addressLine3;
    if (l$addressLine3 != lOther$addressLine3) {
      return false;
    }
    final l$addressLine4 = addressLine4;
    final lOther$addressLine4 = other.addressLine4;
    if (l$addressLine4 != lOther$addressLine4) {
      return false;
    }
    final l$addressLine5 = addressLine5;
    final lOther$addressLine5 = other.addressLine5;
    if (l$addressLine5 != lOther$addressLine5) {
      return false;
    }
    final l$addressLine6 = addressLine6;
    final lOther$addressLine6 = other.addressLine6;
    if (l$addressLine6 != lOther$addressLine6) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$companyId = companyId;
    final lOther$companyId = other.companyId;
    if (l$companyId != lOther$companyId) {
      return false;
    }
    final l$defaultRetailAccountPool = defaultRetailAccountPool;
    final lOther$defaultRetailAccountPool = other.defaultRetailAccountPool;
    if (l$defaultRetailAccountPool != lOther$defaultRetailAccountPool) {
      return false;
    }
    final l$extendedProperties = extendedProperties;
    final lOther$extendedProperties = other.extendedProperties;
    if (l$extendedProperties != lOther$extendedProperties) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$managerIds = managerIds;
    final lOther$managerIds = other.managerIds;
    if (l$managerIds.length != lOther$managerIds.length) {
      return false;
    }
    for (int i = 0; i < l$managerIds.length; i++) {
      final l$managerIds$entry = l$managerIds[i];
      final lOther$managerIds$entry = lOther$managerIds[i];
      if (l$managerIds$entry != lOther$managerIds$entry) {
        return false;
      }
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (l$postCode != lOther$postCode) {
      return false;
    }
    final l$regionId = regionId;
    final lOther$regionId = other.regionId;
    if (l$regionId != lOther$regionId) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$telephone = telephone;
    final lOther$telephone = other.telephone;
    if (l$telephone != lOther$telephone) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$territoryId = territoryId;
    final lOther$territoryId = other.territoryId;
    if (l$territoryId != lOther$territoryId) {
      return false;
    }
    final l$timeZoneId = timeZoneId;
    final lOther$timeZoneId = other.timeZoneId;
    if (l$timeZoneId != lOther$timeZoneId) {
      return false;
    }
    final l$wasteCarrierRegNo = wasteCarrierRegNo;
    final lOther$wasteCarrierRegNo = other.wasteCarrierRegNo;
    if (l$wasteCarrierRegNo != lOther$wasteCarrierRegNo) {
      return false;
    }
    final l$wmlExemptionNo = wmlExemptionNo;
    final lOther$wmlExemptionNo = other.wmlExemptionNo;
    if (l$wmlExemptionNo != lOther$wmlExemptionNo) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$company = company;
    final lOther$company = other.company;
    if (l$company != lOther$company) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$geoLocation = geoLocation;
    final lOther$geoLocation = other.geoLocation;
    if (l$geoLocation != lOther$geoLocation) {
      return false;
    }
    final l$managers = managers;
    final lOther$managers = other.managers;
    if (l$managers != null && lOther$managers != null) {
      if (l$managers.length != lOther$managers.length) {
        return false;
      }
      for (int i = 0; i < l$managers.length; i++) {
        final l$managers$entry = l$managers[i];
        final lOther$managers$entry = lOther$managers[i];
        if (l$managers$entry != lOther$managers$entry) {
          return false;
        }
      }
    } else if (l$managers != lOther$managers) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$region = region;
    final lOther$region = other.region;
    if (l$region != lOther$region) {
      return false;
    }
    final l$timezone = timezone;
    final lOther$timezone = other.timezone;
    if (l$timezone != lOther$timezone) {
      return false;
    }
    final l$promptForPhotoDefault = promptForPhotoDefault;
    final lOther$promptForPhotoDefault = other.promptForPhotoDefault;
    if (l$promptForPhotoDefault != lOther$promptForPhotoDefault) {
      return false;
    }
    final l$enforceIssueDateForUtilityBill = enforceIssueDateForUtilityBill;
    final lOther$enforceIssueDateForUtilityBill =
        other.enforceIssueDateForUtilityBill;
    if (l$enforceIssueDateForUtilityBill !=
        lOther$enforceIssueDateForUtilityBill) {
      return false;
    }
    final l$defaultPaymentMethod = defaultPaymentMethod;
    final lOther$defaultPaymentMethod = other.defaultPaymentMethod;
    if (l$defaultPaymentMethod != lOther$defaultPaymentMethod) {
      return false;
    }
    final l$blockExpiredUtilityBill = blockExpiredUtilityBill;
    final lOther$blockExpiredUtilityBill = other.blockExpiredUtilityBill;
    if (l$blockExpiredUtilityBill != lOther$blockExpiredUtilityBill) {
      return false;
    }
    final l$primaryCashierPaymentSystem = primaryCashierPaymentSystem;
    final lOther$primaryCashierPaymentSystem =
        other.primaryCashierPaymentSystem;
    if (l$primaryCashierPaymentSystem != lOther$primaryCashierPaymentSystem) {
      return false;
    }
    final l$paymentMethods = paymentMethods;
    final lOther$paymentMethods = other.paymentMethods;
    if (l$paymentMethods != lOther$paymentMethods) {
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

extension UtilityExtension$Fragment$YardFragment on Fragment$YardFragment {
  CopyWith$Fragment$YardFragment<Fragment$YardFragment> get copyWith =>
      CopyWith$Fragment$YardFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$YardFragment<TRes> {
  factory CopyWith$Fragment$YardFragment(
    Fragment$YardFragment instance,
    TRes Function(Fragment$YardFragment) then,
  ) = _CopyWithImpl$Fragment$YardFragment;

  factory CopyWith$Fragment$YardFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$YardFragment;

  TRes call({
    bool? active,
    String? addressLine1,
    String? addressLine2,
    String? addressLine3,
    String? addressLine4,
    String? addressLine5,
    String? addressLine6,
    String? companyCode,
    String? companyId,
    String? defaultRetailAccountPool,
    Map<String, dynamic>? extendedProperties,
    String? id,
    List<String>? managerIds,
    String? name,
    String? postCode,
    String? regionId,
    String? shortName,
    List<String>? tags,
    String? telephone,
    String? territoryCode,
    String? territoryId,
    String? timeZoneId,
    String? wasteCarrierRegNo,
    String? wmlExemptionNo,
    String? yardCode,
    Fragment$CompanyFragment? company,
    Fragment$TerritoryFragment? territory,
    Fragment$YardFragment$created? created,
    Fragment$YardFragment$geoLocation? geoLocation,
    List<Fragment$YardFragment$managers?>? managers,
    Fragment$YardFragment$modified? modified,
    Fragment$YardFragment$region? region,
    Fragment$YardFragment$timezone? timezone,
    bool? promptForPhotoDefault,
    bool? enforceIssueDateForUtilityBill,
    Enum$PaymentMethod? defaultPaymentMethod,
    bool? blockExpiredUtilityBill,
    Enum$PaymentSystem? primaryCashierPaymentSystem,
    Fragment$YardFragment$paymentMethods? paymentMethods,
    String? $__typename,
  });
  CopyWith$Fragment$CompanyFragment<TRes> get company;
  CopyWith$Fragment$TerritoryFragment<TRes> get territory;
  CopyWith$Fragment$YardFragment$created<TRes> get created;
  CopyWith$Fragment$YardFragment$geoLocation<TRes> get geoLocation;
  TRes managers(
    Iterable<Fragment$YardFragment$managers?>? Function(
      Iterable<
        CopyWith$Fragment$YardFragment$managers<Fragment$YardFragment$managers>?
      >?,
    )
    _fn,
  );
  CopyWith$Fragment$YardFragment$modified<TRes> get modified;
  CopyWith$Fragment$YardFragment$region<TRes> get region;
  CopyWith$Fragment$YardFragment$timezone<TRes> get timezone;
  CopyWith$Fragment$YardFragment$paymentMethods<TRes> get paymentMethods;
}

class _CopyWithImpl$Fragment$YardFragment<TRes>
    implements CopyWith$Fragment$YardFragment<TRes> {
  _CopyWithImpl$Fragment$YardFragment(this._instance, this._then);

  final Fragment$YardFragment _instance;

  final TRes Function(Fragment$YardFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? addressLine1 = _undefined,
    Object? addressLine2 = _undefined,
    Object? addressLine3 = _undefined,
    Object? addressLine4 = _undefined,
    Object? addressLine5 = _undefined,
    Object? addressLine6 = _undefined,
    Object? companyCode = _undefined,
    Object? companyId = _undefined,
    Object? defaultRetailAccountPool = _undefined,
    Object? extendedProperties = _undefined,
    Object? id = _undefined,
    Object? managerIds = _undefined,
    Object? name = _undefined,
    Object? postCode = _undefined,
    Object? regionId = _undefined,
    Object? shortName = _undefined,
    Object? tags = _undefined,
    Object? telephone = _undefined,
    Object? territoryCode = _undefined,
    Object? territoryId = _undefined,
    Object? timeZoneId = _undefined,
    Object? wasteCarrierRegNo = _undefined,
    Object? wmlExemptionNo = _undefined,
    Object? yardCode = _undefined,
    Object? company = _undefined,
    Object? territory = _undefined,
    Object? created = _undefined,
    Object? geoLocation = _undefined,
    Object? managers = _undefined,
    Object? modified = _undefined,
    Object? region = _undefined,
    Object? timezone = _undefined,
    Object? promptForPhotoDefault = _undefined,
    Object? enforceIssueDateForUtilityBill = _undefined,
    Object? defaultPaymentMethod = _undefined,
    Object? blockExpiredUtilityBill = _undefined,
    Object? primaryCashierPaymentSystem = _undefined,
    Object? paymentMethods = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment(
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      addressLine1: addressLine1 == _undefined
          ? _instance.addressLine1
          : (addressLine1 as String?),
      addressLine2: addressLine2 == _undefined
          ? _instance.addressLine2
          : (addressLine2 as String?),
      addressLine3: addressLine3 == _undefined
          ? _instance.addressLine3
          : (addressLine3 as String?),
      addressLine4: addressLine4 == _undefined
          ? _instance.addressLine4
          : (addressLine4 as String?),
      addressLine5: addressLine5 == _undefined
          ? _instance.addressLine5
          : (addressLine5 as String?),
      addressLine6: addressLine6 == _undefined
          ? _instance.addressLine6
          : (addressLine6 as String?),
      companyCode: companyCode == _undefined || companyCode == null
          ? _instance.companyCode
          : (companyCode as String),
      companyId: companyId == _undefined || companyId == null
          ? _instance.companyId
          : (companyId as String),
      defaultRetailAccountPool:
          defaultRetailAccountPool == _undefined ||
              defaultRetailAccountPool == null
          ? _instance.defaultRetailAccountPool
          : (defaultRetailAccountPool as String),
      extendedProperties: extendedProperties == _undefined
          ? _instance.extendedProperties
          : (extendedProperties as Map<String, dynamic>?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      managerIds: managerIds == _undefined || managerIds == null
          ? _instance.managerIds
          : (managerIds as List<String>),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      postCode: postCode == _undefined
          ? _instance.postCode
          : (postCode as String?),
      regionId: regionId == _undefined || regionId == null
          ? _instance.regionId
          : (regionId as String),
      shortName: shortName == _undefined || shortName == null
          ? _instance.shortName
          : (shortName as String),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<String>),
      telephone: telephone == _undefined
          ? _instance.telephone
          : (telephone as String?),
      territoryCode: territoryCode == _undefined || territoryCode == null
          ? _instance.territoryCode
          : (territoryCode as String),
      territoryId: territoryId == _undefined || territoryId == null
          ? _instance.territoryId
          : (territoryId as String),
      timeZoneId: timeZoneId == _undefined || timeZoneId == null
          ? _instance.timeZoneId
          : (timeZoneId as String),
      wasteCarrierRegNo: wasteCarrierRegNo == _undefined
          ? _instance.wasteCarrierRegNo
          : (wasteCarrierRegNo as String?),
      wmlExemptionNo: wmlExemptionNo == _undefined
          ? _instance.wmlExemptionNo
          : (wmlExemptionNo as String?),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      company: company == _undefined
          ? _instance.company
          : (company as Fragment$CompanyFragment?),
      territory: territory == _undefined
          ? _instance.territory
          : (territory as Fragment$TerritoryFragment?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$YardFragment$created),
      geoLocation: geoLocation == _undefined
          ? _instance.geoLocation
          : (geoLocation as Fragment$YardFragment$geoLocation?),
      managers: managers == _undefined
          ? _instance.managers
          : (managers as List<Fragment$YardFragment$managers?>?),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Fragment$YardFragment$modified),
      region: region == _undefined
          ? _instance.region
          : (region as Fragment$YardFragment$region?),
      timezone: timezone == _undefined
          ? _instance.timezone
          : (timezone as Fragment$YardFragment$timezone?),
      promptForPhotoDefault:
          promptForPhotoDefault == _undefined || promptForPhotoDefault == null
          ? _instance.promptForPhotoDefault
          : (promptForPhotoDefault as bool),
      enforceIssueDateForUtilityBill:
          enforceIssueDateForUtilityBill == _undefined ||
              enforceIssueDateForUtilityBill == null
          ? _instance.enforceIssueDateForUtilityBill
          : (enforceIssueDateForUtilityBill as bool),
      defaultPaymentMethod:
          defaultPaymentMethod == _undefined || defaultPaymentMethod == null
          ? _instance.defaultPaymentMethod
          : (defaultPaymentMethod as Enum$PaymentMethod),
      blockExpiredUtilityBill:
          blockExpiredUtilityBill == _undefined ||
              blockExpiredUtilityBill == null
          ? _instance.blockExpiredUtilityBill
          : (blockExpiredUtilityBill as bool),
      primaryCashierPaymentSystem:
          primaryCashierPaymentSystem == _undefined ||
              primaryCashierPaymentSystem == null
          ? _instance.primaryCashierPaymentSystem
          : (primaryCashierPaymentSystem as Enum$PaymentSystem),
      paymentMethods: paymentMethods == _undefined || paymentMethods == null
          ? _instance.paymentMethods
          : (paymentMethods as Fragment$YardFragment$paymentMethods),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CompanyFragment<TRes> get company {
    final local$company = _instance.company;
    return local$company == null
        ? CopyWith$Fragment$CompanyFragment.stub(_then(_instance))
        : CopyWith$Fragment$CompanyFragment(
            local$company,
            (e) => call(company: e),
          );
  }

  CopyWith$Fragment$TerritoryFragment<TRes> get territory {
    final local$territory = _instance.territory;
    return local$territory == null
        ? CopyWith$Fragment$TerritoryFragment.stub(_then(_instance))
        : CopyWith$Fragment$TerritoryFragment(
            local$territory,
            (e) => call(territory: e),
          );
  }

  CopyWith$Fragment$YardFragment$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$YardFragment$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$YardFragment$geoLocation<TRes> get geoLocation {
    final local$geoLocation = _instance.geoLocation;
    return local$geoLocation == null
        ? CopyWith$Fragment$YardFragment$geoLocation.stub(_then(_instance))
        : CopyWith$Fragment$YardFragment$geoLocation(
            local$geoLocation,
            (e) => call(geoLocation: e),
          );
  }

  TRes managers(
    Iterable<Fragment$YardFragment$managers?>? Function(
      Iterable<
        CopyWith$Fragment$YardFragment$managers<Fragment$YardFragment$managers>?
      >?,
    )
    _fn,
  ) => call(
    managers: _fn(
      _instance.managers?.map(
        (e) => e == null
            ? null
            : CopyWith$Fragment$YardFragment$managers(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Fragment$YardFragment$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$YardFragment$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }

  CopyWith$Fragment$YardFragment$region<TRes> get region {
    final local$region = _instance.region;
    return local$region == null
        ? CopyWith$Fragment$YardFragment$region.stub(_then(_instance))
        : CopyWith$Fragment$YardFragment$region(
            local$region,
            (e) => call(region: e),
          );
  }

  CopyWith$Fragment$YardFragment$timezone<TRes> get timezone {
    final local$timezone = _instance.timezone;
    return local$timezone == null
        ? CopyWith$Fragment$YardFragment$timezone.stub(_then(_instance))
        : CopyWith$Fragment$YardFragment$timezone(
            local$timezone,
            (e) => call(timezone: e),
          );
  }

  CopyWith$Fragment$YardFragment$paymentMethods<TRes> get paymentMethods {
    final local$paymentMethods = _instance.paymentMethods;
    return CopyWith$Fragment$YardFragment$paymentMethods(
      local$paymentMethods,
      (e) => call(paymentMethods: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$YardFragment<TRes>
    implements CopyWith$Fragment$YardFragment<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment(this._res);

  TRes _res;

  call({
    bool? active,
    String? addressLine1,
    String? addressLine2,
    String? addressLine3,
    String? addressLine4,
    String? addressLine5,
    String? addressLine6,
    String? companyCode,
    String? companyId,
    String? defaultRetailAccountPool,
    Map<String, dynamic>? extendedProperties,
    String? id,
    List<String>? managerIds,
    String? name,
    String? postCode,
    String? regionId,
    String? shortName,
    List<String>? tags,
    String? telephone,
    String? territoryCode,
    String? territoryId,
    String? timeZoneId,
    String? wasteCarrierRegNo,
    String? wmlExemptionNo,
    String? yardCode,
    Fragment$CompanyFragment? company,
    Fragment$TerritoryFragment? territory,
    Fragment$YardFragment$created? created,
    Fragment$YardFragment$geoLocation? geoLocation,
    List<Fragment$YardFragment$managers?>? managers,
    Fragment$YardFragment$modified? modified,
    Fragment$YardFragment$region? region,
    Fragment$YardFragment$timezone? timezone,
    bool? promptForPhotoDefault,
    bool? enforceIssueDateForUtilityBill,
    Enum$PaymentMethod? defaultPaymentMethod,
    bool? blockExpiredUtilityBill,
    Enum$PaymentSystem? primaryCashierPaymentSystem,
    Fragment$YardFragment$paymentMethods? paymentMethods,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CompanyFragment<TRes> get company =>
      CopyWith$Fragment$CompanyFragment.stub(_res);

  CopyWith$Fragment$TerritoryFragment<TRes> get territory =>
      CopyWith$Fragment$TerritoryFragment.stub(_res);

  CopyWith$Fragment$YardFragment$created<TRes> get created =>
      CopyWith$Fragment$YardFragment$created.stub(_res);

  CopyWith$Fragment$YardFragment$geoLocation<TRes> get geoLocation =>
      CopyWith$Fragment$YardFragment$geoLocation.stub(_res);

  managers(_fn) => _res;

  CopyWith$Fragment$YardFragment$modified<TRes> get modified =>
      CopyWith$Fragment$YardFragment$modified.stub(_res);

  CopyWith$Fragment$YardFragment$region<TRes> get region =>
      CopyWith$Fragment$YardFragment$region.stub(_res);

  CopyWith$Fragment$YardFragment$timezone<TRes> get timezone =>
      CopyWith$Fragment$YardFragment$timezone.stub(_res);

  CopyWith$Fragment$YardFragment$paymentMethods<TRes> get paymentMethods =>
      CopyWith$Fragment$YardFragment$paymentMethods.stub(_res);
}

const fragmentDefinitionYardFragment = FragmentDefinitionNode(
  name: NameNode(value: 'YardFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Yard'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'active'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'addressLine1'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'addressLine2'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'addressLine3'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'addressLine4'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'addressLine5'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'addressLine6'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'companyCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'companyId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'defaultRetailAccountPool'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'extendedProperties'),
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
        name: NameNode(value: 'managerIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'postCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'regionId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'shortName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'tags'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'telephone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'territoryCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'territoryId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'timeZoneId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'wasteCarrierRegNo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'wmlExemptionNo'),
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
        name: NameNode(value: 'company'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'CompanyFragment'),
              directives: [],
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
      ),
      FieldNode(
        name: NameNode(value: 'territory'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'TerritoryFragment'),
              directives: [],
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
      ),
      FieldNode(
        name: NameNode(value: 'created'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'userInfoId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'userName'),
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
      ),
      FieldNode(
        name: NameNode(value: 'geoLocation'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'latitude'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'longitude'),
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
      ),
      FieldNode(
        name: NameNode(value: 'managers'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'allAccountAccess'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'azureAdGroups'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'azureUserId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'clientCredentials'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'cmpCode'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'codaUserCode'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'companyAccess'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'defaultDepot'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'defaultOrderBookTypeId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'defaultTerritory'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'defaultTimeZoneId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'directReports'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'emailAddress'),
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
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'partyAccess'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'permissions'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 't2UserId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'username'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'yardAccess'),
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
      ),
      FieldNode(
        name: NameNode(value: 'modified'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'userInfoId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'userName'),
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
      ),
      FieldNode(
        name: NameNode(value: 'region'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'parentRegionId'),
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
      ),
      FieldNode(
        name: NameNode(value: 'timezone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'displayName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'timeZoneId'),
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
      ),
      FieldNode(
        name: NameNode(value: 'promptForPhotoDefault'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enforceIssueDateForUtilityBill'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'defaultPaymentMethod'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'blockExpiredUtilityBill'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'primaryCashierPaymentSystem'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'paymentMethods'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'atm'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rounding'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'roundingType'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'value'),
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
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
            ),
            FieldNode(
              name: NameNode(value: 'autoCheque'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enforceIdentification'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'logoPath'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bankCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
            ),
            FieldNode(
              name: NameNode(value: 'autoChequeWithEncashmentAtm'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'agent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commissionPercent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enforceIdentification'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'flatFeeThreshold'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'flatFeeValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'logoPath'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'minCommission'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'minDenomination'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bankCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
            ),
            FieldNode(
              name: NameNode(value: 'autoChequeWithEncashmentCash'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'agent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commissionPercent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enforceIdentification'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'flatFeeThreshold'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'flatFeeValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'logoPath'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'minCommission'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'minDenomination'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bankCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
            ),
            FieldNode(
              name: NameNode(value: 'cash'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'numberOfRemittancesToPrint'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
            ),
            FieldNode(
              name: NameNode(value: 'digitalWalletWithAtm'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'commissionPercent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rounding'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'roundingType'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'value'),
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
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
            ),
            FieldNode(
              name: NameNode(value: 'digitalWalletWithCash'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'commissionPercent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rounding'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'roundingType'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'value'),
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
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
            ),
            FieldNode(
              name: NameNode(value: 'fasterpay'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'flatFeeValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bankCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
            ),
            FieldNode(
              name: NameNode(value: 'manualCheque'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
            ),
            FieldNode(
              name: NameNode(value: 'overnightFasterpay'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bankCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
            ),
            FieldNode(
              name: NameNode(value: 'secorePrepaid'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'commissionPercent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
            ),
            FieldNode(
              name: NameNode(value: 'splitPayment'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
const documentNodeFragmentYardFragment = DocumentNode(
  definitions: [
    fragmentDefinitionYardFragment,
    fragmentDefinitionCompanyFragment,
    fragmentDefinitionTerritoryFragment,
  ],
);

class Fragment$YardFragment$created {
  Fragment$YardFragment$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Fragment$YardFragment$created.fromJson(Map<String, dynamic> json) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$created(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userInfoId, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Fragment$YardFragment$created
    on Fragment$YardFragment$created {
  CopyWith$Fragment$YardFragment$created<Fragment$YardFragment$created>
  get copyWith => CopyWith$Fragment$YardFragment$created(this, (i) => i);
}

abstract class CopyWith$Fragment$YardFragment$created<TRes> {
  factory CopyWith$Fragment$YardFragment$created(
    Fragment$YardFragment$created instance,
    TRes Function(Fragment$YardFragment$created) then,
  ) = _CopyWithImpl$Fragment$YardFragment$created;

  factory CopyWith$Fragment$YardFragment$created.stub(TRes res) =
      _CopyWithStubImpl$Fragment$YardFragment$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$created<TRes>
    implements CopyWith$Fragment$YardFragment$created<TRes> {
  _CopyWithImpl$Fragment$YardFragment$created(this._instance, this._then);

  final Fragment$YardFragment$created _instance;

  final TRes Function(Fragment$YardFragment$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$created<TRes>
    implements CopyWith$Fragment$YardFragment$created<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Fragment$YardFragment$geoLocation {
  Fragment$YardFragment$geoLocation({
    required this.latitude,
    required this.longitude,
    this.$__typename = 'LatLong',
  });

  factory Fragment$YardFragment$geoLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$geoLocation(
      latitude: (l$latitude as num).toDouble(),
      longitude: (l$longitude as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double latitude;

  final double longitude;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$$__typename = $__typename;
    return Object.hashAll([l$latitude, l$longitude, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$geoLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
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

extension UtilityExtension$Fragment$YardFragment$geoLocation
    on Fragment$YardFragment$geoLocation {
  CopyWith$Fragment$YardFragment$geoLocation<Fragment$YardFragment$geoLocation>
  get copyWith => CopyWith$Fragment$YardFragment$geoLocation(this, (i) => i);
}

abstract class CopyWith$Fragment$YardFragment$geoLocation<TRes> {
  factory CopyWith$Fragment$YardFragment$geoLocation(
    Fragment$YardFragment$geoLocation instance,
    TRes Function(Fragment$YardFragment$geoLocation) then,
  ) = _CopyWithImpl$Fragment$YardFragment$geoLocation;

  factory CopyWith$Fragment$YardFragment$geoLocation.stub(TRes res) =
      _CopyWithStubImpl$Fragment$YardFragment$geoLocation;

  TRes call({double? latitude, double? longitude, String? $__typename});
}

class _CopyWithImpl$Fragment$YardFragment$geoLocation<TRes>
    implements CopyWith$Fragment$YardFragment$geoLocation<TRes> {
  _CopyWithImpl$Fragment$YardFragment$geoLocation(this._instance, this._then);

  final Fragment$YardFragment$geoLocation _instance;

  final TRes Function(Fragment$YardFragment$geoLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$geoLocation(
      latitude: latitude == _undefined || latitude == null
          ? _instance.latitude
          : (latitude as double),
      longitude: longitude == _undefined || longitude == null
          ? _instance.longitude
          : (longitude as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$geoLocation<TRes>
    implements CopyWith$Fragment$YardFragment$geoLocation<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$geoLocation(this._res);

  TRes _res;

  call({double? latitude, double? longitude, String? $__typename}) => _res;
}

class Fragment$YardFragment$managers {
  Fragment$YardFragment$managers({
    required this.allAccountAccess,
    required this.azureAdGroups,
    required this.azureUserId,
    required this.clientCredentials,
    required this.cmpCode,
    required this.codaUserCode,
    required this.companyAccess,
    required this.defaultDepot,
    this.defaultOrderBookTypeId,
    required this.defaultTerritory,
    required this.defaultTimeZoneId,
    required this.directReports,
    required this.emailAddress,
    required this.id,
    required this.name,
    required this.partyAccess,
    required this.permissions,
    required this.t2UserId,
    required this.username,
    required this.yardAccess,
    this.$__typename = 'UserInfo',
  });

  factory Fragment$YardFragment$managers.fromJson(Map<String, dynamic> json) {
    final l$allAccountAccess = json['allAccountAccess'];
    final l$azureAdGroups = json['azureAdGroups'];
    final l$azureUserId = json['azureUserId'];
    final l$clientCredentials = json['clientCredentials'];
    final l$cmpCode = json['cmpCode'];
    final l$codaUserCode = json['codaUserCode'];
    final l$companyAccess = json['companyAccess'];
    final l$defaultDepot = json['defaultDepot'];
    final l$defaultOrderBookTypeId = json['defaultOrderBookTypeId'];
    final l$defaultTerritory = json['defaultTerritory'];
    final l$defaultTimeZoneId = json['defaultTimeZoneId'];
    final l$directReports = json['directReports'];
    final l$emailAddress = json['emailAddress'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$partyAccess = json['partyAccess'];
    final l$permissions = json['permissions'];
    final l$t2UserId = json['t2UserId'];
    final l$username = json['username'];
    final l$yardAccess = json['yardAccess'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$managers(
      allAccountAccess: (l$allAccountAccess as bool),
      azureAdGroups: (l$azureAdGroups as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      azureUserId: (l$azureUserId as String),
      clientCredentials: (l$clientCredentials as bool),
      cmpCode: (l$cmpCode as String),
      codaUserCode: (l$codaUserCode as String),
      companyAccess: (l$companyAccess as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      defaultDepot: (l$defaultDepot as String),
      defaultOrderBookTypeId: (l$defaultOrderBookTypeId as int?),
      defaultTerritory: (l$defaultTerritory as String),
      defaultTimeZoneId: (l$defaultTimeZoneId as String),
      directReports: (l$directReports as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      emailAddress: (l$emailAddress as String),
      id: (l$id as String),
      name: (l$name as String),
      partyAccess: (l$partyAccess as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      permissions: (l$permissions as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      t2UserId: (l$t2UserId as int),
      username: (l$username as String),
      yardAccess: (l$yardAccess as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool allAccountAccess;

  final List<String> azureAdGroups;

  final String azureUserId;

  final bool clientCredentials;

  final String cmpCode;

  final String codaUserCode;

  final List<String> companyAccess;

  final String defaultDepot;

  final int? defaultOrderBookTypeId;

  final String defaultTerritory;

  final String defaultTimeZoneId;

  final List<String> directReports;

  final String emailAddress;

  final String id;

  final String name;

  final List<String> partyAccess;

  final List<String> permissions;

  final int t2UserId;

  final String username;

  final List<String> yardAccess;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allAccountAccess = allAccountAccess;
    _resultData['allAccountAccess'] = l$allAccountAccess;
    final l$azureAdGroups = azureAdGroups;
    _resultData['azureAdGroups'] = l$azureAdGroups.map((e) => e).toList();
    final l$azureUserId = azureUserId;
    _resultData['azureUserId'] = l$azureUserId;
    final l$clientCredentials = clientCredentials;
    _resultData['clientCredentials'] = l$clientCredentials;
    final l$cmpCode = cmpCode;
    _resultData['cmpCode'] = l$cmpCode;
    final l$codaUserCode = codaUserCode;
    _resultData['codaUserCode'] = l$codaUserCode;
    final l$companyAccess = companyAccess;
    _resultData['companyAccess'] = l$companyAccess.map((e) => e).toList();
    final l$defaultDepot = defaultDepot;
    _resultData['defaultDepot'] = l$defaultDepot;
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    _resultData['defaultOrderBookTypeId'] = l$defaultOrderBookTypeId;
    final l$defaultTerritory = defaultTerritory;
    _resultData['defaultTerritory'] = l$defaultTerritory;
    final l$defaultTimeZoneId = defaultTimeZoneId;
    _resultData['defaultTimeZoneId'] = l$defaultTimeZoneId;
    final l$directReports = directReports;
    _resultData['directReports'] = l$directReports.map((e) => e).toList();
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$partyAccess = partyAccess;
    _resultData['partyAccess'] = l$partyAccess.map((e) => e).toList();
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e).toList();
    final l$t2UserId = t2UserId;
    _resultData['t2UserId'] = l$t2UserId;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$yardAccess = yardAccess;
    _resultData['yardAccess'] = l$yardAccess.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allAccountAccess = allAccountAccess;
    final l$azureAdGroups = azureAdGroups;
    final l$azureUserId = azureUserId;
    final l$clientCredentials = clientCredentials;
    final l$cmpCode = cmpCode;
    final l$codaUserCode = codaUserCode;
    final l$companyAccess = companyAccess;
    final l$defaultDepot = defaultDepot;
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    final l$defaultTerritory = defaultTerritory;
    final l$defaultTimeZoneId = defaultTimeZoneId;
    final l$directReports = directReports;
    final l$emailAddress = emailAddress;
    final l$id = id;
    final l$name = name;
    final l$partyAccess = partyAccess;
    final l$permissions = permissions;
    final l$t2UserId = t2UserId;
    final l$username = username;
    final l$yardAccess = yardAccess;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$allAccountAccess,
      Object.hashAll(l$azureAdGroups.map((v) => v)),
      l$azureUserId,
      l$clientCredentials,
      l$cmpCode,
      l$codaUserCode,
      Object.hashAll(l$companyAccess.map((v) => v)),
      l$defaultDepot,
      l$defaultOrderBookTypeId,
      l$defaultTerritory,
      l$defaultTimeZoneId,
      Object.hashAll(l$directReports.map((v) => v)),
      l$emailAddress,
      l$id,
      l$name,
      Object.hashAll(l$partyAccess.map((v) => v)),
      Object.hashAll(l$permissions.map((v) => v)),
      l$t2UserId,
      l$username,
      Object.hashAll(l$yardAccess.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$managers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allAccountAccess = allAccountAccess;
    final lOther$allAccountAccess = other.allAccountAccess;
    if (l$allAccountAccess != lOther$allAccountAccess) {
      return false;
    }
    final l$azureAdGroups = azureAdGroups;
    final lOther$azureAdGroups = other.azureAdGroups;
    if (l$azureAdGroups.length != lOther$azureAdGroups.length) {
      return false;
    }
    for (int i = 0; i < l$azureAdGroups.length; i++) {
      final l$azureAdGroups$entry = l$azureAdGroups[i];
      final lOther$azureAdGroups$entry = lOther$azureAdGroups[i];
      if (l$azureAdGroups$entry != lOther$azureAdGroups$entry) {
        return false;
      }
    }
    final l$azureUserId = azureUserId;
    final lOther$azureUserId = other.azureUserId;
    if (l$azureUserId != lOther$azureUserId) {
      return false;
    }
    final l$clientCredentials = clientCredentials;
    final lOther$clientCredentials = other.clientCredentials;
    if (l$clientCredentials != lOther$clientCredentials) {
      return false;
    }
    final l$cmpCode = cmpCode;
    final lOther$cmpCode = other.cmpCode;
    if (l$cmpCode != lOther$cmpCode) {
      return false;
    }
    final l$codaUserCode = codaUserCode;
    final lOther$codaUserCode = other.codaUserCode;
    if (l$codaUserCode != lOther$codaUserCode) {
      return false;
    }
    final l$companyAccess = companyAccess;
    final lOther$companyAccess = other.companyAccess;
    if (l$companyAccess.length != lOther$companyAccess.length) {
      return false;
    }
    for (int i = 0; i < l$companyAccess.length; i++) {
      final l$companyAccess$entry = l$companyAccess[i];
      final lOther$companyAccess$entry = lOther$companyAccess[i];
      if (l$companyAccess$entry != lOther$companyAccess$entry) {
        return false;
      }
    }
    final l$defaultDepot = defaultDepot;
    final lOther$defaultDepot = other.defaultDepot;
    if (l$defaultDepot != lOther$defaultDepot) {
      return false;
    }
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    final lOther$defaultOrderBookTypeId = other.defaultOrderBookTypeId;
    if (l$defaultOrderBookTypeId != lOther$defaultOrderBookTypeId) {
      return false;
    }
    final l$defaultTerritory = defaultTerritory;
    final lOther$defaultTerritory = other.defaultTerritory;
    if (l$defaultTerritory != lOther$defaultTerritory) {
      return false;
    }
    final l$defaultTimeZoneId = defaultTimeZoneId;
    final lOther$defaultTimeZoneId = other.defaultTimeZoneId;
    if (l$defaultTimeZoneId != lOther$defaultTimeZoneId) {
      return false;
    }
    final l$directReports = directReports;
    final lOther$directReports = other.directReports;
    if (l$directReports.length != lOther$directReports.length) {
      return false;
    }
    for (int i = 0; i < l$directReports.length; i++) {
      final l$directReports$entry = l$directReports[i];
      final lOther$directReports$entry = lOther$directReports[i];
      if (l$directReports$entry != lOther$directReports$entry) {
        return false;
      }
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$partyAccess = partyAccess;
    final lOther$partyAccess = other.partyAccess;
    if (l$partyAccess.length != lOther$partyAccess.length) {
      return false;
    }
    for (int i = 0; i < l$partyAccess.length; i++) {
      final l$partyAccess$entry = l$partyAccess[i];
      final lOther$partyAccess$entry = lOther$partyAccess[i];
      if (l$partyAccess$entry != lOther$partyAccess$entry) {
        return false;
      }
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) {
      return false;
    }
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) {
        return false;
      }
    }
    final l$t2UserId = t2UserId;
    final lOther$t2UserId = other.t2UserId;
    if (l$t2UserId != lOther$t2UserId) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$yardAccess = yardAccess;
    final lOther$yardAccess = other.yardAccess;
    if (l$yardAccess.length != lOther$yardAccess.length) {
      return false;
    }
    for (int i = 0; i < l$yardAccess.length; i++) {
      final l$yardAccess$entry = l$yardAccess[i];
      final lOther$yardAccess$entry = lOther$yardAccess[i];
      if (l$yardAccess$entry != lOther$yardAccess$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$YardFragment$managers
    on Fragment$YardFragment$managers {
  CopyWith$Fragment$YardFragment$managers<Fragment$YardFragment$managers>
  get copyWith => CopyWith$Fragment$YardFragment$managers(this, (i) => i);
}

abstract class CopyWith$Fragment$YardFragment$managers<TRes> {
  factory CopyWith$Fragment$YardFragment$managers(
    Fragment$YardFragment$managers instance,
    TRes Function(Fragment$YardFragment$managers) then,
  ) = _CopyWithImpl$Fragment$YardFragment$managers;

  factory CopyWith$Fragment$YardFragment$managers.stub(TRes res) =
      _CopyWithStubImpl$Fragment$YardFragment$managers;

  TRes call({
    bool? allAccountAccess,
    List<String>? azureAdGroups,
    String? azureUserId,
    bool? clientCredentials,
    String? cmpCode,
    String? codaUserCode,
    List<String>? companyAccess,
    String? defaultDepot,
    int? defaultOrderBookTypeId,
    String? defaultTerritory,
    String? defaultTimeZoneId,
    List<String>? directReports,
    String? emailAddress,
    String? id,
    String? name,
    List<String>? partyAccess,
    List<String>? permissions,
    int? t2UserId,
    String? username,
    List<String>? yardAccess,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$managers<TRes>
    implements CopyWith$Fragment$YardFragment$managers<TRes> {
  _CopyWithImpl$Fragment$YardFragment$managers(this._instance, this._then);

  final Fragment$YardFragment$managers _instance;

  final TRes Function(Fragment$YardFragment$managers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allAccountAccess = _undefined,
    Object? azureAdGroups = _undefined,
    Object? azureUserId = _undefined,
    Object? clientCredentials = _undefined,
    Object? cmpCode = _undefined,
    Object? codaUserCode = _undefined,
    Object? companyAccess = _undefined,
    Object? defaultDepot = _undefined,
    Object? defaultOrderBookTypeId = _undefined,
    Object? defaultTerritory = _undefined,
    Object? defaultTimeZoneId = _undefined,
    Object? directReports = _undefined,
    Object? emailAddress = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? partyAccess = _undefined,
    Object? permissions = _undefined,
    Object? t2UserId = _undefined,
    Object? username = _undefined,
    Object? yardAccess = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$managers(
      allAccountAccess:
          allAccountAccess == _undefined || allAccountAccess == null
          ? _instance.allAccountAccess
          : (allAccountAccess as bool),
      azureAdGroups: azureAdGroups == _undefined || azureAdGroups == null
          ? _instance.azureAdGroups
          : (azureAdGroups as List<String>),
      azureUserId: azureUserId == _undefined || azureUserId == null
          ? _instance.azureUserId
          : (azureUserId as String),
      clientCredentials:
          clientCredentials == _undefined || clientCredentials == null
          ? _instance.clientCredentials
          : (clientCredentials as bool),
      cmpCode: cmpCode == _undefined || cmpCode == null
          ? _instance.cmpCode
          : (cmpCode as String),
      codaUserCode: codaUserCode == _undefined || codaUserCode == null
          ? _instance.codaUserCode
          : (codaUserCode as String),
      companyAccess: companyAccess == _undefined || companyAccess == null
          ? _instance.companyAccess
          : (companyAccess as List<String>),
      defaultDepot: defaultDepot == _undefined || defaultDepot == null
          ? _instance.defaultDepot
          : (defaultDepot as String),
      defaultOrderBookTypeId: defaultOrderBookTypeId == _undefined
          ? _instance.defaultOrderBookTypeId
          : (defaultOrderBookTypeId as int?),
      defaultTerritory:
          defaultTerritory == _undefined || defaultTerritory == null
          ? _instance.defaultTerritory
          : (defaultTerritory as String),
      defaultTimeZoneId:
          defaultTimeZoneId == _undefined || defaultTimeZoneId == null
          ? _instance.defaultTimeZoneId
          : (defaultTimeZoneId as String),
      directReports: directReports == _undefined || directReports == null
          ? _instance.directReports
          : (directReports as List<String>),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      partyAccess: partyAccess == _undefined || partyAccess == null
          ? _instance.partyAccess
          : (partyAccess as List<String>),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions as List<String>),
      t2UserId: t2UserId == _undefined || t2UserId == null
          ? _instance.t2UserId
          : (t2UserId as int),
      username: username == _undefined || username == null
          ? _instance.username
          : (username as String),
      yardAccess: yardAccess == _undefined || yardAccess == null
          ? _instance.yardAccess
          : (yardAccess as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$managers<TRes>
    implements CopyWith$Fragment$YardFragment$managers<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$managers(this._res);

  TRes _res;

  call({
    bool? allAccountAccess,
    List<String>? azureAdGroups,
    String? azureUserId,
    bool? clientCredentials,
    String? cmpCode,
    String? codaUserCode,
    List<String>? companyAccess,
    String? defaultDepot,
    int? defaultOrderBookTypeId,
    String? defaultTerritory,
    String? defaultTimeZoneId,
    List<String>? directReports,
    String? emailAddress,
    String? id,
    String? name,
    List<String>? partyAccess,
    List<String>? permissions,
    int? t2UserId,
    String? username,
    List<String>? yardAccess,
    String? $__typename,
  }) => _res;
}

class Fragment$YardFragment$modified {
  Fragment$YardFragment$modified({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Modified',
  });

  factory Fragment$YardFragment$modified.fromJson(Map<String, dynamic> json) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$modified(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userInfoId, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Fragment$YardFragment$modified
    on Fragment$YardFragment$modified {
  CopyWith$Fragment$YardFragment$modified<Fragment$YardFragment$modified>
  get copyWith => CopyWith$Fragment$YardFragment$modified(this, (i) => i);
}

abstract class CopyWith$Fragment$YardFragment$modified<TRes> {
  factory CopyWith$Fragment$YardFragment$modified(
    Fragment$YardFragment$modified instance,
    TRes Function(Fragment$YardFragment$modified) then,
  ) = _CopyWithImpl$Fragment$YardFragment$modified;

  factory CopyWith$Fragment$YardFragment$modified.stub(TRes res) =
      _CopyWithStubImpl$Fragment$YardFragment$modified;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$modified<TRes>
    implements CopyWith$Fragment$YardFragment$modified<TRes> {
  _CopyWithImpl$Fragment$YardFragment$modified(this._instance, this._then);

  final Fragment$YardFragment$modified _instance;

  final TRes Function(Fragment$YardFragment$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$modified<TRes>
    implements CopyWith$Fragment$YardFragment$modified<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$modified(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Fragment$YardFragment$region {
  Fragment$YardFragment$region({
    required this.id,
    required this.name,
    this.parentRegionId,
    this.$__typename = 'Region',
  });

  factory Fragment$YardFragment$region.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$parentRegionId = json['parentRegionId'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$region(
      id: (l$id as String),
      name: (l$name as String),
      parentRegionId: (l$parentRegionId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? parentRegionId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$parentRegionId = parentRegionId;
    _resultData['parentRegionId'] = l$parentRegionId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$parentRegionId = parentRegionId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$parentRegionId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$region ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$parentRegionId = parentRegionId;
    final lOther$parentRegionId = other.parentRegionId;
    if (l$parentRegionId != lOther$parentRegionId) {
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

extension UtilityExtension$Fragment$YardFragment$region
    on Fragment$YardFragment$region {
  CopyWith$Fragment$YardFragment$region<Fragment$YardFragment$region>
  get copyWith => CopyWith$Fragment$YardFragment$region(this, (i) => i);
}

abstract class CopyWith$Fragment$YardFragment$region<TRes> {
  factory CopyWith$Fragment$YardFragment$region(
    Fragment$YardFragment$region instance,
    TRes Function(Fragment$YardFragment$region) then,
  ) = _CopyWithImpl$Fragment$YardFragment$region;

  factory CopyWith$Fragment$YardFragment$region.stub(TRes res) =
      _CopyWithStubImpl$Fragment$YardFragment$region;

  TRes call({
    String? id,
    String? name,
    String? parentRegionId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$region<TRes>
    implements CopyWith$Fragment$YardFragment$region<TRes> {
  _CopyWithImpl$Fragment$YardFragment$region(this._instance, this._then);

  final Fragment$YardFragment$region _instance;

  final TRes Function(Fragment$YardFragment$region) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? parentRegionId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$region(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      parentRegionId: parentRegionId == _undefined
          ? _instance.parentRegionId
          : (parentRegionId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$region<TRes>
    implements CopyWith$Fragment$YardFragment$region<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$region(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? parentRegionId,
    String? $__typename,
  }) => _res;
}

class Fragment$YardFragment$timezone {
  Fragment$YardFragment$timezone({
    required this.displayName,
    required this.timeZoneId,
    this.$__typename = 'Timezone',
  });

  factory Fragment$YardFragment$timezone.fromJson(Map<String, dynamic> json) {
    final l$displayName = json['displayName'];
    final l$timeZoneId = json['timeZoneId'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$timezone(
      displayName: (l$displayName as String),
      timeZoneId: (l$timeZoneId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String displayName;

  final String timeZoneId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$timeZoneId = timeZoneId;
    _resultData['timeZoneId'] = l$timeZoneId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$displayName = displayName;
    final l$timeZoneId = timeZoneId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$displayName, l$timeZoneId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$timezone ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$timeZoneId = timeZoneId;
    final lOther$timeZoneId = other.timeZoneId;
    if (l$timeZoneId != lOther$timeZoneId) {
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

extension UtilityExtension$Fragment$YardFragment$timezone
    on Fragment$YardFragment$timezone {
  CopyWith$Fragment$YardFragment$timezone<Fragment$YardFragment$timezone>
  get copyWith => CopyWith$Fragment$YardFragment$timezone(this, (i) => i);
}

abstract class CopyWith$Fragment$YardFragment$timezone<TRes> {
  factory CopyWith$Fragment$YardFragment$timezone(
    Fragment$YardFragment$timezone instance,
    TRes Function(Fragment$YardFragment$timezone) then,
  ) = _CopyWithImpl$Fragment$YardFragment$timezone;

  factory CopyWith$Fragment$YardFragment$timezone.stub(TRes res) =
      _CopyWithStubImpl$Fragment$YardFragment$timezone;

  TRes call({String? displayName, String? timeZoneId, String? $__typename});
}

class _CopyWithImpl$Fragment$YardFragment$timezone<TRes>
    implements CopyWith$Fragment$YardFragment$timezone<TRes> {
  _CopyWithImpl$Fragment$YardFragment$timezone(this._instance, this._then);

  final Fragment$YardFragment$timezone _instance;

  final TRes Function(Fragment$YardFragment$timezone) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? displayName = _undefined,
    Object? timeZoneId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$timezone(
      displayName: displayName == _undefined || displayName == null
          ? _instance.displayName
          : (displayName as String),
      timeZoneId: timeZoneId == _undefined || timeZoneId == null
          ? _instance.timeZoneId
          : (timeZoneId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$timezone<TRes>
    implements CopyWith$Fragment$YardFragment$timezone<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$timezone(this._res);

  TRes _res;

  call({String? displayName, String? timeZoneId, String? $__typename}) => _res;
}

class Fragment$YardFragment$paymentMethods {
  Fragment$YardFragment$paymentMethods({
    required this.atm,
    required this.autoCheque,
    required this.autoChequeWithEncashmentAtm,
    required this.autoChequeWithEncashmentCash,
    required this.cash,
    required this.digitalWalletWithAtm,
    required this.digitalWalletWithCash,
    required this.fasterpay,
    required this.manualCheque,
    required this.overnightFasterpay,
    required this.secorePrepaid,
    required this.splitPayment,
    this.$__typename = 'PaymentMethods',
  });

  factory Fragment$YardFragment$paymentMethods.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$atm = json['atm'];
    final l$autoCheque = json['autoCheque'];
    final l$autoChequeWithEncashmentAtm = json['autoChequeWithEncashmentAtm'];
    final l$autoChequeWithEncashmentCash = json['autoChequeWithEncashmentCash'];
    final l$cash = json['cash'];
    final l$digitalWalletWithAtm = json['digitalWalletWithAtm'];
    final l$digitalWalletWithCash = json['digitalWalletWithCash'];
    final l$fasterpay = json['fasterpay'];
    final l$manualCheque = json['manualCheque'];
    final l$overnightFasterpay = json['overnightFasterpay'];
    final l$secorePrepaid = json['secorePrepaid'];
    final l$splitPayment = json['splitPayment'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods(
      atm: Fragment$YardFragment$paymentMethods$atm.fromJson(
        (l$atm as Map<String, dynamic>),
      ),
      autoCheque: Fragment$YardFragment$paymentMethods$autoCheque.fromJson(
        (l$autoCheque as Map<String, dynamic>),
      ),
      autoChequeWithEncashmentAtm:
          Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm.fromJson(
            (l$autoChequeWithEncashmentAtm as Map<String, dynamic>),
          ),
      autoChequeWithEncashmentCash:
          Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash.fromJson(
            (l$autoChequeWithEncashmentCash as Map<String, dynamic>),
          ),
      cash: Fragment$YardFragment$paymentMethods$cash.fromJson(
        (l$cash as Map<String, dynamic>),
      ),
      digitalWalletWithAtm:
          Fragment$YardFragment$paymentMethods$digitalWalletWithAtm.fromJson(
            (l$digitalWalletWithAtm as Map<String, dynamic>),
          ),
      digitalWalletWithCash:
          Fragment$YardFragment$paymentMethods$digitalWalletWithCash.fromJson(
            (l$digitalWalletWithCash as Map<String, dynamic>),
          ),
      fasterpay: Fragment$YardFragment$paymentMethods$fasterpay.fromJson(
        (l$fasterpay as Map<String, dynamic>),
      ),
      manualCheque: Fragment$YardFragment$paymentMethods$manualCheque.fromJson(
        (l$manualCheque as Map<String, dynamic>),
      ),
      overnightFasterpay:
          Fragment$YardFragment$paymentMethods$overnightFasterpay.fromJson(
            (l$overnightFasterpay as Map<String, dynamic>),
          ),
      secorePrepaid:
          Fragment$YardFragment$paymentMethods$secorePrepaid.fromJson(
            (l$secorePrepaid as Map<String, dynamic>),
          ),
      splitPayment: Fragment$YardFragment$paymentMethods$splitPayment.fromJson(
        (l$splitPayment as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$YardFragment$paymentMethods$atm atm;

  final Fragment$YardFragment$paymentMethods$autoCheque autoCheque;

  final Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm
  autoChequeWithEncashmentAtm;

  final Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash
  autoChequeWithEncashmentCash;

  final Fragment$YardFragment$paymentMethods$cash cash;

  final Fragment$YardFragment$paymentMethods$digitalWalletWithAtm
  digitalWalletWithAtm;

  final Fragment$YardFragment$paymentMethods$digitalWalletWithCash
  digitalWalletWithCash;

  final Fragment$YardFragment$paymentMethods$fasterpay fasterpay;

  final Fragment$YardFragment$paymentMethods$manualCheque manualCheque;

  final Fragment$YardFragment$paymentMethods$overnightFasterpay
  overnightFasterpay;

  final Fragment$YardFragment$paymentMethods$secorePrepaid secorePrepaid;

  final Fragment$YardFragment$paymentMethods$splitPayment splitPayment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$atm = atm;
    _resultData['atm'] = l$atm.toJson();
    final l$autoCheque = autoCheque;
    _resultData['autoCheque'] = l$autoCheque.toJson();
    final l$autoChequeWithEncashmentAtm = autoChequeWithEncashmentAtm;
    _resultData['autoChequeWithEncashmentAtm'] = l$autoChequeWithEncashmentAtm
        .toJson();
    final l$autoChequeWithEncashmentCash = autoChequeWithEncashmentCash;
    _resultData['autoChequeWithEncashmentCash'] = l$autoChequeWithEncashmentCash
        .toJson();
    final l$cash = cash;
    _resultData['cash'] = l$cash.toJson();
    final l$digitalWalletWithAtm = digitalWalletWithAtm;
    _resultData['digitalWalletWithAtm'] = l$digitalWalletWithAtm.toJson();
    final l$digitalWalletWithCash = digitalWalletWithCash;
    _resultData['digitalWalletWithCash'] = l$digitalWalletWithCash.toJson();
    final l$fasterpay = fasterpay;
    _resultData['fasterpay'] = l$fasterpay.toJson();
    final l$manualCheque = manualCheque;
    _resultData['manualCheque'] = l$manualCheque.toJson();
    final l$overnightFasterpay = overnightFasterpay;
    _resultData['overnightFasterpay'] = l$overnightFasterpay.toJson();
    final l$secorePrepaid = secorePrepaid;
    _resultData['secorePrepaid'] = l$secorePrepaid.toJson();
    final l$splitPayment = splitPayment;
    _resultData['splitPayment'] = l$splitPayment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$atm = atm;
    final l$autoCheque = autoCheque;
    final l$autoChequeWithEncashmentAtm = autoChequeWithEncashmentAtm;
    final l$autoChequeWithEncashmentCash = autoChequeWithEncashmentCash;
    final l$cash = cash;
    final l$digitalWalletWithAtm = digitalWalletWithAtm;
    final l$digitalWalletWithCash = digitalWalletWithCash;
    final l$fasterpay = fasterpay;
    final l$manualCheque = manualCheque;
    final l$overnightFasterpay = overnightFasterpay;
    final l$secorePrepaid = secorePrepaid;
    final l$splitPayment = splitPayment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$atm,
      l$autoCheque,
      l$autoChequeWithEncashmentAtm,
      l$autoChequeWithEncashmentCash,
      l$cash,
      l$digitalWalletWithAtm,
      l$digitalWalletWithCash,
      l$fasterpay,
      l$manualCheque,
      l$overnightFasterpay,
      l$secorePrepaid,
      l$splitPayment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$paymentMethods ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$atm = atm;
    final lOther$atm = other.atm;
    if (l$atm != lOther$atm) {
      return false;
    }
    final l$autoCheque = autoCheque;
    final lOther$autoCheque = other.autoCheque;
    if (l$autoCheque != lOther$autoCheque) {
      return false;
    }
    final l$autoChequeWithEncashmentAtm = autoChequeWithEncashmentAtm;
    final lOther$autoChequeWithEncashmentAtm =
        other.autoChequeWithEncashmentAtm;
    if (l$autoChequeWithEncashmentAtm != lOther$autoChequeWithEncashmentAtm) {
      return false;
    }
    final l$autoChequeWithEncashmentCash = autoChequeWithEncashmentCash;
    final lOther$autoChequeWithEncashmentCash =
        other.autoChequeWithEncashmentCash;
    if (l$autoChequeWithEncashmentCash != lOther$autoChequeWithEncashmentCash) {
      return false;
    }
    final l$cash = cash;
    final lOther$cash = other.cash;
    if (l$cash != lOther$cash) {
      return false;
    }
    final l$digitalWalletWithAtm = digitalWalletWithAtm;
    final lOther$digitalWalletWithAtm = other.digitalWalletWithAtm;
    if (l$digitalWalletWithAtm != lOther$digitalWalletWithAtm) {
      return false;
    }
    final l$digitalWalletWithCash = digitalWalletWithCash;
    final lOther$digitalWalletWithCash = other.digitalWalletWithCash;
    if (l$digitalWalletWithCash != lOther$digitalWalletWithCash) {
      return false;
    }
    final l$fasterpay = fasterpay;
    final lOther$fasterpay = other.fasterpay;
    if (l$fasterpay != lOther$fasterpay) {
      return false;
    }
    final l$manualCheque = manualCheque;
    final lOther$manualCheque = other.manualCheque;
    if (l$manualCheque != lOther$manualCheque) {
      return false;
    }
    final l$overnightFasterpay = overnightFasterpay;
    final lOther$overnightFasterpay = other.overnightFasterpay;
    if (l$overnightFasterpay != lOther$overnightFasterpay) {
      return false;
    }
    final l$secorePrepaid = secorePrepaid;
    final lOther$secorePrepaid = other.secorePrepaid;
    if (l$secorePrepaid != lOther$secorePrepaid) {
      return false;
    }
    final l$splitPayment = splitPayment;
    final lOther$splitPayment = other.splitPayment;
    if (l$splitPayment != lOther$splitPayment) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods
    on Fragment$YardFragment$paymentMethods {
  CopyWith$Fragment$YardFragment$paymentMethods<
    Fragment$YardFragment$paymentMethods
  >
  get copyWith => CopyWith$Fragment$YardFragment$paymentMethods(this, (i) => i);
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods<TRes> {
  factory CopyWith$Fragment$YardFragment$paymentMethods(
    Fragment$YardFragment$paymentMethods instance,
    TRes Function(Fragment$YardFragment$paymentMethods) then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods;

  factory CopyWith$Fragment$YardFragment$paymentMethods.stub(TRes res) =
      _CopyWithStubImpl$Fragment$YardFragment$paymentMethods;

  TRes call({
    Fragment$YardFragment$paymentMethods$atm? atm,
    Fragment$YardFragment$paymentMethods$autoCheque? autoCheque,
    Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm?
    autoChequeWithEncashmentAtm,
    Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash?
    autoChequeWithEncashmentCash,
    Fragment$YardFragment$paymentMethods$cash? cash,
    Fragment$YardFragment$paymentMethods$digitalWalletWithAtm?
    digitalWalletWithAtm,
    Fragment$YardFragment$paymentMethods$digitalWalletWithCash?
    digitalWalletWithCash,
    Fragment$YardFragment$paymentMethods$fasterpay? fasterpay,
    Fragment$YardFragment$paymentMethods$manualCheque? manualCheque,
    Fragment$YardFragment$paymentMethods$overnightFasterpay? overnightFasterpay,
    Fragment$YardFragment$paymentMethods$secorePrepaid? secorePrepaid,
    Fragment$YardFragment$paymentMethods$splitPayment? splitPayment,
    String? $__typename,
  });
  CopyWith$Fragment$YardFragment$paymentMethods$atm<TRes> get atm;
  CopyWith$Fragment$YardFragment$paymentMethods$autoCheque<TRes> get autoCheque;
  CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm<
    TRes
  >
  get autoChequeWithEncashmentAtm;
  CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash<
    TRes
  >
  get autoChequeWithEncashmentCash;
  CopyWith$Fragment$YardFragment$paymentMethods$cash<TRes> get cash;
  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm<TRes>
  get digitalWalletWithAtm;
  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash<TRes>
  get digitalWalletWithCash;
  CopyWith$Fragment$YardFragment$paymentMethods$fasterpay<TRes> get fasterpay;
  CopyWith$Fragment$YardFragment$paymentMethods$manualCheque<TRes>
  get manualCheque;
  CopyWith$Fragment$YardFragment$paymentMethods$overnightFasterpay<TRes>
  get overnightFasterpay;
  CopyWith$Fragment$YardFragment$paymentMethods$secorePrepaid<TRes>
  get secorePrepaid;
  CopyWith$Fragment$YardFragment$paymentMethods$splitPayment<TRes>
  get splitPayment;
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods<TRes>
    implements CopyWith$Fragment$YardFragment$paymentMethods<TRes> {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods _instance;

  final TRes Function(Fragment$YardFragment$paymentMethods) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? atm = _undefined,
    Object? autoCheque = _undefined,
    Object? autoChequeWithEncashmentAtm = _undefined,
    Object? autoChequeWithEncashmentCash = _undefined,
    Object? cash = _undefined,
    Object? digitalWalletWithAtm = _undefined,
    Object? digitalWalletWithCash = _undefined,
    Object? fasterpay = _undefined,
    Object? manualCheque = _undefined,
    Object? overnightFasterpay = _undefined,
    Object? secorePrepaid = _undefined,
    Object? splitPayment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods(
      atm: atm == _undefined || atm == null
          ? _instance.atm
          : (atm as Fragment$YardFragment$paymentMethods$atm),
      autoCheque: autoCheque == _undefined || autoCheque == null
          ? _instance.autoCheque
          : (autoCheque as Fragment$YardFragment$paymentMethods$autoCheque),
      autoChequeWithEncashmentAtm:
          autoChequeWithEncashmentAtm == _undefined ||
              autoChequeWithEncashmentAtm == null
          ? _instance.autoChequeWithEncashmentAtm
          : (autoChequeWithEncashmentAtm
                as Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm),
      autoChequeWithEncashmentCash:
          autoChequeWithEncashmentCash == _undefined ||
              autoChequeWithEncashmentCash == null
          ? _instance.autoChequeWithEncashmentCash
          : (autoChequeWithEncashmentCash
                as Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash),
      cash: cash == _undefined || cash == null
          ? _instance.cash
          : (cash as Fragment$YardFragment$paymentMethods$cash),
      digitalWalletWithAtm:
          digitalWalletWithAtm == _undefined || digitalWalletWithAtm == null
          ? _instance.digitalWalletWithAtm
          : (digitalWalletWithAtm
                as Fragment$YardFragment$paymentMethods$digitalWalletWithAtm),
      digitalWalletWithCash:
          digitalWalletWithCash == _undefined || digitalWalletWithCash == null
          ? _instance.digitalWalletWithCash
          : (digitalWalletWithCash
                as Fragment$YardFragment$paymentMethods$digitalWalletWithCash),
      fasterpay: fasterpay == _undefined || fasterpay == null
          ? _instance.fasterpay
          : (fasterpay as Fragment$YardFragment$paymentMethods$fasterpay),
      manualCheque: manualCheque == _undefined || manualCheque == null
          ? _instance.manualCheque
          : (manualCheque as Fragment$YardFragment$paymentMethods$manualCheque),
      overnightFasterpay:
          overnightFasterpay == _undefined || overnightFasterpay == null
          ? _instance.overnightFasterpay
          : (overnightFasterpay
                as Fragment$YardFragment$paymentMethods$overnightFasterpay),
      secorePrepaid: secorePrepaid == _undefined || secorePrepaid == null
          ? _instance.secorePrepaid
          : (secorePrepaid
                as Fragment$YardFragment$paymentMethods$secorePrepaid),
      splitPayment: splitPayment == _undefined || splitPayment == null
          ? _instance.splitPayment
          : (splitPayment as Fragment$YardFragment$paymentMethods$splitPayment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$YardFragment$paymentMethods$atm<TRes> get atm {
    final local$atm = _instance.atm;
    return CopyWith$Fragment$YardFragment$paymentMethods$atm(
      local$atm,
      (e) => call(atm: e),
    );
  }

  CopyWith$Fragment$YardFragment$paymentMethods$autoCheque<TRes>
  get autoCheque {
    final local$autoCheque = _instance.autoCheque;
    return CopyWith$Fragment$YardFragment$paymentMethods$autoCheque(
      local$autoCheque,
      (e) => call(autoCheque: e),
    );
  }

  CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm<
    TRes
  >
  get autoChequeWithEncashmentAtm {
    final local$autoChequeWithEncashmentAtm =
        _instance.autoChequeWithEncashmentAtm;
    return CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm(
      local$autoChequeWithEncashmentAtm,
      (e) => call(autoChequeWithEncashmentAtm: e),
    );
  }

  CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash<
    TRes
  >
  get autoChequeWithEncashmentCash {
    final local$autoChequeWithEncashmentCash =
        _instance.autoChequeWithEncashmentCash;
    return CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash(
      local$autoChequeWithEncashmentCash,
      (e) => call(autoChequeWithEncashmentCash: e),
    );
  }

  CopyWith$Fragment$YardFragment$paymentMethods$cash<TRes> get cash {
    final local$cash = _instance.cash;
    return CopyWith$Fragment$YardFragment$paymentMethods$cash(
      local$cash,
      (e) => call(cash: e),
    );
  }

  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm<TRes>
  get digitalWalletWithAtm {
    final local$digitalWalletWithAtm = _instance.digitalWalletWithAtm;
    return CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm(
      local$digitalWalletWithAtm,
      (e) => call(digitalWalletWithAtm: e),
    );
  }

  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash<TRes>
  get digitalWalletWithCash {
    final local$digitalWalletWithCash = _instance.digitalWalletWithCash;
    return CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash(
      local$digitalWalletWithCash,
      (e) => call(digitalWalletWithCash: e),
    );
  }

  CopyWith$Fragment$YardFragment$paymentMethods$fasterpay<TRes> get fasterpay {
    final local$fasterpay = _instance.fasterpay;
    return CopyWith$Fragment$YardFragment$paymentMethods$fasterpay(
      local$fasterpay,
      (e) => call(fasterpay: e),
    );
  }

  CopyWith$Fragment$YardFragment$paymentMethods$manualCheque<TRes>
  get manualCheque {
    final local$manualCheque = _instance.manualCheque;
    return CopyWith$Fragment$YardFragment$paymentMethods$manualCheque(
      local$manualCheque,
      (e) => call(manualCheque: e),
    );
  }

  CopyWith$Fragment$YardFragment$paymentMethods$overnightFasterpay<TRes>
  get overnightFasterpay {
    final local$overnightFasterpay = _instance.overnightFasterpay;
    return CopyWith$Fragment$YardFragment$paymentMethods$overnightFasterpay(
      local$overnightFasterpay,
      (e) => call(overnightFasterpay: e),
    );
  }

  CopyWith$Fragment$YardFragment$paymentMethods$secorePrepaid<TRes>
  get secorePrepaid {
    final local$secorePrepaid = _instance.secorePrepaid;
    return CopyWith$Fragment$YardFragment$paymentMethods$secorePrepaid(
      local$secorePrepaid,
      (e) => call(secorePrepaid: e),
    );
  }

  CopyWith$Fragment$YardFragment$paymentMethods$splitPayment<TRes>
  get splitPayment {
    final local$splitPayment = _instance.splitPayment;
    return CopyWith$Fragment$YardFragment$paymentMethods$splitPayment(
      local$splitPayment,
      (e) => call(splitPayment: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods<TRes>
    implements CopyWith$Fragment$YardFragment$paymentMethods<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods(this._res);

  TRes _res;

  call({
    Fragment$YardFragment$paymentMethods$atm? atm,
    Fragment$YardFragment$paymentMethods$autoCheque? autoCheque,
    Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm?
    autoChequeWithEncashmentAtm,
    Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash?
    autoChequeWithEncashmentCash,
    Fragment$YardFragment$paymentMethods$cash? cash,
    Fragment$YardFragment$paymentMethods$digitalWalletWithAtm?
    digitalWalletWithAtm,
    Fragment$YardFragment$paymentMethods$digitalWalletWithCash?
    digitalWalletWithCash,
    Fragment$YardFragment$paymentMethods$fasterpay? fasterpay,
    Fragment$YardFragment$paymentMethods$manualCheque? manualCheque,
    Fragment$YardFragment$paymentMethods$overnightFasterpay? overnightFasterpay,
    Fragment$YardFragment$paymentMethods$secorePrepaid? secorePrepaid,
    Fragment$YardFragment$paymentMethods$splitPayment? splitPayment,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$YardFragment$paymentMethods$atm<TRes> get atm =>
      CopyWith$Fragment$YardFragment$paymentMethods$atm.stub(_res);

  CopyWith$Fragment$YardFragment$paymentMethods$autoCheque<TRes>
  get autoCheque =>
      CopyWith$Fragment$YardFragment$paymentMethods$autoCheque.stub(_res);

  CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm<
    TRes
  >
  get autoChequeWithEncashmentAtm =>
      CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm.stub(
        _res,
      );

  CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash<
    TRes
  >
  get autoChequeWithEncashmentCash =>
      CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash.stub(
        _res,
      );

  CopyWith$Fragment$YardFragment$paymentMethods$cash<TRes> get cash =>
      CopyWith$Fragment$YardFragment$paymentMethods$cash.stub(_res);

  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm<TRes>
  get digitalWalletWithAtm =>
      CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm.stub(
        _res,
      );

  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash<TRes>
  get digitalWalletWithCash =>
      CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash.stub(
        _res,
      );

  CopyWith$Fragment$YardFragment$paymentMethods$fasterpay<TRes> get fasterpay =>
      CopyWith$Fragment$YardFragment$paymentMethods$fasterpay.stub(_res);

  CopyWith$Fragment$YardFragment$paymentMethods$manualCheque<TRes>
  get manualCheque =>
      CopyWith$Fragment$YardFragment$paymentMethods$manualCheque.stub(_res);

  CopyWith$Fragment$YardFragment$paymentMethods$overnightFasterpay<TRes>
  get overnightFasterpay =>
      CopyWith$Fragment$YardFragment$paymentMethods$overnightFasterpay.stub(
        _res,
      );

  CopyWith$Fragment$YardFragment$paymentMethods$secorePrepaid<TRes>
  get secorePrepaid =>
      CopyWith$Fragment$YardFragment$paymentMethods$secorePrepaid.stub(_res);

  CopyWith$Fragment$YardFragment$paymentMethods$splitPayment<TRes>
  get splitPayment =>
      CopyWith$Fragment$YardFragment$paymentMethods$splitPayment.stub(_res);
}

class Fragment$YardFragment$paymentMethods$atm {
  Fragment$YardFragment$paymentMethods$atm({
    required this.enabled,
    required this.paymentMethod,
    required this.rounding,
    required this.maxUpperLimit,
    this.$__typename = 'AtmPaymentMethod',
  });

  factory Fragment$YardFragment$paymentMethods$atm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$rounding = json['rounding'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$atm(
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      rounding: Fragment$YardFragment$paymentMethods$atm$rounding.fromJson(
        (l$rounding as Map<String, dynamic>),
      ),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final Fragment$YardFragment$paymentMethods$atm$rounding rounding;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding.toJson();
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$rounding = rounding;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$paymentMethod,
      l$rounding,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$paymentMethods$atm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$atm
    on Fragment$YardFragment$paymentMethods$atm {
  CopyWith$Fragment$YardFragment$paymentMethods$atm<
    Fragment$YardFragment$paymentMethods$atm
  >
  get copyWith =>
      CopyWith$Fragment$YardFragment$paymentMethods$atm(this, (i) => i);
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$atm<TRes> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$atm(
    Fragment$YardFragment$paymentMethods$atm instance,
    TRes Function(Fragment$YardFragment$paymentMethods$atm) then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$atm;

  factory CopyWith$Fragment$YardFragment$paymentMethods$atm.stub(TRes res) =
      _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$atm;

  TRes call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Fragment$YardFragment$paymentMethods$atm$rounding? rounding,
    double? maxUpperLimit,
    String? $__typename,
  });
  CopyWith$Fragment$YardFragment$paymentMethods$atm$rounding<TRes> get rounding;
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$atm<TRes>
    implements CopyWith$Fragment$YardFragment$paymentMethods$atm<TRes> {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$atm(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$atm _instance;

  final TRes Function(Fragment$YardFragment$paymentMethods$atm) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? rounding = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$atm(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding as Fragment$YardFragment$paymentMethods$atm$rounding),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$YardFragment$paymentMethods$atm$rounding<TRes>
  get rounding {
    final local$rounding = _instance.rounding;
    return CopyWith$Fragment$YardFragment$paymentMethods$atm$rounding(
      local$rounding,
      (e) => call(rounding: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$atm<TRes>
    implements CopyWith$Fragment$YardFragment$paymentMethods$atm<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$atm(this._res);

  TRes _res;

  call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Fragment$YardFragment$paymentMethods$atm$rounding? rounding,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$YardFragment$paymentMethods$atm$rounding<TRes>
  get rounding =>
      CopyWith$Fragment$YardFragment$paymentMethods$atm$rounding.stub(_res);
}

class Fragment$YardFragment$paymentMethods$atm$rounding {
  Fragment$YardFragment$paymentMethods$atm$rounding({
    required this.roundingType,
    required this.value,
    this.$__typename = 'Rounding',
  });

  factory Fragment$YardFragment$paymentMethods$atm$rounding.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$roundingType = json['roundingType'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$atm$rounding(
      roundingType: fromJson$Enum$RoundingType((l$roundingType as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$RoundingType roundingType;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roundingType = roundingType;
    _resultData['roundingType'] = toJson$Enum$RoundingType(l$roundingType);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roundingType = roundingType;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$roundingType, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$paymentMethods$atm$rounding ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roundingType = roundingType;
    final lOther$roundingType = other.roundingType;
    if (l$roundingType != lOther$roundingType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$atm$rounding
    on Fragment$YardFragment$paymentMethods$atm$rounding {
  CopyWith$Fragment$YardFragment$paymentMethods$atm$rounding<
    Fragment$YardFragment$paymentMethods$atm$rounding
  >
  get copyWith => CopyWith$Fragment$YardFragment$paymentMethods$atm$rounding(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$atm$rounding<
  TRes
> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$atm$rounding(
    Fragment$YardFragment$paymentMethods$atm$rounding instance,
    TRes Function(Fragment$YardFragment$paymentMethods$atm$rounding) then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$atm$rounding;

  factory CopyWith$Fragment$YardFragment$paymentMethods$atm$rounding.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$atm$rounding;

  TRes call({
    Enum$RoundingType? roundingType,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$atm$rounding<TRes>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$atm$rounding<TRes> {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$atm$rounding(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$atm$rounding _instance;

  final TRes Function(Fragment$YardFragment$paymentMethods$atm$rounding) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roundingType = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$atm$rounding(
      roundingType: roundingType == _undefined || roundingType == null
          ? _instance.roundingType
          : (roundingType as Enum$RoundingType),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$atm$rounding<TRes>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$atm$rounding<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$atm$rounding(
    this._res,
  );

  TRes _res;

  call({Enum$RoundingType? roundingType, double? value, String? $__typename}) =>
      _res;
}

class Fragment$YardFragment$paymentMethods$autoCheque {
  Fragment$YardFragment$paymentMethods$autoCheque({
    required this.enabled,
    required this.enforceIdentification,
    required this.logoPath,
    required this.paymentMethod,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'AutoChequePaymentMethod',
  });

  factory Fragment$YardFragment$paymentMethods$autoCheque.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$enforceIdentification = json['enforceIdentification'];
    final l$logoPath = json['logoPath'];
    final l$paymentMethod = json['paymentMethod'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$autoCheque(
      enabled: (l$enabled as bool),
      enforceIdentification: (l$enforceIdentification as bool),
      logoPath: (l$logoPath as String),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final bool enforceIdentification;

  final String logoPath;

  final Enum$PaymentMethod paymentMethod;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$enforceIdentification = enforceIdentification;
    _resultData['enforceIdentification'] = l$enforceIdentification;
    final l$logoPath = logoPath;
    _resultData['logoPath'] = l$logoPath;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$enforceIdentification = enforceIdentification;
    final l$logoPath = logoPath;
    final l$paymentMethod = paymentMethod;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$enforceIdentification,
      l$logoPath,
      l$paymentMethod,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$paymentMethods$autoCheque ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$enforceIdentification = enforceIdentification;
    final lOther$enforceIdentification = other.enforceIdentification;
    if (l$enforceIdentification != lOther$enforceIdentification) {
      return false;
    }
    final l$logoPath = logoPath;
    final lOther$logoPath = other.logoPath;
    if (l$logoPath != lOther$logoPath) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$autoCheque
    on Fragment$YardFragment$paymentMethods$autoCheque {
  CopyWith$Fragment$YardFragment$paymentMethods$autoCheque<
    Fragment$YardFragment$paymentMethods$autoCheque
  >
  get copyWith =>
      CopyWith$Fragment$YardFragment$paymentMethods$autoCheque(this, (i) => i);
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$autoCheque<TRes> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$autoCheque(
    Fragment$YardFragment$paymentMethods$autoCheque instance,
    TRes Function(Fragment$YardFragment$paymentMethods$autoCheque) then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$autoCheque;

  factory CopyWith$Fragment$YardFragment$paymentMethods$autoCheque.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$autoCheque;

  TRes call({
    bool? enabled,
    bool? enforceIdentification,
    String? logoPath,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$autoCheque<TRes>
    implements CopyWith$Fragment$YardFragment$paymentMethods$autoCheque<TRes> {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$autoCheque(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$autoCheque _instance;

  final TRes Function(Fragment$YardFragment$paymentMethods$autoCheque) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? enforceIdentification = _undefined,
    Object? logoPath = _undefined,
    Object? paymentMethod = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$autoCheque(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      enforceIdentification:
          enforceIdentification == _undefined || enforceIdentification == null
          ? _instance.enforceIdentification
          : (enforceIdentification as bool),
      logoPath: logoPath == _undefined || logoPath == null
          ? _instance.logoPath
          : (logoPath as String),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$autoCheque<TRes>
    implements CopyWith$Fragment$YardFragment$paymentMethods$autoCheque<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$autoCheque(this._res);

  TRes _res;

  call({
    bool? enabled,
    bool? enforceIdentification,
    String? logoPath,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm {
  Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm({
    required this.agent,
    required this.commissionPercent,
    required this.enabled,
    required this.enforceIdentification,
    required this.flatFeeThreshold,
    required this.flatFeeValue,
    required this.logoPath,
    required this.minCommission,
    required this.minDenomination,
    required this.paymentMethod,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'AutoChequeWithEncashmentAtmPaymentMethod',
  });

  factory Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agent = json['agent'];
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$enforceIdentification = json['enforceIdentification'];
    final l$flatFeeThreshold = json['flatFeeThreshold'];
    final l$flatFeeValue = json['flatFeeValue'];
    final l$logoPath = json['logoPath'];
    final l$minCommission = json['minCommission'];
    final l$minDenomination = json['minDenomination'];
    final l$paymentMethod = json['paymentMethod'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm(
      agent: (l$agent as String),
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      enforceIdentification: (l$enforceIdentification as bool),
      flatFeeThreshold: (l$flatFeeThreshold as num).toDouble(),
      flatFeeValue: (l$flatFeeValue as num).toDouble(),
      logoPath: (l$logoPath as String),
      minCommission: (l$minCommission as num).toDouble(),
      minDenomination: (l$minDenomination as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String agent;

  final double commissionPercent;

  final bool enabled;

  final bool enforceIdentification;

  final double flatFeeThreshold;

  final double flatFeeValue;

  final String logoPath;

  final double minCommission;

  final double minDenomination;

  final Enum$PaymentMethod paymentMethod;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agent = agent;
    _resultData['agent'] = l$agent;
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$enforceIdentification = enforceIdentification;
    _resultData['enforceIdentification'] = l$enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    _resultData['flatFeeThreshold'] = l$flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    _resultData['flatFeeValue'] = l$flatFeeValue;
    final l$logoPath = logoPath;
    _resultData['logoPath'] = l$logoPath;
    final l$minCommission = minCommission;
    _resultData['minCommission'] = l$minCommission;
    final l$minDenomination = minDenomination;
    _resultData['minDenomination'] = l$minDenomination;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agent = agent;
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$enforceIdentification = enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    final l$logoPath = logoPath;
    final l$minCommission = minCommission;
    final l$minDenomination = minDenomination;
    final l$paymentMethod = paymentMethod;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$agent,
      l$commissionPercent,
      l$enabled,
      l$enforceIdentification,
      l$flatFeeThreshold,
      l$flatFeeValue,
      l$logoPath,
      l$minCommission,
      l$minDenomination,
      l$paymentMethod,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agent = agent;
    final lOther$agent = other.agent;
    if (l$agent != lOther$agent) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$enforceIdentification = enforceIdentification;
    final lOther$enforceIdentification = other.enforceIdentification;
    if (l$enforceIdentification != lOther$enforceIdentification) {
      return false;
    }
    final l$flatFeeThreshold = flatFeeThreshold;
    final lOther$flatFeeThreshold = other.flatFeeThreshold;
    if (l$flatFeeThreshold != lOther$flatFeeThreshold) {
      return false;
    }
    final l$flatFeeValue = flatFeeValue;
    final lOther$flatFeeValue = other.flatFeeValue;
    if (l$flatFeeValue != lOther$flatFeeValue) {
      return false;
    }
    final l$logoPath = logoPath;
    final lOther$logoPath = other.logoPath;
    if (l$logoPath != lOther$logoPath) {
      return false;
    }
    final l$minCommission = minCommission;
    final lOther$minCommission = other.minCommission;
    if (l$minCommission != lOther$minCommission) {
      return false;
    }
    final l$minDenomination = minDenomination;
    final lOther$minDenomination = other.minDenomination;
    if (l$minDenomination != lOther$minDenomination) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm
    on Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm {
  CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm<
    Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm
  >
  get copyWith =>
      CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm<
  TRes
> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm(
    Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm instance,
    TRes Function(
      Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm,
    )
    then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm;

  factory CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm;

  TRes call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm<
          TRes
        > {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm
  _instance;

  final TRes Function(
    Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agent = _undefined,
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? enforceIdentification = _undefined,
    Object? flatFeeThreshold = _undefined,
    Object? flatFeeValue = _undefined,
    Object? logoPath = _undefined,
    Object? minCommission = _undefined,
    Object? minDenomination = _undefined,
    Object? paymentMethod = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm(
      agent: agent == _undefined || agent == null
          ? _instance.agent
          : (agent as String),
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      enforceIdentification:
          enforceIdentification == _undefined || enforceIdentification == null
          ? _instance.enforceIdentification
          : (enforceIdentification as bool),
      flatFeeThreshold:
          flatFeeThreshold == _undefined || flatFeeThreshold == null
          ? _instance.flatFeeThreshold
          : (flatFeeThreshold as double),
      flatFeeValue: flatFeeValue == _undefined || flatFeeValue == null
          ? _instance.flatFeeValue
          : (flatFeeValue as double),
      logoPath: logoPath == _undefined || logoPath == null
          ? _instance.logoPath
          : (logoPath as String),
      minCommission: minCommission == _undefined || minCommission == null
          ? _instance.minCommission
          : (minCommission as double),
      minDenomination: minDenomination == _undefined || minDenomination == null
          ? _instance.minDenomination
          : (minDenomination as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm<
          TRes
        > {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentAtm(
    this._res,
  );

  TRes _res;

  call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash {
  Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash({
    required this.agent,
    required this.commissionPercent,
    required this.enabled,
    required this.enforceIdentification,
    required this.flatFeeThreshold,
    required this.flatFeeValue,
    required this.logoPath,
    required this.minCommission,
    required this.minDenomination,
    required this.paymentMethod,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'AutoChequeWithEncashmentCashPaymentMethod',
  });

  factory Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agent = json['agent'];
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$enforceIdentification = json['enforceIdentification'];
    final l$flatFeeThreshold = json['flatFeeThreshold'];
    final l$flatFeeValue = json['flatFeeValue'];
    final l$logoPath = json['logoPath'];
    final l$minCommission = json['minCommission'];
    final l$minDenomination = json['minDenomination'];
    final l$paymentMethod = json['paymentMethod'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash(
      agent: (l$agent as String),
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      enforceIdentification: (l$enforceIdentification as bool),
      flatFeeThreshold: (l$flatFeeThreshold as num).toDouble(),
      flatFeeValue: (l$flatFeeValue as num).toDouble(),
      logoPath: (l$logoPath as String),
      minCommission: (l$minCommission as num).toDouble(),
      minDenomination: (l$minDenomination as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String agent;

  final double commissionPercent;

  final bool enabled;

  final bool enforceIdentification;

  final double flatFeeThreshold;

  final double flatFeeValue;

  final String logoPath;

  final double minCommission;

  final double minDenomination;

  final Enum$PaymentMethod paymentMethod;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agent = agent;
    _resultData['agent'] = l$agent;
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$enforceIdentification = enforceIdentification;
    _resultData['enforceIdentification'] = l$enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    _resultData['flatFeeThreshold'] = l$flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    _resultData['flatFeeValue'] = l$flatFeeValue;
    final l$logoPath = logoPath;
    _resultData['logoPath'] = l$logoPath;
    final l$minCommission = minCommission;
    _resultData['minCommission'] = l$minCommission;
    final l$minDenomination = minDenomination;
    _resultData['minDenomination'] = l$minDenomination;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agent = agent;
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$enforceIdentification = enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    final l$logoPath = logoPath;
    final l$minCommission = minCommission;
    final l$minDenomination = minDenomination;
    final l$paymentMethod = paymentMethod;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$agent,
      l$commissionPercent,
      l$enabled,
      l$enforceIdentification,
      l$flatFeeThreshold,
      l$flatFeeValue,
      l$logoPath,
      l$minCommission,
      l$minDenomination,
      l$paymentMethod,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agent = agent;
    final lOther$agent = other.agent;
    if (l$agent != lOther$agent) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$enforceIdentification = enforceIdentification;
    final lOther$enforceIdentification = other.enforceIdentification;
    if (l$enforceIdentification != lOther$enforceIdentification) {
      return false;
    }
    final l$flatFeeThreshold = flatFeeThreshold;
    final lOther$flatFeeThreshold = other.flatFeeThreshold;
    if (l$flatFeeThreshold != lOther$flatFeeThreshold) {
      return false;
    }
    final l$flatFeeValue = flatFeeValue;
    final lOther$flatFeeValue = other.flatFeeValue;
    if (l$flatFeeValue != lOther$flatFeeValue) {
      return false;
    }
    final l$logoPath = logoPath;
    final lOther$logoPath = other.logoPath;
    if (l$logoPath != lOther$logoPath) {
      return false;
    }
    final l$minCommission = minCommission;
    final lOther$minCommission = other.minCommission;
    if (l$minCommission != lOther$minCommission) {
      return false;
    }
    final l$minDenomination = minDenomination;
    final lOther$minDenomination = other.minDenomination;
    if (l$minDenomination != lOther$minDenomination) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash
    on Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash {
  CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash<
    Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash
  >
  get copyWith =>
      CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash<
  TRes
> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash(
    Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash instance,
    TRes Function(
      Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash,
    )
    then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash;

  factory CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash;

  TRes call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash<
          TRes
        > {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash
  _instance;

  final TRes Function(
    Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agent = _undefined,
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? enforceIdentification = _undefined,
    Object? flatFeeThreshold = _undefined,
    Object? flatFeeValue = _undefined,
    Object? logoPath = _undefined,
    Object? minCommission = _undefined,
    Object? minDenomination = _undefined,
    Object? paymentMethod = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash(
      agent: agent == _undefined || agent == null
          ? _instance.agent
          : (agent as String),
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      enforceIdentification:
          enforceIdentification == _undefined || enforceIdentification == null
          ? _instance.enforceIdentification
          : (enforceIdentification as bool),
      flatFeeThreshold:
          flatFeeThreshold == _undefined || flatFeeThreshold == null
          ? _instance.flatFeeThreshold
          : (flatFeeThreshold as double),
      flatFeeValue: flatFeeValue == _undefined || flatFeeValue == null
          ? _instance.flatFeeValue
          : (flatFeeValue as double),
      logoPath: logoPath == _undefined || logoPath == null
          ? _instance.logoPath
          : (logoPath as String),
      minCommission: minCommission == _undefined || minCommission == null
          ? _instance.minCommission
          : (minCommission as double),
      minDenomination: minDenomination == _undefined || minDenomination == null
          ? _instance.minDenomination
          : (minDenomination as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash<
          TRes
        > {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$autoChequeWithEncashmentCash(
    this._res,
  );

  TRes _res;

  call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$YardFragment$paymentMethods$cash {
  Fragment$YardFragment$paymentMethods$cash({
    required this.enabled,
    required this.numberOfRemittancesToPrint,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'CashPaymentMethod',
  });

  factory Fragment$YardFragment$paymentMethods$cash.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$numberOfRemittancesToPrint = json['numberOfRemittancesToPrint'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$cash(
      enabled: (l$enabled as bool),
      numberOfRemittancesToPrint: (l$numberOfRemittancesToPrint as int),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final int numberOfRemittancesToPrint;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$numberOfRemittancesToPrint = numberOfRemittancesToPrint;
    _resultData['numberOfRemittancesToPrint'] = l$numberOfRemittancesToPrint;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$numberOfRemittancesToPrint = numberOfRemittancesToPrint;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$numberOfRemittancesToPrint,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$paymentMethods$cash ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$numberOfRemittancesToPrint = numberOfRemittancesToPrint;
    final lOther$numberOfRemittancesToPrint = other.numberOfRemittancesToPrint;
    if (l$numberOfRemittancesToPrint != lOther$numberOfRemittancesToPrint) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$cash
    on Fragment$YardFragment$paymentMethods$cash {
  CopyWith$Fragment$YardFragment$paymentMethods$cash<
    Fragment$YardFragment$paymentMethods$cash
  >
  get copyWith =>
      CopyWith$Fragment$YardFragment$paymentMethods$cash(this, (i) => i);
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$cash<TRes> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$cash(
    Fragment$YardFragment$paymentMethods$cash instance,
    TRes Function(Fragment$YardFragment$paymentMethods$cash) then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$cash;

  factory CopyWith$Fragment$YardFragment$paymentMethods$cash.stub(TRes res) =
      _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$cash;

  TRes call({
    bool? enabled,
    int? numberOfRemittancesToPrint,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$cash<TRes>
    implements CopyWith$Fragment$YardFragment$paymentMethods$cash<TRes> {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$cash(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$cash _instance;

  final TRes Function(Fragment$YardFragment$paymentMethods$cash) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? numberOfRemittancesToPrint = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$cash(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      numberOfRemittancesToPrint:
          numberOfRemittancesToPrint == _undefined ||
              numberOfRemittancesToPrint == null
          ? _instance.numberOfRemittancesToPrint
          : (numberOfRemittancesToPrint as int),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$cash<TRes>
    implements CopyWith$Fragment$YardFragment$paymentMethods$cash<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$cash(this._res);

  TRes _res;

  call({
    bool? enabled,
    int? numberOfRemittancesToPrint,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$YardFragment$paymentMethods$digitalWalletWithAtm {
  Fragment$YardFragment$paymentMethods$digitalWalletWithAtm({
    required this.commissionPercent,
    required this.enabled,
    required this.paymentMethod,
    required this.rounding,
    required this.maxUpperLimit,
    this.$__typename = 'DigitalWalletWithAtmPaymentMethod',
  });

  factory Fragment$YardFragment$paymentMethods$digitalWalletWithAtm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$rounding = json['rounding'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$digitalWalletWithAtm(
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      rounding:
          Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding.fromJson(
            (l$rounding as Map<String, dynamic>),
          ),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double commissionPercent;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding
  rounding;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding.toJson();
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$rounding = rounding;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$commissionPercent,
      l$enabled,
      l$paymentMethod,
      l$rounding,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$paymentMethods$digitalWalletWithAtm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm
    on Fragment$YardFragment$paymentMethods$digitalWalletWithAtm {
  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm<
    Fragment$YardFragment$paymentMethods$digitalWalletWithAtm
  >
  get copyWith =>
      CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm<
  TRes
> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm(
    Fragment$YardFragment$paymentMethods$digitalWalletWithAtm instance,
    TRes Function(Fragment$YardFragment$paymentMethods$digitalWalletWithAtm)
    then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm;

  factory CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm;

  TRes call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  });
  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding<
    TRes
  >
  get rounding;
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm<
          TRes
        > {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$digitalWalletWithAtm _instance;

  final TRes Function(Fragment$YardFragment$paymentMethods$digitalWalletWithAtm)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? rounding = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$digitalWalletWithAtm(
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding
                as Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding<
    TRes
  >
  get rounding {
    final local$rounding = _instance.rounding;
    return CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding(
      local$rounding,
      (e) => call(rounding: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm<
          TRes
        > {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm(
    this._res,
  );

  TRes _res;

  call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding<
    TRes
  >
  get rounding =>
      CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding.stub(
        _res,
      );
}

class Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding {
  Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding({
    required this.roundingType,
    required this.value,
    this.$__typename = 'Rounding',
  });

  factory Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$roundingType = json['roundingType'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding(
      roundingType: fromJson$Enum$RoundingType((l$roundingType as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$RoundingType roundingType;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roundingType = roundingType;
    _resultData['roundingType'] = toJson$Enum$RoundingType(l$roundingType);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roundingType = roundingType;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$roundingType, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roundingType = roundingType;
    final lOther$roundingType = other.roundingType;
    if (l$roundingType != lOther$roundingType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding
    on Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding {
  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding<
    Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding
  >
  get copyWith =>
      CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding<
  TRes
> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding(
    Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding instance,
    TRes Function(
      Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding,
    )
    then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding;

  factory CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding;

  TRes call({
    Enum$RoundingType? roundingType,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding<
          TRes
        > {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding
  _instance;

  final TRes Function(
    Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roundingType = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding(
      roundingType: roundingType == _undefined || roundingType == null
          ? _instance.roundingType
          : (roundingType as Enum$RoundingType),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding<
          TRes
        > {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithAtm$rounding(
    this._res,
  );

  TRes _res;

  call({Enum$RoundingType? roundingType, double? value, String? $__typename}) =>
      _res;
}

class Fragment$YardFragment$paymentMethods$digitalWalletWithCash {
  Fragment$YardFragment$paymentMethods$digitalWalletWithCash({
    required this.commissionPercent,
    required this.enabled,
    required this.paymentMethod,
    required this.rounding,
    required this.maxUpperLimit,
    this.$__typename = 'DigitalWalletWithCashPaymentMethod',
  });

  factory Fragment$YardFragment$paymentMethods$digitalWalletWithCash.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$rounding = json['rounding'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$digitalWalletWithCash(
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      rounding:
          Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding.fromJson(
            (l$rounding as Map<String, dynamic>),
          ),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double commissionPercent;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding
  rounding;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding.toJson();
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$rounding = rounding;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$commissionPercent,
      l$enabled,
      l$paymentMethod,
      l$rounding,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$paymentMethods$digitalWalletWithCash ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$digitalWalletWithCash
    on Fragment$YardFragment$paymentMethods$digitalWalletWithCash {
  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash<
    Fragment$YardFragment$paymentMethods$digitalWalletWithCash
  >
  get copyWith =>
      CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash<
  TRes
> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash(
    Fragment$YardFragment$paymentMethods$digitalWalletWithCash instance,
    TRes Function(Fragment$YardFragment$paymentMethods$digitalWalletWithCash)
    then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithCash;

  factory CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithCash;

  TRes call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  });
  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding<
    TRes
  >
  get rounding;
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithCash<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash<
          TRes
        > {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithCash(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$digitalWalletWithCash _instance;

  final TRes Function(
    Fragment$YardFragment$paymentMethods$digitalWalletWithCash,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? rounding = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$digitalWalletWithCash(
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding
                as Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding<
    TRes
  >
  get rounding {
    final local$rounding = _instance.rounding;
    return CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding(
      local$rounding,
      (e) => call(rounding: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithCash<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash<
          TRes
        > {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithCash(
    this._res,
  );

  TRes _res;

  call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding<
    TRes
  >
  get rounding =>
      CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding.stub(
        _res,
      );
}

class Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding {
  Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding({
    required this.roundingType,
    required this.value,
    this.$__typename = 'Rounding',
  });

  factory Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$roundingType = json['roundingType'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding(
      roundingType: fromJson$Enum$RoundingType((l$roundingType as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$RoundingType roundingType;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roundingType = roundingType;
    _resultData['roundingType'] = toJson$Enum$RoundingType(l$roundingType);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roundingType = roundingType;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$roundingType, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roundingType = roundingType;
    final lOther$roundingType = other.roundingType;
    if (l$roundingType != lOther$roundingType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding
    on Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding {
  CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding<
    Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding
  >
  get copyWith =>
      CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding<
  TRes
> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding(
    Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding
    instance,
    TRes Function(
      Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding,
    )
    then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding;

  factory CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding;

  TRes call({
    Enum$RoundingType? roundingType,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding<
          TRes
        > {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding
  _instance;

  final TRes Function(
    Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roundingType = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding(
      roundingType: roundingType == _undefined || roundingType == null
          ? _instance.roundingType
          : (roundingType as Enum$RoundingType),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding<
          TRes
        > {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$digitalWalletWithCash$rounding(
    this._res,
  );

  TRes _res;

  call({Enum$RoundingType? roundingType, double? value, String? $__typename}) =>
      _res;
}

class Fragment$YardFragment$paymentMethods$fasterpay {
  Fragment$YardFragment$paymentMethods$fasterpay({
    required this.enabled,
    required this.flatFeeValue,
    required this.paymentMethod,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'FasterpayPaymentMethod',
  });

  factory Fragment$YardFragment$paymentMethods$fasterpay.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$flatFeeValue = json['flatFeeValue'];
    final l$paymentMethod = json['paymentMethod'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$fasterpay(
      enabled: (l$enabled as bool),
      flatFeeValue: (l$flatFeeValue as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final double flatFeeValue;

  final Enum$PaymentMethod paymentMethod;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$flatFeeValue = flatFeeValue;
    _resultData['flatFeeValue'] = l$flatFeeValue;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$flatFeeValue = flatFeeValue;
    final l$paymentMethod = paymentMethod;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$flatFeeValue,
      l$paymentMethod,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$paymentMethods$fasterpay ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$flatFeeValue = flatFeeValue;
    final lOther$flatFeeValue = other.flatFeeValue;
    if (l$flatFeeValue != lOther$flatFeeValue) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$fasterpay
    on Fragment$YardFragment$paymentMethods$fasterpay {
  CopyWith$Fragment$YardFragment$paymentMethods$fasterpay<
    Fragment$YardFragment$paymentMethods$fasterpay
  >
  get copyWith =>
      CopyWith$Fragment$YardFragment$paymentMethods$fasterpay(this, (i) => i);
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$fasterpay<TRes> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$fasterpay(
    Fragment$YardFragment$paymentMethods$fasterpay instance,
    TRes Function(Fragment$YardFragment$paymentMethods$fasterpay) then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$fasterpay;

  factory CopyWith$Fragment$YardFragment$paymentMethods$fasterpay.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$fasterpay;

  TRes call({
    bool? enabled,
    double? flatFeeValue,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$fasterpay<TRes>
    implements CopyWith$Fragment$YardFragment$paymentMethods$fasterpay<TRes> {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$fasterpay(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$fasterpay _instance;

  final TRes Function(Fragment$YardFragment$paymentMethods$fasterpay) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? flatFeeValue = _undefined,
    Object? paymentMethod = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$fasterpay(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      flatFeeValue: flatFeeValue == _undefined || flatFeeValue == null
          ? _instance.flatFeeValue
          : (flatFeeValue as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$fasterpay<TRes>
    implements CopyWith$Fragment$YardFragment$paymentMethods$fasterpay<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$fasterpay(this._res);

  TRes _res;

  call({
    bool? enabled,
    double? flatFeeValue,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$YardFragment$paymentMethods$manualCheque {
  Fragment$YardFragment$paymentMethods$manualCheque({
    required this.enabled,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'ManualChequePaymentMethod',
  });

  factory Fragment$YardFragment$paymentMethods$manualCheque.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$manualCheque(
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$paymentMethods$manualCheque ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$manualCheque
    on Fragment$YardFragment$paymentMethods$manualCheque {
  CopyWith$Fragment$YardFragment$paymentMethods$manualCheque<
    Fragment$YardFragment$paymentMethods$manualCheque
  >
  get copyWith => CopyWith$Fragment$YardFragment$paymentMethods$manualCheque(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$manualCheque<
  TRes
> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$manualCheque(
    Fragment$YardFragment$paymentMethods$manualCheque instance,
    TRes Function(Fragment$YardFragment$paymentMethods$manualCheque) then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$manualCheque;

  factory CopyWith$Fragment$YardFragment$paymentMethods$manualCheque.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$manualCheque;

  TRes call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$manualCheque<TRes>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$manualCheque<TRes> {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$manualCheque(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$manualCheque _instance;

  final TRes Function(Fragment$YardFragment$paymentMethods$manualCheque) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$manualCheque(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$manualCheque<TRes>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$manualCheque<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$manualCheque(
    this._res,
  );

  TRes _res;

  call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$YardFragment$paymentMethods$overnightFasterpay {
  Fragment$YardFragment$paymentMethods$overnightFasterpay({
    required this.enabled,
    required this.paymentMethod,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'OvernightFasterpayPaymentMethod',
  });

  factory Fragment$YardFragment$paymentMethods$overnightFasterpay.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$overnightFasterpay(
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$paymentMethod,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$paymentMethods$overnightFasterpay ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$overnightFasterpay
    on Fragment$YardFragment$paymentMethods$overnightFasterpay {
  CopyWith$Fragment$YardFragment$paymentMethods$overnightFasterpay<
    Fragment$YardFragment$paymentMethods$overnightFasterpay
  >
  get copyWith =>
      CopyWith$Fragment$YardFragment$paymentMethods$overnightFasterpay(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$overnightFasterpay<
  TRes
> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$overnightFasterpay(
    Fragment$YardFragment$paymentMethods$overnightFasterpay instance,
    TRes Function(Fragment$YardFragment$paymentMethods$overnightFasterpay) then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$overnightFasterpay;

  factory CopyWith$Fragment$YardFragment$paymentMethods$overnightFasterpay.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$overnightFasterpay;

  TRes call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$overnightFasterpay<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$overnightFasterpay<TRes> {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$overnightFasterpay(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$overnightFasterpay _instance;

  final TRes Function(Fragment$YardFragment$paymentMethods$overnightFasterpay)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$overnightFasterpay(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$overnightFasterpay<
  TRes
>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$overnightFasterpay<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$overnightFasterpay(
    this._res,
  );

  TRes _res;

  call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$YardFragment$paymentMethods$secorePrepaid {
  Fragment$YardFragment$paymentMethods$secorePrepaid({
    required this.commissionPercent,
    required this.enabled,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'SecorePrepaidPaymentMethod',
  });

  factory Fragment$YardFragment$paymentMethods$secorePrepaid.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$secorePrepaid(
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double commissionPercent;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$commissionPercent,
      l$enabled,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$paymentMethods$secorePrepaid ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$secorePrepaid
    on Fragment$YardFragment$paymentMethods$secorePrepaid {
  CopyWith$Fragment$YardFragment$paymentMethods$secorePrepaid<
    Fragment$YardFragment$paymentMethods$secorePrepaid
  >
  get copyWith => CopyWith$Fragment$YardFragment$paymentMethods$secorePrepaid(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$secorePrepaid<
  TRes
> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$secorePrepaid(
    Fragment$YardFragment$paymentMethods$secorePrepaid instance,
    TRes Function(Fragment$YardFragment$paymentMethods$secorePrepaid) then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$secorePrepaid;

  factory CopyWith$Fragment$YardFragment$paymentMethods$secorePrepaid.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$secorePrepaid;

  TRes call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$secorePrepaid<TRes>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$secorePrepaid<TRes> {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$secorePrepaid(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$secorePrepaid _instance;

  final TRes Function(Fragment$YardFragment$paymentMethods$secorePrepaid) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$secorePrepaid(
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$secorePrepaid<TRes>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$secorePrepaid<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$secorePrepaid(
    this._res,
  );

  TRes _res;

  call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$YardFragment$paymentMethods$splitPayment {
  Fragment$YardFragment$paymentMethods$splitPayment({
    required this.enabled,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'SplitPaymentMethod',
  });

  factory Fragment$YardFragment$paymentMethods$splitPayment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$YardFragment$paymentMethods$splitPayment(
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$YardFragment$paymentMethods$splitPayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$YardFragment$paymentMethods$splitPayment
    on Fragment$YardFragment$paymentMethods$splitPayment {
  CopyWith$Fragment$YardFragment$paymentMethods$splitPayment<
    Fragment$YardFragment$paymentMethods$splitPayment
  >
  get copyWith => CopyWith$Fragment$YardFragment$paymentMethods$splitPayment(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$YardFragment$paymentMethods$splitPayment<
  TRes
> {
  factory CopyWith$Fragment$YardFragment$paymentMethods$splitPayment(
    Fragment$YardFragment$paymentMethods$splitPayment instance,
    TRes Function(Fragment$YardFragment$paymentMethods$splitPayment) then,
  ) = _CopyWithImpl$Fragment$YardFragment$paymentMethods$splitPayment;

  factory CopyWith$Fragment$YardFragment$paymentMethods$splitPayment.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$splitPayment;

  TRes call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$YardFragment$paymentMethods$splitPayment<TRes>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$splitPayment<TRes> {
  _CopyWithImpl$Fragment$YardFragment$paymentMethods$splitPayment(
    this._instance,
    this._then,
  );

  final Fragment$YardFragment$paymentMethods$splitPayment _instance;

  final TRes Function(Fragment$YardFragment$paymentMethods$splitPayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$YardFragment$paymentMethods$splitPayment(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$splitPayment<TRes>
    implements
        CopyWith$Fragment$YardFragment$paymentMethods$splitPayment<TRes> {
  _CopyWithStubImpl$Fragment$YardFragment$paymentMethods$splitPayment(
    this._res,
  );

  TRes _res;

  call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}
