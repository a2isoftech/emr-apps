import 'dart:convert';

import 'package:emr_one_forms_engine/core/models/api/asset_property.dart';
import 'package:emr_one_forms_engine/core/models/api/data_list_value.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/iuser_preference_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferencesRepository implements IUserPreferencesRepository {
  late SharedPreferences _preferences;

  Future init() async => _preferences = await SharedPreferences.getInstance();

  @override
  Future<List<AssetProperty>?> getAssetPropertiesDataList(String key) async {
    _preferences = await SharedPreferences.getInstance();
    List<AssetProperty> savedAssetPropertyDataList = [];
    String? jsonDataList = _preferences.getString(key);
    if (jsonDataList == null) return null;
    var data = jsonDecode(jsonDataList) as List;
    for (var i = 0; i < (data.length); i++) {
      savedAssetPropertyDataList
          .add(AssetProperty.fromJson(Map<String, dynamic>.from((data[i]))));
    }
    return savedAssetPropertyDataList;
  }

  @override
  Future<List<DataListValue>?> getDataList(String key) async {
    _preferences = await SharedPreferences.getInstance();
    List<DataListValue> savedDataList = [];
    String? jsonDataList = _preferences.getString(key);
    if (jsonDataList == null) return null;
    var data = jsonDecode(jsonDataList) as List;
    for (var i = 0; i < (data.length); i++) {
      savedDataList
          .add(DataListValue.fromJson(Map<String, dynamic>.from((data[i]))));
    }
    return savedDataList;
  }

  @override
  Future<bool> saveAssetPropertiesDataList(
      String key, List<AssetProperty> assetPropertyList) async {
    _preferences = await SharedPreferences.getInstance();
    bool saved = await _preferences.setString(
        key, jsonEncode(assetPropertyList.toList()));
    return saved;
  }

  @override
  Future<bool> saveDataList(
      String key, List<DataListValue> dropDownList) async {
    _preferences = await SharedPreferences.getInstance();
    bool saved =
        await _preferences.setString(key, jsonEncode(dropDownList.toList()));
    return saved;
  }
}
