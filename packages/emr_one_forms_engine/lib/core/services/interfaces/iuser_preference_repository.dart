import 'package:emr_one_forms_engine/core/models/api/asset_property.dart';
import 'package:emr_one_forms_engine/core/models/api/data_list_value.dart';

abstract class IUserPreferencesRepository {
  Future<List<AssetProperty>?> getAssetPropertiesDataList(String key);

  Future<List<DataListValue>?> getDataList(String key);

  Future<bool> saveAssetPropertiesDataList(
      String key, List<AssetProperty> assetPropertyList);

  Future<bool> saveDataList(String key, List<DataListValue> dropDownList);
}
