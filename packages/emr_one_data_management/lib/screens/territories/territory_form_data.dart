import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

// @EmrFormModel
class TerritoryFormData {
  TerritoryFormData({
    String? territoryCode, // Basic Territory.
    String? id,
    bool? active,
    String? name,
    String? defaultCompanyId,
    int? uomId,
    String? currencyCode,
    Company? defaultCompany,
    String? companyCode,
    EmrOneCoreUom? uom,
  }) {
    // Basic Territory.
    this.id = ValueNotifier(id);
    this.active = ValueNotifier(active ?? false);
    this.territoryCode = ValueNotifier(territoryCode);
    this.name = ValueNotifier(name);
    this.defaultCompanyId =
        ValueNotifier(defaultCompanyId?.stripCollectionName);
    this.uomId = ValueNotifier(uomId);
    this.currencyCode = ValueNotifier(currencyCode);
    this.companyCode = ValueNotifier(companyCode);
    this.defaultCompany = ValueNotifier(defaultCompany);
    this.uom = ValueNotifier(uom);
  }

  factory TerritoryFormData.fromTerritory(Territory territory) =>
      TerritoryFormData(
        // Basic Territory.
        id: territory.id,
        active: territory.active,
        territoryCode: territory.code,
        name: territory.name,
        defaultCompanyId: territory.defaultCompanyId,
        uomId: territory.uomId,
        currencyCode: territory.currencyCode,
        defaultCompany: territory.defaultCompany,
        companyCode: territory.defaultCompanyId,

        uom: territory.uomId != null
            ? EmrOneCoreUomConstants.lookup.firstWhere(
                (uom) =>
                    EmrOneCoreUomConstants.lookup.indexOf(uom) ==
                    territory.uomId,
                orElse: () => EmrOneCoreUomConstants.lookup.first, // Fallback
              )
            : null,
      );

  Territory toTerritory() => Territory(
        territoryCode.value ?? '',
        name.value ?? '',
        const [],
        defaultCompanyId: defaultCompany.value!.id,
        uomId: uom.value!.uomId,
        currencyCode: currencyCode.value ?? '',
        id: id.value ?? EmrOneDataManagementConstants.kEmptyGuid,
        active: active.value,
      );

  // Basic Territory.
  late final ValueNotifier<String?> id;

  late final ValueNotifier<bool> active;

  late final ValueNotifier<String?> territoryCode;

  late final ValueNotifier<String?> name;

  late final ValueNotifier<String?> defaultCompanyId;

  late final ValueNotifier<int?> uomId;

  late final ValueNotifier<String?> currencyCode;

  late final ValueNotifier<String?> companyCode;

  late final ValueNotifier<Company?> defaultCompany;

  late final ValueNotifier<EmrOneCoreUom?> uom;
}
