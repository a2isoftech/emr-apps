import 'dart:convert';

import 'package:collection/collection.dart';

class CompanyPreference {
  CompanyPreference({
    this.companyCode,
    this.isActive,
    this.preference,
    this.preferenceJson,
    this.preferenceAsJson,
  });

  CompanyPreference.fromJson(Map<String, dynamic> json) {
    companyCode = json['companyCode'] as String?;
    isActive = json['isActive'] as bool?;
    preference = json['preference'] == null
        ? null
        : Preference.fromJson(json['preferenceJson'] as Map<String, dynamic>);
    preferenceJson = json['preferenceJson'] as String?;
    preferenceAsJson = (preferenceJson?.isEmpty ?? true)
        ? null
        : jsonDecode(preferenceJson!) as Map<String, dynamic>;
  }

  String? companyCode;
  bool? isActive;
  Preference? preference;
  String? preferenceJson;
  Map<String, dynamic>? preferenceAsJson;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['companyCode'] = companyCode;
    data['isActive'] = isActive;
    data['preference'] = preference?.toJson();
    data['preferenceJson'] = preferenceJson;
    return data;
  }
}

class Preference {
  Preference({
    this.isD365Enabled,
    this.isMROEnabled,
    this.isLoggingEnabled,
    this.importWithAdhocTemplate,
    this.isDigitalSignForWorkOrdersEnabled,
    this.isScannerForAssetSearchEnabled,
    this.pageSize,
  });

  Preference.fromJson(Map<String, dynamic> json) {
    isD365Enabled = json['isD365Enabled'] as bool?;
    isMROEnabled = json['isMROEnabled'] as bool?;
    isLoggingEnabled = json['isLoggingEnabled'] as bool?;
    pageSize = json['pageSize'] as int?;
    importWithAdhocTemplate = json['importWithAdhocTemplate'] != null
        ? OverridableValues<bool>.fromJson(
            json['importWithAdhocTemplate'] as Map<String, dynamic>,
          )
        : null;
    isDigitalSignForWorkOrdersEnabled =
        json['isDigitalSignForWorkOrdersEnabled'] != null
            ? OverridableValues<bool>.fromJson(
                json['isDigitalSignForWorkOrdersEnabled']
                    as Map<String, dynamic>,
              )
            : null;
    isScannerForAssetSearchEnabled =
        json['isScannerForAssetSearchEnabled'] != null
            ? OverridableValues<bool>.fromJson(
                json['isScannerForAssetSearchEnabled'] as Map<String, dynamic>,
              )
            : null;
  }
  bool? isD365Enabled;
  bool? isMROEnabled;
  bool? isLoggingEnabled;
  OverridableValues<bool>? importWithAdhocTemplate;
  OverridableValues<bool>? isDigitalSignForWorkOrdersEnabled;
  OverridableValues<bool>? isScannerForAssetSearchEnabled;
  int? pageSize;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isD365Enabled'] = isD365Enabled;
    data['isMROEnabled'] = isMROEnabled;
    data['isLoggingEnabled'] = isLoggingEnabled;
    data['pageSize'] = pageSize;
    if (importWithAdhocTemplate != null) {
      data['importWithAdhocTemplate'] = importWithAdhocTemplate!.toJson();
    }
    if (isDigitalSignForWorkOrdersEnabled != null) {
      data['isDigitalSignForWorkOrdersEnabled'] =
          isDigitalSignForWorkOrdersEnabled!.toJson();
    }
    if (isScannerForAssetSearchEnabled != null) {
      data['isScannerForAssetSearchEnabled'] =
          isScannerForAssetSearchEnabled!.toJson();
    }
    return data;
  }
}

class OverridableValues<T> {
  OverridableValues({this.value, this.overrides});

  OverridableValues.fromJson(Map<String, dynamic> json) {
    value = json['value'] as T;
    if (json['overrides'] != null) {
      overrides = (json['overrides'] as List<Map<String, dynamic>>)
          .map(
            (e) => Map.fromEntries(
              [MapEntry(e['key'] as String, e['value'] as T)],
            ),
          )
          .toList();
    }
  }
  T? value;
  List<Map<String, T>>? overrides;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['value'] = value;
    data['overrides'] = overrides;
    return data;
  }

  T getValue(String yardCode) {
    final overridenValue = overrides
        ?.firstWhereOrNull((element) => element.keys.contains(yardCode));
    if (overridenValue != null) {
      return overridenValue[yardCode]!;
    }
    return value!;
  }
}
