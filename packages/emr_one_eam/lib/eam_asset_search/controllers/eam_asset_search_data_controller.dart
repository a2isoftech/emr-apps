import 'package:emr_one_eam/asset_template/models/asset_template_suggestion.dart';
import 'package:emr_one_eam/asset_template/services/asset_template_service.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/eam_asset_search/controllers/eam_asset_search_filter_controller.dart';
import 'package:emr_one_eam/eam_asset_search/models/favourite_search_parameters.dart';
import 'package:emr_one_eam/eam_asset_search/models/property_filter.dart';
import 'package:emr_one_eam/eam_asset_search/service/eam_asset_search_service.dart';
import 'package:emr_one_eam/eam_asset_search/views/eam_asset_search_data_source.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/models/asset_template.dart';
import 'package:emr_one_eam/models/list_value.dart';
import 'package:flutter/material.dart';

class EamAssetSearchDataController {
  EamAssetSearchDataController({
    required this.service,
    required this.templateService,
    required this.searchDataSource,
  });

  final EamAssetSearchService service;
  final IAssetTemplateService templateService;
  late List<ListValue> allDepos;
  late List<ListValue> allAssetTypes;
  late List<ListValue> allStatuses;
  late List<ListValue> categories;
  late List<String> assetTemplateNames;
  late List<String> territoryCodes;
  late List<String> assetNames;
  AssetTemplateProperty? selectedTemplateProperty;
  ValueNotifier<List<AssetTemplateProperty>> assetTemplateProperties =
      ValueNotifier([]);
  ValueNotifier<bool> isPropertyFilterValuesReady = ValueNotifier(false);
  ValueNotifier<List<String>?> operators = ValueNotifier([]);
  ValueNotifier<List<String>?> propertyValues = ValueNotifier([]);
  AssetPropertyFilter? selectedAssetProperty;
  ValueNotifier<List<AssetPropertyFilter>> selectedFilters = ValueNotifier([]);
  EamAssetSearchDataSource searchDataSource;

  Future<void> getFilterValues() async {
    allDepos = await service.getListValues('List.Depots');
    allAssetTypes = await service.getListValues('List.AssetTypes');
    allStatuses = await service.getListValues('List.Statuses');
    categories = await service.getListValues('List.TemplateCategories');
    territoryCodes = await service.getTerritoryCodes();
    await getPropertyFilterValues();
    await getFavouriteSearchParameters();
  }

  Future<void> getPropertyFilterValues() async {
    assetTemplateProperties.value = await service.getAllTemplateProperties();
    isPropertyFilterValuesReady.value = true;
  }

  void addPropertyFilter(AssetPropertyFilter filter) {
    if (!selectedFilters.value.contains(filter)) {
      selectedFilters.value.add(filter);
    }
  }

  Future<List<AssetTemplateProperty>> getPropertyFilterSuggestion(
    String searchText,
  ) async {
    if (assetTemplateProperties.value.isEmpty) return List.empty();
    return assetTemplateProperties.value
        .where(
          (element) =>
              element.name!.toLowerCase().contains(searchText.toLowerCase()),
        )
        .toList();
  }

  void setOperators() {
    if (selectedTemplateProperty != null &&
        selectedTemplateProperty!.dataType != null &&
        (selectedTemplateProperty!.dataType == DataType.numeric ||
            selectedTemplateProperty!.dataType == DataType.date ||
            selectedTemplateProperty!.dataType == DataType.dateTime)) {
      operators.value = ['=', '!=', '<', '>', '<=', '>='];
    } else {
      operators.value = ['='];
    }
  }

  Future<void> getPropertyValues() async {
    if (selectedTemplateProperty != null &&
        selectedTemplateProperty!.dataType != null) {
      propertyValues.value = [];
      if (selectedTemplateProperty!.dataType!.toLowerCase().contains('list')) {
        List<String>? parameterList = <String>[];
        String? parameter;
        if (selectedTemplateProperty!.dataType == 'List.UserCompanies') {
          parameterList = searchDataSource.getStringFilterList(
            EamAssetSearchFilterController.kTerritoryCode,
          );
          parameter = parameterList?.join(',');
        }

        final list = await service.getListValues(
          selectedTemplateProperty!.dataType!,
          parameter: parameter,
        );
        if (list.isNotEmpty) {
          propertyValues.value = list.map((e) => e.value!).toList();
        }
      } else if (selectedTemplateProperty!.dataType == DataType.yesNo) {
        propertyValues.value = ['Yes', 'No'];
      } else {
        propertyValues.value = null;
      }
    }
  }

  Future<List<String>> getSuggestion(
    String searchText,
    String key,
  ) async {
    if (searchText.length >= 3) {
      if (key == EAMSearch.assetTemplates) {
        final suggestions = await getAssetTemplateNames(searchText);
        return suggestions.map((e) => e.name!).toList();
      } else {
        final propertyType = getPropertyType(key);
        final suggestions =
            await service.getSuggestions(searchText, propertyType);
        return suggestions
            .where((e) => e != null && e.isNotEmpty)
            .map((e) => e!)
            .toList();
      }
    }
    return [];
  }

  Enum$SearchPropertyType getPropertyType(String key) {
    switch (key) {
      case AssetSearch.assetCode:
        return Enum$SearchPropertyType.ASSET_CODE;
      case AssetSearch.friendlyName:
        return Enum$SearchPropertyType.ASSET_NAME;
      case AssetSearch.make:
        return Enum$SearchPropertyType.MAKE;
      case AssetSearch.model:
        return Enum$SearchPropertyType.MODEL;
      case AssetSearch.serialNumber:
        return Enum$SearchPropertyType.SERIAL_NO;
      case AssetSearch.status:
        return Enum$SearchPropertyType.STATUS;
      case AssetSearch.counter:
        return Enum$SearchPropertyType.COUNTER;
    }

    return Enum$SearchPropertyType.ASSET_NAME;
  }

  Future<List<FavouriteSearchParameters>> getFavouriteSearchParameters() async {
    return service.getFavouriteSearchParameters();
  }

  Future<void> deleteSearchParameter(String name) async {
    await service.deleteSearchParameter(name);
  }

  Future<void> saveSearchParameter({
    String name = '',
    String searchParameters = '',
    String? existingName,
  }) async {
    await service.saveSearchParameter(
      name: name,
      searchParameters: searchParameters,
      existingName: existingName,
    );
  }

  Future<List<AssetTemplateSuggestion>> getAssetTemplateNames(
    String searchText,
  ) async {
    return templateService.getAssetTemplateSuggestion(searchText: searchText);
  }
}
