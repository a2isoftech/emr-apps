import 'package:emr_one_core/widgets/grid/emr_grid_controller.dart';
import 'package:emr_one_eam/asset_template/models/asset_template_suggestion.dart';
import 'package:emr_one_eam/asset_template/services/asset_template_service.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/common/common.dart';
import 'package:emr_one_eam/graphql/queries/asset_template.graphql.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/lists/list_search/list_search.dart';
import 'package:emr_one_eam/models/list_search_result.dart';
import 'package:emr_one_eam/models/models.dart';
import 'package:emr_one_eam/widgets/page_control_events.dart';
import 'package:flutter/material.dart';

abstract class IAssetTemplateController
    extends BaseController<IAssetTemplateService> {
  IAssetTemplateController({required super.service});
  ValueNotifier<bool> get isBusy;
  TextEditingController get freeTextController;
  ValueNotifier<List<AssetTemplate>> get assetTemplates;
  PageControlEvents get pageControlEvents;
  EmrGridController<AssetTemplate> get gridController;
  List<ListValue> get assetTemplateCategories;
  Future<void> search();
  ValueNotifier<AssetTemplateProperty?> get selectedProperty;
  ValueNotifier<AssetTemplateCounter?> get selectedCounter;
  ValueNotifier<Map<String, String>?> get selectedOtherProperty;
  List<AssetTemplateProperty> get originalProperties;
  List<AssetTemplateCounter> get originalCounters;
  ValueNotifier<AssetTemplate?> get selectedAssetTemplate;
  ValueNotifier<AssetTemplateShowType> get showType;
  ValueNotifier<bool> get isSaveEnabled;
  ValueNotifier<bool> get isD365Sync;
  ValueNotifier<bool> get isTrade2Sync;
  ValueNotifier<AssetTemplateShowType?> get isPropertyEdit;
  ValueNotifier<bool> get isListType;
  void setSelectedTemplate(
    Query$GetPaginatedAssetTemplates$assetTemplates$nodes? selectedValue,
  );
  void changeTemplateName(String? changedText);
  Future<bool> updateAssetTemplate();
  void setShowType(AssetTemplateShowType type);
  void setSelectedProperty(AssetTemplateProperty selectedProperty);
  void setSelectedCounter(AssetTemplateCounter selectedCounter);
  void setSelectedOtherProperty(Map<String, String> value);
  void togglePropertyEditPanel(AssetTemplateShowType value);
  bool isCounterModified(AssetTemplateCounter counter);
  bool isPropertyModified(AssetTemplateProperty property);
  List<String> modifiedProperties();
  Future<List<String>> getEamListsOnSuggestion(String suggestion);
  Future<void> getAssetTemplateCategories();
  Future<AssetTemplate?> getTemplateById(String id);
  void reset();

  Future<List<AssetTemplateSuggestion>> getTemplateSuggestion(String pattern);
}

class AssetTemplateController extends IAssetTemplateController {
  AssetTemplateController({required super.service, required this.listService});

  IListService listService;
  final _freeTextController = TextEditingController();
  final ValueNotifier<bool> _isBusy = ValueNotifier(false);
  final ValueNotifier<AssetTemplateShowType> _showType =
      ValueNotifier(AssetTemplateShowType.attributes);
  final ValueNotifier<bool> _isSaveEnabled = ValueNotifier(false);
  final ValueNotifier<bool> _isD365Sync = ValueNotifier(false);
  final ValueNotifier<bool> _isTrade2Sync = ValueNotifier(false);
  final ValueNotifier<AssetTemplateShowType?> _isPropertyEdit =
      ValueNotifier(null);
  final ValueNotifier<AssetTemplateProperty?> _selectedProperty =
      ValueNotifier(null);
  final ValueNotifier<Map<String, String>?> _selectedOtherProperty =
      ValueNotifier(null);

  final ValueNotifier<AssetTemplateCounter?> _selectedCounter =
      ValueNotifier(null);
  List<AssetTemplateProperty> _originalProperties = [];
  List<AssetTemplateCounter> _originalCounters = [];
  final ValueNotifier<bool> _isListType = ValueNotifier(false);

  final ValueNotifier<AssetTemplate?> _selectedAssetTemplate =
      ValueNotifier(null);
  final ValueNotifier<List<AssetTemplate>> _assetTemplates = ValueNotifier([]);
  final ValueNotifier<List<AssetTemplate>> _filteredTemplates =
      ValueNotifier([]);
  late final EmrGridController<AssetTemplate> _gridController =
      EmrGridController<AssetTemplate>(data: _filteredTemplates);

  late final PageControlEvents _pageControlEvents =
      PageControlEvents(onPageChanged: _onPageChanged);

  List<ListValue> _assetTemplateCategories = [];
  @override
  ValueNotifier<List<AssetTemplate>> get assetTemplates => _assetTemplates;

  @override
  TextEditingController get freeTextController => _freeTextController;

  @override
  EmrGridController<AssetTemplate> get gridController => _gridController;

  @override
  ValueNotifier<bool> get isBusy => _isBusy;

  @override
  PageControlEvents get pageControlEvents => _pageControlEvents;

  @override
  Future<void> search() async {
    _pageControlEvents.reset();
    await _getAssetTemplates(
      first: pageControlEvents.pageSize,
      search: freeTextController.text,
    );
  }

  Future<void> _onPageChanged({
    String? after,
    String? before,
    int? first,
    int? last,
  }) {
    return _getAssetTemplates(
      after: after,
      before: before,
      first: first,
      last: last,
      search: freeTextController.text,
    );
  }

  Future<void> _getAssetTemplates({
    String? after,
    String? before,
    int? first,
    int? last,
    String? search,
  }) async {
    try {
      _isBusy.value = true;

      final results = await service.getAssetTemplates(
        after: after,
        before: before,
        first: first,
        last: last,
        where: (search == null || search == '')
            ? null
            : Input$AssetTemplateFilterInput(
                or: [
                  Input$AssetTemplateFilterInput(
                    name: Input$StringOperationFilterInput(eq: search),
                  ),
                  Input$AssetTemplateFilterInput(
                    codeFormat:
                        Input$StringOperationFilterInput(contains: search),
                  ),
                ],
              ),
      );
      _pageControlEvents.update(
        results.pageInfo.startCursor,
        results.pageInfo.endCursor,
        results.totalCount,
      );
      _assetTemplates.value = _filteredTemplates.value = results.results;
    } finally {
      _isBusy.value = false;
    }
  }

  @override
  void reset() {
    selectedAssetTemplate.value = null;
    selectedProperty.value = null;
    isPropertyEdit.value = null;
    isSaveEnabled.value = false;
    _assetTemplates.value = [];
    _filteredTemplates.value = [];
    freeTextController.text = '';
    showType.value = AssetTemplateShowType.attributes;
  }

  @override
  ValueNotifier<AssetTemplate?> get selectedAssetTemplate =>
      _selectedAssetTemplate;

  @override
  void setSelectedTemplate(
    Query$GetPaginatedAssetTemplates$assetTemplates$nodes? selectedValue,
  ) {
    if (selectedValue == null) {
      _selectedAssetTemplate.value = null;
      _filteredTemplates.value = _assetTemplates.value;
      selectedCounter.value = null;
      selectedProperty.value = null;
      showType.value = AssetTemplateShowType.attributes;
      return;
    }

    _selectedAssetTemplate.value = AssetTemplate(
      id: selectedValue.id,
      name: selectedValue.name,
      codeFormat: selectedValue.codeFormat,
      category: selectedValue.category,
      hierarchy: selectedValue.hierarchy,
      location: selectedValue.location,
      notifyChanges: selectedValue.notifyChanges,
      parentAssetRequired: selectedValue.parentAssetRequired,
      permittedHours: selectedValue.permittedHours,
      reviewAttributes:
          selectedValue.reviewAttributes?.map((e) => e ?? '').toList(),
      shiftHours: selectedValue.shiftHours,
      syncAssetToCMMS: selectedValue.syncAssetToCMMS,
      syncProjectToCMMS: selectedValue.syncProjectToCMMS,
      syncResouceToCMMS: selectedValue.syncResouceToCMMS,
      telematics: selectedValue.telematics,
      syncTargets: selectedValue.syncTargets
          ?.map(
            (e) => AssetTemplateSyncTarget(
              name: e?.name,
            ),
          )
          .toList(),
      assetTemplateCounters: selectedValue.assetTemplateCounters
          ?.map(
            (e) => AssetTemplateCounter(
              id: e?.id,
              dataType: e?.dataType,
              groupId: e?.groupId,
              incrementType: e?.incrementType,
              key: e?.key,
              name: e?.name,
              active: e?.active,
            ),
          )
          .toList(),
      templateProperties: selectedValue.templateProperties
          ?.map(
            (e) => AssetTemplateProperty(
              name: e?.name,
              id: e?.id,
              dataType: e?.dataType,
              sequence: e?.sequence,
              isMandatory: e?.isMandatory,
              updaterGroupIds: e?.updaterGroupIds,
              viewerGroupIds: e?.viewerGroupIds,
            ),
          )
          .toList(),
    );
    _isPropertyEdit.value = null;

    if (_selectedAssetTemplate.value!.templateProperties != null) {
      _originalProperties = _selectedAssetTemplate.value!.templateProperties!
          .map((e) => AssetTemplateProperty.fromJson(e.toJson()))
          .toList();
    }

    if (_selectedAssetTemplate.value!.assetTemplateCounters != null) {
      _originalCounters = _selectedAssetTemplate.value!.assetTemplateCounters!
          .map((e) => AssetTemplateCounter.fromJson(e.toJson()))
          .toList();
    }
    _filteredTemplates.value = [_selectedAssetTemplate.value!];
  }

  @override
  void changeTemplateName(String? changedText) {
    if (changedText == null || changedText == '') {
      _isSaveEnabled.value = false;
      return;
    }
    selectedAssetTemplate.value?.name = changedText;
    _isSaveEnabled.value = true;
  }

  @override
  Future<bool> updateAssetTemplate() async {
    final result = await service.updateAssetTemplate(
      updateInput: selectedAssetTemplate.value,
    );
    if (result != null) {
      await search();
      return true;
    }
    return false;
  }

  @override
  ValueNotifier<AssetTemplateShowType> get showType => _showType;

  @override
  void setShowType(AssetTemplateShowType type) {
    _showType.value = type;
  }

  @override
  ValueNotifier<bool> get isSaveEnabled => _isSaveEnabled;

  @override
  ValueNotifier<bool> get isD365Sync => _isD365Sync;

  @override
  ValueNotifier<bool> get isTrade2Sync => _isTrade2Sync;

  @override
  ValueNotifier<AssetTemplateShowType?> get isPropertyEdit => _isPropertyEdit;

  @override
  ValueNotifier<AssetTemplateProperty?> get selectedProperty =>
      _selectedProperty;

  @override
  ValueNotifier<bool> get isListType => _isListType;

  @override
  List<AssetTemplateProperty> get originalProperties => _originalProperties;

  @override
  void setSelectedProperty(AssetTemplateProperty selectedProperty) {
    _selectedProperty.value = selectedProperty;
    _selectedCounter.value = null;
  }

  @override
  Future<List<String>> getEamListsOnSuggestion(String suggestion) async {
    PaginatedResponse<ListSearchResult> eamLists;
    if (selectedProperty.value != null &&
        selectedProperty.value!.name == 'Asset Type') {
      eamLists = await listService.getLists(
        where: Input$AssetManagementListSearchResultFilterInput(
          active: Input$BooleanOperationFilterInput(eq: true),
          listName: Input$StringOperationFilterInput(
            startsWith: 'AssetTypes',
            contains: suggestion,
          ),
        ),
      );
    } else {
      eamLists = await listService.getLists(
        where: Input$AssetManagementListSearchResultFilterInput(
          active: Input$BooleanOperationFilterInput(eq: true),
          listName: Input$StringOperationFilterInput(
            // startsWith: 'AssetTypes',
            contains: suggestion,
          ),
        ),
      );
    }

    return eamLists.results.map((e) => e.listName!).toList();
  }

  @override
  ValueNotifier<AssetTemplateCounter?> get selectedCounter => _selectedCounter;

  @override
  void setSelectedCounter(AssetTemplateCounter selectedCounter) {
    _selectedCounter.value = selectedCounter;
    _selectedProperty.value = null;
  }

  @override
  void setSelectedOtherProperty(Map<String, String> value) {
    _selectedOtherProperty.value = value;
  }

  @override
  void togglePropertyEditPanel(AssetTemplateShowType value) {
    _isPropertyEdit.value = value;
  }

  @override
  List<AssetTemplateCounter> get originalCounters => _originalCounters;

  @override
  bool isCounterModified(AssetTemplateCounter counter) {
    final originalCounter = _originalCounters
        .where((element) => element.id == counter.id)
        .firstOrNull;
    if (originalCounter != null) {
      if (originalCounter.name != counter.name ||
          originalCounter.incrementType != counter.incrementType ||
          originalCounter.active != counter.active ||
          originalCounter.dataType != counter.dataType) {
        return true;
      }
    }
    return false;
  }

  @override
  bool isPropertyModified(AssetTemplateProperty property) {
    final originalProperty = _originalProperties
        .where((element) => element.id == property.id)
        .firstOrNull;
    if (originalProperty != null) {
      if (originalProperty.name != property.name ||
          originalProperty.dataType != property.dataType ||
          originalProperty.isMandatory != property.isMandatory) {
        return true;
      }
    }
    return false;
  }

  @override
  List<String> modifiedProperties() {
    final modifiedAttributes = <String>[];
    if (selectedAssetTemplate.value!.templateProperties != null) {
      for (final prop in selectedAssetTemplate.value!.templateProperties!) {
        if (isPropertyModified(prop)) {
          modifiedAttributes.add(prop.name ?? 'Property');
        }
      }
    }
    if (selectedAssetTemplate.value!.assetTemplateCounters != null) {
      for (final prop in selectedAssetTemplate.value!.assetTemplateCounters!) {
        if (isCounterModified(prop)) {
          modifiedAttributes.add(prop.name ?? 'Counter');
        }
      }
    }
    return modifiedAttributes;
  }

  @override
  Future<List<AssetTemplateSuggestion>> getTemplateSuggestion(
    String pattern,
  ) async {
    return service.getAssetTemplateSuggestion(searchText: pattern);
  }

  @override
  List<ListValue> get assetTemplateCategories => _assetTemplateCategories;

  @override
  Future<void> getAssetTemplateCategories() async {
    _assetTemplateCategories =
        await listService.getListValues(listName: 'List.TemplateCategories');
  }

  @override
  Future<AssetTemplate?> getTemplateById(String id) async {
    return service.getAssetTemplateById(id);
  }

  @override
  ValueNotifier<Map<String, String>?> get selectedOtherProperty =>
      _selectedOtherProperty;
}
