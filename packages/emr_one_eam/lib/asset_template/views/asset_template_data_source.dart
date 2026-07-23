import 'dart:convert';

import 'package:emr_one_core/data/emr_query_graphql_data_source.dart';
import 'package:emr_one_eam/asset_template/controllers/asset_template_filter_controller.dart';
import 'package:emr_one_eam/asset_template/services/asset_template_service.dart';
import 'package:emr_one_eam/graphql/queries/asset_template.graphql.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:intl/intl.dart';
import 'package:universal_html/html.dart' as html;

class AssetTemplateDataSource extends EmrQueryGraphQLDataSource<
    Query$GetPaginatedAssetTemplates$assetTemplates$nodes> {
  AssetTemplateDataSource({required this.templateService});

  final IAssetTemplateService templateService;

  @override
  bool get supportsFacets => false;

  @override
  Future<void> refresh() async {
    loading.value = true;
    try {
      await onRefresh.call();
      final search = queryScope.query.isEmpty ? null : queryScope.query;
      final filters =
          _getStringFilterList(AssetTemplateFilterController.kTemplateName);

      final order = queryScope.sortOrder
          .map(
            (e) => Input$AssetTemplateSortInput.fromJson(
              jsonDecode('{ "${e.field}": "${e.direction}" }')
                  as Map<String, dynamic>,
            ),
          )
          .toList();
      final (results, meta) = await templateService.getQueryAssetTemplates(
        after: after,
        before: before,
        first: first,
        last: last,
        order: order,
        where: (search != null || filters != null)
            ? Input$AssetTemplateFilterInput(
                name: Input$StringOperationFilterInput(
                  contains: search,
                  or: filters
                      ?.map(
                        (e) => Input$StringOperationFilterInput(eq: e),
                      )
                      .toList(),
                ),
              )
            : null,
      );
      recordCount = meta.recordCount;
      pageInfo = meta.pageInfo;
      data.value = results;
    } finally {
      loading.value = false;
    }
  }

  Future<void> exportAssetTemplates() async {
    loading.value = true;
    await _downloadFile(
      fileNamePrefix: 'EAM-Asset-Templates',
      callback: () async {
        return templateService.exportAssetTemplates();
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

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();
}
