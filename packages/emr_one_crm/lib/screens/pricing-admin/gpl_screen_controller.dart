import 'dart:collection';

import 'package:async/async.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/mutations/add_tags.graphql.dart';
import 'package:emr_one_crm/graphql/trader/mutations/update_tags.graphql.dart';
import 'package:emr_one_crm/graphql/trader/queries/get_guide_price_list_lines.graphql.dart';
import 'package:emr_one_crm/graphql/trader/queries/tagging/get_active_tag_templates.graphql.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/models/guide_price_lists/guide_price_list_line.dart';
import 'package:emr_one_crm/models/guide_price_lists/tags_mappers.dart';
import 'package:emr_one_crm/models/tagging/adjust_tag.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_filter_controller.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_query_search_filters.dart';
import 'package:emr_one_crm/services/gpl_service.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:flutter/material.dart';

class GplScreenController {
  GplScreenController(
    this.filterController,
    this.gplService,
    this.gridController,
    this.queryLayoutController,
  ) {
    filterController.filters.addListener(filterschanged);
  }

  final GplFilterController filterController;
  final EmrGridController<GuidePriceListLine> gridController;
  late final GplService gplService;
  final EmrQueryLayoutController<GuidePriceListLine> queryLayoutController;
  final selectedParties = HashSet<String>.identity();

  final ValueNotifier<bool> searchReady = ValueNotifier(false);
  final ValueNotifier<bool> partiesSelected = ValueNotifier(false);
  final ValueNotifier<bool> linesSelected = ValueNotifier(false);
  final ValueNotifier<bool> showTagIcon = ValueNotifier(false);
  String? afterCursor;
  String searchString = '';
  AdjustTag? adjustTag = AdjustTag('', ValueUomPair(), null, null);
  bool noFilters = true;

  GplQuerySearchFilters gplQuerySearchFilters =
      const GplQuerySearchFilters.empty();

  /// Keep track of which groups are expanded.
  Map<String, bool> expandedGroups = <String, bool>{};

  /// Determine whether all groups are expanded.
  bool get allGroupsExpanded => !expandedGroups.containsValue(false);

  void dispose() {
    filterController.filters.removeListener(filterschanged);
  }

  CancelableOperation<GraphQLResponse<Query$GetGuidePriceDetails>>?
      _getGPLDataFuture;
  CancelableOperation<GraphQLResponse<Query$GetTagNames>>? _getTagNamesFuture;
  CancelableOperation<GraphQLResponse<Mutation$AddTags>>? _addTagsFuture;
  CancelableOperation<GraphQLResponse<Mutation$UpdateTags>>? _updateTagsFuture;

  Future<void> clearCurrentSearch() async {
    searchReady.value = false;
    await _getGPLDataFuture?.cancel();

    gplQuerySearchFilters = const GplQuerySearchFilters.empty();
    noFilters = true;
  }

  Future<void> filterschanged() async {
    final newFilters = await getCurrentFilters();
    if (newFilters == null) {
      await clearCurrentSearch();
      return;
    }

    noFilters = false;
    searchReady.value = true;
  }

  int getDefaultUom() {
    return gplService.getDefaultUom();
  }

  Future<List<String>> getTagNames() async {
    _getTagNamesFuture = CancelableOperation.fromFuture(
      gplService.getTagNames()!,
      onCancel: GraphQLResponse.new,
    );

    final result = await _getTagNamesFuture?.value;

    if (result == null ||
        result.hasErrors() ||
        result.data?.tagTemplates == null) {
      return [];
    }
    final pageData = result.data!.tagTemplates!.nodes!
        .map(TagTemplateMappers.tagMapper)
        .toList();
    return pageData.map((data) => data.tagReason).toList();
  }

  Future<GplQuerySearchFilters?> getCurrentFilters() async {
    var managedBuyerId = filterController
        .tryGetFilter<String>(key: GplFilterController.kManagedBuyerKey)
        ?.value;

    final partyAccountNos = filterController
        .tryGetFilter<List<String>>(key: GplFilterController.kPartyAccountNoKey)
        ?.value;

    // Buyer or party is required.
    if (managedBuyerId == null && (partyAccountNos?.isEmpty ?? true)) {
      return null;
    }
    // Grade Type is required
    final gradeTypes = filterController
        .tryGetFilter<List<String>>(key: GplFilterController.kGradeTypeKey)
        ?.value;
    // if (gradeTypes?.isEmpty ?? true) {
    //   return null;
    // }
    var gradeCodes = filterController
            .tryGetFilter<List<String>>(key: GplFilterController.kGradeCodeKey)
            ?.value ??
        [];

    final yardCode = filterController
        .tryGetFilter<List<String>>(key: GplFilterController.kYardCode)
        ?.value;

    final tag = filterController
        .tryGetFilter<List<String>>(key: GplFilterController.kTagsKey)
        ?.value;
    final publicationId = filterController
        .tryGetFilter<int>(key: GplFilterController.kPublicationIdKey)
        ?.value;
    final expirationDate = filterController
        .tryGetFilter<DateTime>(key: GplFilterController.kExpiration)
        ?.value;

    // Now we potentially have 2 different filters on Grades, and we need to
    // compile a list of relevant codes.
    //Type is forced, so can be ignored
    if (gradeCodes.isEmpty) {
      final allGrades =
          await filterController.gplService.getGrades(gradeTypes, '');

      gradeCodes = allGrades.map((g) => g.gradeCode).toSet().toList();
    }

    if (partyAccountNos?.isNotEmpty ?? false) {
      managedBuyerId = null;
    }

    return GplQuerySearchFilters(
      managedBuyerId: managedBuyerId,
      publicationId: publicationId,
      partyAccountNos: partyAccountNos,
      gradeCodes: gradeCodes,
      yardCode: yardCode,
      tag: tag,
      expirationDate: expirationDate,
      gradeTypes: gradeTypes,
    );
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

  bool matchesSearch(GuidePriceListLine entry) {
    if (searchString.isEmpty) {
      return true;
    }

    if (entry.accountNo.toLowerCase().contains(searchString) ||
        entry.accountNo.toLowerCase().contains(searchString)) {
      return true;
    }

    return false;
  }

  void addSelectedParty(String partyAccountNo) {
    selectedParties.add(partyAccountNo);
    if (selectedParties.isNotEmpty) {
      partiesSelected.value = true;
    }
  }

  void removeSelectedParty(String partyAccountNo) {
    selectedParties.remove(partyAccountNo);
    if (selectedParties.isEmpty) {
      partiesSelected.value = false;
    }
  }

  Future<String?> saveTags({
    required String tagId,
    required Input$PriceListIdGradesInput priceListInput,
  }) async {
    //if pricelistId is not empty it means it is a copy tag request
    final isCopy = priceListInput.priceListId != '';
    if (isCopy) {
      final errorMsg = await updateTags(
        tagId: tagId,
        priceListId: priceListInput.priceListId,
        endDate: DateTime.now().add(const Duration(days: -1)),
        productCode: priceListInput.gradeCode,
      );

      if (errorMsg != null) {
        return errorMsg;
      }
    }
    final priceListIds = isCopy
        ? [priceListInput]
        : gridController.selectedRows.value
            .map(
              (item) => Input$PriceListIdGradesInput(
                priceListId: item.id,
                gradeCode: item.listItems.productCode,
              ),
            )
            .toList();

    _addTagsFuture = CancelableOperation.fromFuture(
      gplService.addTags(
        adjustTag!,
        priceListIds,
      )!,
      onCancel: GraphQLResponse.new,
    );
    final result = await _addTagsFuture?.value;

    if (result == null || result.hasErrors() || result.data?.addTags == null) {
      return result?.errors?.first.message;
    }

    isCopy
        ? updategridData(
            result,
            queryLayoutController.dataSource.data.value
                .where((x) => x.id == priceListInput.priceListId)
                .toList(),
          )
        : updategridData(
            result,
            gridController.selectedRows.value,
          );
    gridController.selectedRows.value =
        List.from(gridController.selectedRows.value);
    if (isCopy) {
      await queryLayoutController.dataSource.refresh();
    }
    adjustTag = AdjustTag('', ValueUomPair(), null, null);
    return null;
  }

  void updategridData(
    GraphQLResponse<Mutation$AddTags>? result,
    List<GuidePriceListLine> rows,
  ) {
    for (final item in rows) {
      final id = result!.data?.addTags
          .where((x) => x.id == item.id)
          .first
          .listItems
          .first
          .tags
          .last
          .id;

      item.listItems.itemTags.add(
        ItemTags(
          id!,
          adjustTag?.tagName ?? '',
          adjustTag?.tagName ?? '',
          active: true,
          adjustTag!.startDate!,
          adjustTag!.endDate!,
          adjustTag!.tagDelta.value,
          adjustTag!.tagDelta.value,
          adjustTag!.tagDelta.uom.name,
        ),
      );
    }
  }

  Future<String?> updateTags({
    required String tagId,
    required String priceListId,
    required DateTime endDate,
    required String productCode,
  }) async {
    _updateTagsFuture = CancelableOperation.fromFuture(
      gplService.updateTags(tagId, priceListId, endDate, productCode)!,
      onCancel: GraphQLResponse.new,
    );
    final result = await _updateTagsFuture?.value;

    if (result == null ||
        result.hasErrors() ||
        result.data?.updateTags == null) {
      return result!.errors?.first.message;
    }
    return null;
  }

  void copyTag(
    ItemTags tagDetail,
  ) {
    final rateUom = tagDetail.rateUoM.contains('.')
        ? tagDetail.rateUoM.split('.').last.toLowerCase()
        : tagDetail.rateUoM.toLowerCase();
    adjustTag!.tagName = tagDetail.reason;
    adjustTag!.tagDelta = ValueUomPair(
      value: tagDetail.rate,
      isRate: true,
      uom: Uom.values.firstWhere(
        (e) => e.toString().split('.').last == rateUom,
      ),
    );
    adjustTag!.startDate = DateTime.now();
    adjustTag!.endDate = DateTime.now();
  }
}
