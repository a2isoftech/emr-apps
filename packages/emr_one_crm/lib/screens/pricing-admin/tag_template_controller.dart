import 'dart:collection';

import 'package:async/async.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/queries/get_guide_price_list_lines.graphql.dart';
import 'package:emr_one_crm/models/guide_price_lists/tag_template.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_data_source_group.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_query_search_filters.dart';
import 'package:emr_one_crm/services/gpl_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TagTemplateController extends EmrPagedDataSource<TagTemplates> {
  TagTemplateController({
    required this.queryLayoutController,
    required this.gplService,
  }) {
    gridController = EmrGroupedGridController<TagTemplates, GplDataSourceGroup>(
      data: visibleData,
      grouping: (e) => GplDataSourceGroup(
        e.tagCategory,
        e.tagTerritory,
      ),
      groupIsExpanded: (groupedGrid, groupIndex, groupItem) =>
          expandedGroups[groupItem.partyAccountNo]!,
    );
  }

  late EmrGroupedGridController<TagTemplates, GplDataSourceGroup>
      gridController;
  late final GplService gplService;
  final EmrQueryLayoutController<TagTemplates> queryLayoutController;
  final selectedRows = ValueNotifier<HashSet<TagTemplates>>(
    HashSet<TagTemplates>.identity(),
  );

  final ValueNotifier<bool> searchReady = ValueNotifier(false);
  final ValueNotifier<bool> partiesSelected = ValueNotifier(false);
  final ValueNotifier<bool> linesSelected = ValueNotifier(false);
  final ValueNotifier<bool> showTagIcon = ValueNotifier(false);
  String? afterCursor;
  String searchString = '';
  ValueNotifier<TagTemplates> tagTemplate = ValueNotifier(
    TagTemplates(id: '', tagCategory: '', tagReason: '', tagTerritory: ''),
  );

  bool noFilters = true;
  bool emptyResults = false;

  GplQuerySearchFilters gplQuerySearchFilters =
      const GplQuerySearchFilters.empty();

  /// Keep track of which groups are expanded.
  Map<String, bool> expandedGroups = <String, bool>{};

  /// Determine whether all groups are expanded.
  bool get allGroupsExpanded => !expandedGroups.containsValue(false);

  void dispose() {
    gridController.dispose();
  }

  CancelableOperation<
          GraphQLResponse<Query$GetGuidePriceDetails$priceList$nodes>>?
      _getGPLDataFuture;

  Future<void> setSearchString(String newSearchString) async {
    if (newSearchString != searchString) {
      searchString = newSearchString.toLowerCase();
    }
    await loadPage(currentPageNumber);
  }

  Future<void> clearCurrentSearch() async {
    searchReady.value = false;
    emptyResults = false;
    await _getGPLDataFuture?.cancel();
    loading.value = true;
    clearData();
    selectedRows.value.clear();
    loading.value = false;

    gplQuerySearchFilters = const GplQuerySearchFilters.empty();
    noFilters = true;
  }

  Future<void> loadNextPage() async {
    loadedData.addAll([]);
  }

  void collapseAllGroups() {
    for (final key in expandedGroups.keys) {
      expandedGroups[key] = false;
    }
  }

  void expandAllGroups() {
    for (final key in expandedGroups.keys) {
      expandedGroups[key] = true;
    }
  }

  bool matchesSearch(TagTemplates entry) {
    if (searchString.isEmpty) {
      return true;
    }

    if (entry.tagCategory.toLowerCase().contains(searchString) ||
        entry.tagReason.toLowerCase().contains(searchString)) {
      return true;
    }

    return false;
  }

  void addSelectedRow(TagTemplates rowItem) {
    selectedRows.value.add(rowItem);
    if (selectedRows.value.isNotEmpty) {
      linesSelected.value = true;
    }
  }

  void removeSelectedRow(TagTemplates rowItem) {
    selectedRows.value.remove(rowItem);
    if (selectedRows.value.isEmpty) {
      linesSelected.value = false;
    }
  }

  @override
  Future<void> moveToEnd() async {
    await loadPage((recordCount / pageSize).ceil());
  }

  @override
  Future<void> moveToNext() async {
    await loadPage(currentPageNumber + 1);
  }

  @override
  Future<void> moveToPrevious() async {
    await loadPage(currentPageNumber - 1);
  }

  @override
  Future<void> moveToStart() async {
    await loadPage(1);
  }

  @override
  Future<void> pageSizeChange(int newPageSize) async {
    pageSize = newPageSize;
    await loadPage(1);
  }

  Future<void> loadPage(int pageNumber) async {
    clearEvents();
    loading.value = true;

    final newPageOfData = await loadPageOfData(pageNumber);

    for (final item in newPageOfData.map((e) => e.tagReason).toSet()) {
      if (!expandedGroups.keys.contains(item)) {
        expandedGroups[item] = true;
      }
    }

    visibleData.value = newPageOfData;

    resetEvents();
    loading.value = false;
  }

  Future<List<TagTemplates>> loadPageOfData(int pageNumber) async {
    final firstRowOfPage = ((pageNumber - 1) * pageSize) + 1;
    final lastRowOfPage = pageNumber * pageSize;

    if (lastRowOfPage <= loadedData.length) {
      currentPageNumber = pageNumber;
      return loadedData
          .skip((pageNumber - 1) * pageSize)
          .take(pageSize)
          .where(matchesSearch)
          .toList();
    }

    //Might need to load some extra data to display the requested page.
    var stillLoading = afterCursor != null;

    while (stillLoading) {
      await loadNextPage();

      stillLoading = (afterCursor != null) &&
          ((pageNumber * pageSize) > loadedData.length);
    }

    //loadNextPage above can potentially reduce the count of rows (as the tag
    //filter is applied to data from the gateway)

    //Check if the requested page number is still valid to request
    if (firstRowOfPage > loadedData.length) {
      //Page beyond data available requested, provide the last page instead
      final lastPageNumber = (loadedData.length / pageSize).ceil();
      currentPageNumber = lastPageNumber;
    } else {
      currentPageNumber = pageNumber;
    }

    return loadedData
        .skip((currentPageNumber - 1) * pageSize)
        .take(pageSize)
        .where(matchesSearch)
        .toList();
  }

  String get tagCategory => tagTemplate.value.tagCategory;
  set tagCategory(String category) {
    tagTemplate.value.tagCategory = category;
  }

  String get tagReason => tagTemplate.value.tagReason;
  set tagReason(String reason) {
    tagTemplate.value.tagReason = reason;
  }

  Future<void> saveTagTemplates() async {
    await gplService.addTagTemplates(tagTemplate.value);
    await queryLayoutController.dataSource.refresh();
  }

  Future<void> updateTagTemplates(TagTemplates tagTemplate) async {
    await gplService.updateTagTemplates(tagTemplate);
    await queryLayoutController.dataSource.refresh();
  }
}
