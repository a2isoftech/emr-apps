import 'dart:convert';

import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/eam_asset_search/controllers/eam_asset_search_filter_controller.dart';
import 'package:emr_one_eam/eam_asset_search/models/asset.dart';
import 'package:emr_one_eam/eam_asset_search/models/asset_search_input.dart';
import 'package:emr_one_eam/eam_asset_search/models/property_filter.dart';
import 'package:emr_one_eam/eam_asset_search/service/eam_asset_search_service.dart';
import 'package:emr_one_eam/graphql/queries/search_assets.graphql.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:intl/intl.dart';
import 'package:universal_html/html.dart' as html;

class EamAssetSearchDataSource
    extends EmrQueryGraphQLDataSource<Query$SearchAssets$searchAssets$nodes> {
  EamAssetSearchDataSource({required this.assetSearchService});
  final EamAssetSearchService assetSearchService;

  @override
  bool get supportsFacets => true;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();

    try {
      final order = queryScope.sortOrder
          .map(
            (e) => Input$AssetSearchResultSortInput.fromJson(
              jsonDecode('{ "${e.field}": "${e.direction}" }')
                  as Map<String, dynamic>,
            ),
          )
          .toList();

      final (results, meta) = await assetSearchService.searchAssets(
        after: after,
        before: before,
        first: first,
        last: last,
        input: getAssetSearchInput(),
        order: order,
      );

      final facetResults = {
        for (final v in meta.facets.searchAssetsFacet)
          v.key: EmrFacetResult(
            name: v.value.name!,
            values: v.value.values
                    ?.map(
                      (e) => EmrFacetResultValue(
                        text: e?.range?.toUpperCase() ?? '',
                        value: e?.range ?? '',
                        count: e?.count ?? 0,
                      ),
                    )
                    .toList() ??
                [],
          ),
      };

      recordCount = meta.recordCount;
      pageInfo = meta.pageInfo;
      facets.value = facetResults;
      data.value = results;
    } finally {
      loading.value = false;
    }
  }

  List<String>? getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  String? _getStringFilter(String key) => queryScope.filters[key] as String?;

  List<AssetPropertyFilter>? _getPropertySearchList(String key) =>
      queryScope.filters[key] as List<AssetPropertyFilter>?;

  AssetSearchInput getAssetSearchInput() {
    return AssetSearchInput(
      freeText: queryScope.query,
      assetName: getStringFilterList(EamAssetSearchFilterController.kName),
      assetCode:
          getStringFilterList(EamAssetSearchFilterController.kAssetCode),
      disposalFilter:
          _getStringFilter(EamAssetSearchFilterController.kShowAssets),
      depotFilter:
          getStringFilterList(EamAssetSearchFilterController.kDepotNo),
      category: getStringFilterList(EamAssetSearchFilterController.kCategory),
      assetTemplate:
          getStringFilterList(EamAssetSearchFilterController.kAssetTemplate),
      assetTypeFilter:
          getStringFilterList(EamAssetSearchFilterController.kAssetType),
      statusFilter:
          getStringFilterList(EamAssetSearchFilterController.kStatus),
      territoryCode:
          getStringFilterList(EamAssetSearchFilterController.kTerritoryCode),
      propertyQueries: _getPropertySearchList(
        EamAssetSearchFilterController.kPropertySearch,
      ),
      make: getStringFilterList(EamAssetSearchFilterController.kMake),
      model: getStringFilterList(EamAssetSearchFilterController.kModel),
      serialNo:
          getStringFilterList(EamAssetSearchFilterController.kSerialNumber),
      counters: getStringFilterList(EamAssetSearchFilterController.kCounters),
    );
  }

  List<EmrFilterModel<dynamic>> getFilter(AssetSearchInput input) {
    return [
      if (input.depotFilter != null)
        EmrFilterModel<List<String>>(
          key: EamAssetSearchFilterController.kDepotNo,
          name: 'Depot No',
          value: input.depotFilter,
          text: 'Depot: ${input.depotFilter?.join(',')}',
        ),
      if (input.assetCode != null)
        EmrFilterModel<List<String>>(
          key: EamAssetSearchFilterController.kAssetCode,
          name: 'AssetCode',
          value: input.assetCode,
          text: 'AssetCode: ${input.assetCode?.join(',')}',
        ),
      if (input.assetTypeFilter != null)
        EmrFilterModel<List<String>>(
          key: EamAssetSearchFilterController.kAssetType,
          name: 'Asset Type',
          value: input.assetTypeFilter,
          text: 'Asset Type: ${input.assetTypeFilter?.join(',')}',
        ),
      if (input.category != null)
        EmrFilterModel<List<String>>(
          key: EamAssetSearchFilterController.kCategory,
          name: 'Category',
          value: input.category,
          text: 'Category: ${input.category?.join(',')}',
        ),
      if (input.statusFilter != null)
        EmrFilterModel<List<String>>(
          key: EamAssetSearchFilterController.kStatus,
          name: 'Status',
          value: input.statusFilter,
          text: 'Status: ${input.statusFilter?.join(',')}',
        ),
      if (input.make != null)
        EmrFilterModel<List<String>>(
          key: EamAssetSearchFilterController.kMake,
          name: 'Make',
          value: input.make,
          text: 'Make: ${input.make?.join(',')}',
        ),
      if (input.model != null)
        EmrFilterModel<List<String>>(
          key: EamAssetSearchFilterController.kModel,
          name: 'Model',
          value: input.model,
          text: 'Model: ${input.model?.join(',')}',
        ),
      if (input.serialNo != null)
        EmrFilterModel<List<String>>(
          key: EamAssetSearchFilterController.kSerialNumber,
          name: 'SerialNumber',
          value: input.serialNo,
          text: 'SerialNumber: ${input.serialNo?.join(',')}',
        ),
      if (input.assetTemplate != null)
        EmrFilterModel<List<String>>(
          key: EamAssetSearchFilterController.kAssetTemplate,
          name: 'Template Name',
          value: input.assetTemplate,
          text: 'Template Name: ${input.assetTemplate?.join(',')}',
        ),
      if (input.disposalFilter != null && input.disposalFilter!.isNotEmpty)
        EmrFilterModel<String>(
          key: EamAssetSearchFilterController.kShowAssets,
          name: 'Show Assets',
          value: input.disposalFilter,
          text: 'Show Assets: ${input.disposalFilter}',
        ),
      if (input.propertyQueries != null && input.propertyQueries!.isNotEmpty)
        EmrFilterModel<List<AssetPropertyFilter?>>(
          key: EamAssetSearchFilterController.kPropertySearch,
          name: 'Property Search',
          value: input.propertyQueries,
          text: input.propertyQueries
              ?.map((e) => '${e.name} ${e.comparision} ${e.value}')
              .toList()
              .join(','),
        ),
      if (input.territoryCode != null)
        EmrFilterModel<List<String>>(
          key: EamAssetSearchFilterController.kTerritoryCode,
          name: 'Territory Code',
          value: input.territoryCode,
          text: 'Territory Code: ${input.territoryCode?.join(',')}',
        ),
    ];
  }

  Future<void> exportAssets() async {
    loading.value = true;
    await _downloadFile(
      fileNamePrefix: 'EAM-Assets-',
      callback: () async {
        return assetSearchService.exportAssets(input: getAssetSearchInput());
      },
    );
    loading.value = false;
  }

  Future<void> exportAssetMainAttributes() async {
    loading.value = true;
    await _downloadFile(
      fileNamePrefix: 'EAM-Asset-Main-Attributes',
      callback: () async {
        return assetSearchService.exportAssetMainAttributes(
          input: getAssetSearchInput(),
        );
      },
    );
    loading.value = false;
  }

  Future<void> exportAssetCounters() async {
    loading.value = true;
    await _downloadFile(
      fileNamePrefix: 'EAM-Asset-Counters',
      callback: () async {
        return assetSearchService.exportAssetCounters(
          input: getAssetSearchInput(),
        );
      },
    );
    loading.value = false;
  }

  Future<void> exportQrCode() async {
    loading.value = true;
    await _downloadQrCodes(
      fileNamePrefix: 'EAM-Qr-Codes',
      callback: () async {
        return assetSearchService.exportQrCodes(input: getAssetSearchInput());
      },
    );
    loading.value = false;
  }

  Future<void> _downloadFile({
    required String fileNamePrefix,
    required Future<String> Function() callback,
  }) async {
    try {
      final base64String = await callback();
      final dateTimeStamp =
          DateFormat('yyyy-MM-dd_HH-mm-ss').format(DateTime.now());
      final fileName = '$fileNamePrefix$dateTimeStamp.xlsx';
      await _download(fileName, base64String);
    } finally {}
  }

  Future<void> _downloadQrCodes({
    required String fileNamePrefix,
    required Future<String> Function() callback,
  }) async {
    try {
      final base64String = await callback();
      final dateTimeStamp =
          DateFormat('yyyy-MM-dd_HH-mm-ss').format(DateTime.now());
      final fileName = '$fileNamePrefix$dateTimeStamp.pdf';
      await _download(fileName, base64String);
    } finally {}
  }

  Future<void> _download(String fileName, String base64String) async {
    final List<int> bytes = base64Decode(base64String);
    final blob = html.Blob([bytes]);
    final anchorElement = html.AnchorElement(
      href: html.Url.createObjectUrlFromBlob(blob),
    )..setAttribute('download', fileName);
    html.document.body!.children.add(anchorElement);
    anchorElement.click();
    html.document.body!.children.remove(anchorElement);
  }

  List<String>? validateSelectedAssetsForTransfer(List<Asset> selectedAssets) {
    if (selectedAssets.isNotEmpty) {
      selectedAssets.removeWhere(
        (element) => element.approved == null || !element.approved!,
      );
      final transferInProcessAssets = selectedAssets
          .where(
            (element) => element.transferToDepotNoAssetApprovalId != null,
          )
          .toList();

      if (transferInProcessAssets.isNotEmpty) {
        selectedAssets.removeWhere(
          (element) => element.transferToDepotNoAssetApprovalId != null,
        );
        return transferInProcessAssets.map((e) => e.code!).toList();
      }
    }
    return null;
  }

  List<String>? validateSelectedAssetsForDispose(List<Asset> selectedAssets) {
    if (selectedAssets.isNotEmpty) {
      selectedAssets.removeWhere(
        (element) => element.approved == null || !element.approved!,
      );
      final disposalInProcessAssets = selectedAssets
          .where(
            (element) =>
                element.disposalStatus != null &&
                element.disposalStatus!.isNotEmpty &&
                element.disposalApprovalId != null,
          )
          .toList();

      if (disposalInProcessAssets.isNotEmpty) {
        return disposalInProcessAssets.map((e) => e.code!).toList();
      }
    }
    return null;
  }

  Future<bool> bulkApproveSelectedAssets(List<String> assetIds) async {
    final result = await assetSearchService.bulkApproveNewAssets(assetIds);
    if (result) {
      await refresh();
    }
    return result;
  }
}
