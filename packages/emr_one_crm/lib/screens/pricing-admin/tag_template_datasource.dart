import 'package:emr_one_core/data/emr_query_graphql_data_source.dart';
import 'package:emr_one_crm/models/guide_price_lists/tag_template.dart';
import 'package:emr_one_crm/services/gpl_service.dart';

class TagTemplateDatasource extends EmrQueryGraphQLDataSource<TagTemplates> {
  TagTemplateDatasource({required this.gplService});

  final GplService gplService;

  @override
  bool get supportsFacets => false;

  @override
  bool get autoPopulate => true;

  @override
  bool get supportsPaging => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final (results, meta) = await gplService.getTagTemplatesList(
      queryScope.query,
      first,
      before,
      after,
      last,
    );

    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    data.value = results;
    loading.value = false;
  }
}
