import 'dart:convert';

import 'package:emr_one_eam/eam_asset_search/models/property_filter.dart';

class AssetSearchInput {
  AssetSearchInput({
    this.assetTemplate,
    this.category,
    this.territoryCode,
    this.depotFilter,
    this.statusFilter,
    this.assetTypeFilter,
    this.disposalFilter,
    this.assetCode,
    this.make,
    this.model,
    this.serialNo,
    this.assetName,
    this.freeText,
    this.propertyQueries,
    this.counters,
  });

  AssetSearchInput.fromJsonString(String json) {
    final obj = jsonDecode(json) as Map<String, dynamic>;
    assetTemplate = (obj['assetTemplate'] as List?)?.cast<String>();
    category = (obj['category'] as List?)?.cast<String>();
    territoryCode = (obj['territoryCode'] as List?)?.cast<String>();
    disposalFilter = obj['disposalFilter'] as String?;
    depotFilter = obj['depotFilter'] == null
        ? null
        : (obj['depotFilter'] as List?)?.cast<String>();
    statusFilter = obj['statusFilter'] == null
        ? null
        : (obj['statusFilter'] as List?)?.cast<String>();
    assetTypeFilter = obj['assetTypeFilter'] == null
        ? null
        : (obj['assetTypeFilter'] as List?)?.cast<String>();
    assetCode = (obj['assetCode'] as List?)?.cast<String>();
    make = (obj['make'] as List?)?.cast<String>();
    model = (obj['model'] as List?)?.cast<String>();
    serialNo = (obj['serialNo'] as List?)?.cast<String>();
    counters = (obj['counters'] as List?)?.cast<String>();
    assetName = (obj['assetName'] as List?)?.cast<String>();
    propertyQueries = (obj['propertyQueries'] as List<dynamic>?)
        ?.map((e) => AssetPropertyFilter.fromJson(e as Map<String, dynamic>))
        .toList();
    freeText = obj['freeText'] as String?;
  }

  AssetSearchInput.fromJson(Map<String, dynamic> json) {
    assetTemplate = (json['assetTemplate'] as List?)?.cast<String>();
    category = (json['category'] as List?)?.cast<String>();
    territoryCode = (json['territoryCode'] as List?)?.cast<String>();
    disposalFilter = json['disposalFilter'] as String?;
    depotFilter = json['depotFilter'] == null
        ? null
        : (json['depotFilter'] as List?)?.cast<String>();
    statusFilter = json['statusFilter'] == null
        ? null
        : (json['statusFilter'] as List?)?.cast<String>();
    assetTypeFilter = json['assetTypeFilter'] == null
        ? null
        : (json['assetTypeFilter'] as List?)?.cast<String>();
    assetCode = (json['assetCode'] as List?)?.cast<String>();
    make = (json['make'] as List?)?.cast<String>();
    model = (json['model'] as List?)?.cast<String>();
    serialNo = (json['serialNo'] as List?)?.cast<String>();
    counters = (json['counters'] as List?)?.cast<String>();
    assetName = (json['assetName'] as List?)?.cast<String>();
    propertyQueries = (json['propertyQueries'] as List<dynamic>?)
        ?.map((e) => AssetPropertyFilter.fromJson(e as Map<String, dynamic>))
        .toList();
    freeText = json['freeText'] as String?;
  }

  late List<String>? assetTemplate;
  late List<String>? category;
  late List<String>? territoryCode;
  late String? disposalFilter;
  late String? freeText;
  late List<String>? assetCode;
  late List<String>? make;
  late List<String>? model;
  late List<String>? serialNo;
  late List<String>? assetName;
  late List<String>? counters;
  late List<String>? depotFilter;
  late List<String>? statusFilter;
  late List<String>? assetTypeFilter;
  late List<AssetPropertyFilter>? propertyQueries;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['assetTemplate'] = assetTemplate;
    data['category'] = category;
    data['territoryCode'] = territoryCode;
    data['depotFilter'] = depotFilter;
    data['statusFilter'] = statusFilter;
    data['assetTypeFilter'] = assetTypeFilter;
    data['disposalFilter'] = disposalFilter;
    data['assetCode'] = assetCode;
    data['make'] = make;
    data['model'] = model;
    data['serialNo'] = serialNo;
    data['assetName'] = assetName;
    data['freeText'] = freeText;
    data['counters'] = counters;
    data['propertyQueries'] = propertyQueries?.map((e) => e.toJson()).toList();
    return data;
  }

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
