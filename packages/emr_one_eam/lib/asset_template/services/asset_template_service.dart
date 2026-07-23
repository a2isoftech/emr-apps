import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/asset_template/models/asset_template_suggestion.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/graphql/mutations/update_asset_template.graphql.dart';
import 'package:emr_one_eam/graphql/queries/asset_template.graphql.dart';
import 'package:emr_one_eam/graphql/queries/export_asset_templates.graphql.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/models/models.dart';

abstract class IAssetTemplateService extends BaseService {
  IAssetTemplateService({required super.httpClient});

  Future<PaginatedResponse<AssetTemplate>> getAssetTemplates({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AssetTemplateFilterInput? where,
  });

  Future<AssetTemplate?> updateAssetTemplate({AssetTemplate? updateInput});
  Future<List<AssetTemplateSuggestion>> getAssetTemplateSuggestion({
    String? searchText,
  });
  Future<AssetTemplate?> getAssetTemplateById(String id);

  Future<
      (
        List<Query$GetPaginatedAssetTemplates$assetTemplates$nodes>,
        EmrQueryGraphQLMetadata<Query$GetPaginatedAssetTemplates$assetTemplates>
      )> getQueryAssetTemplates({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AssetTemplateFilterInput? where,
    List<Input$AssetTemplateSortInput>? order,
  });

  Future<String> exportAssetTemplates();
}

class AssetTemplateService extends IAssetTemplateService {
  AssetTemplateService({required super.httpClient});

  @override
  Future<AssetTemplate?> getAssetTemplateById(String id) async {
    final result = await documentNodeQueryGetAssetTemplateById.execute(
      httpClient,
      Query$GetAssetTemplateById.fromJson,
      variables: Variables$Query$GetAssetTemplateById(id: id),
    );

    if (result.hasErrors() || result.data?.assetTemplateById == null) {
      return null;
    }

    return AssetTemplate.fromJson(result.data!.assetTemplateById.toJson());
  }

  @override
  Future<
      (
        List<Query$GetPaginatedAssetTemplates$assetTemplates$nodes>,
        EmrQueryGraphQLMetadata<Query$GetPaginatedAssetTemplates$assetTemplates>
      )> getQueryAssetTemplates({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AssetTemplateFilterInput? where,
    List<Input$AssetTemplateSortInput>? order,
  }) async {
    final results = await documentNodeQueryGetPaginatedAssetTemplates.execute(
      httpClient,
      Query$GetPaginatedAssetTemplates.fromJson,
      variables: Variables$Query$GetPaginatedAssetTemplates(
        after: after,
        before: before,
        first: first,
        last: last,
        where: where,
        order: order,
      ),
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return (
      results.data?.assetTemplates?.nodes ?? [],
      EmrQueryGraphQLMetadata<Query$GetPaginatedAssetTemplates$assetTemplates>(
        results.data!.assetTemplates!,
        results.data?.assetTemplates?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              results.data?.assetTemplates?.pageInfo.hasPreviousPage ?? false,
          hasNextPage:
              results.data?.assetTemplates?.pageInfo.hasNextPage ?? false,
          startCursor: results.data?.assetTemplates?.pageInfo.startCursor,
          endCursor: results.data?.assetTemplates?.pageInfo.endCursor,
        ),
      )
    );
  }

  @override
  Future<PaginatedResponse<AssetTemplate>> getAssetTemplates({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AssetTemplateFilterInput? where,
  }) async {
    final results = await documentNodeQueryGetPaginatedAssetTemplates.execute(
      httpClient,
      Query$GetPaginatedAssetTemplates.fromJson,
      variables: Variables$Query$GetPaginatedAssetTemplates(
        after: after,
        before: before,
        first: first,
        last: last,
        where: where,
      ),
    );

    if (results.hasErrors() || results.data?.assetTemplates == null) {
      return PaginatedResponse(
        pageInfo: PageInfo.empty(),
        totalCount: 0,
        results: [],
      );
    }

    return PaginatedResponse(
      pageInfo: PageInfo.fromJson(
        results.data!.assetTemplates!.pageInfo.toJson(),
      ),
      totalCount: results.data!.assetTemplates!.totalCount,
      results: results.data!.assetTemplates!.nodes!
          .map((e) => AssetTemplate.fromJson(e.toJson()))
          .toList(),
    );
  }

  @override
  Future<AssetTemplate?> updateAssetTemplate({
    AssetTemplate? updateInput,
  }) async {
    final result = await documentNodeMutationUpdateAssetTemplate.execute(
      httpClient,
      Mutation$UpdateAssetTemplate.fromJson,
      variables: Variables$Mutation$UpdateAssetTemplate(
        input: Input$UpdateAssetTemplateInput(
          id: updateInput?.id,
          codeFormat: updateInput?.codeFormat,
          name: updateInput?.name,
          hierarchy: updateInput?.hierarchy ?? false,
          location: updateInput?.location ?? false,
          notifyChanges: updateInput?.notifyChanges ?? false,
          parentAssetRequired: updateInput?.parentAssetRequired ?? false,
          permittedHours: updateInput?.permittedHours ?? false,
          reviewAttributes: updateInput?.reviewAttributes ?? [],
          shiftHours: updateInput?.shiftHours ?? false,
          syncAssetToCMMS: updateInput?.syncAssetToCMMS ?? false,
          syncProjectToCMMS: updateInput?.syncProjectToCMMS ?? false,
          syncResouceToCMMS: updateInput?.syncResouceToCMMS ?? false,
          telematic: updateInput?.telematics ?? false,
          category: updateInput?.category,
          syncTargets: updateInput?.syncTargets
              ?.map(
                (e) => Input$AssetTemplateSyncTargetInput(
                  name: e.name,
                ),
              )
              .toList(),
          templateCounters: updateInput?.assetTemplateCounters
              ?.map(
                (e) => Input$AssetTemplateCounterInput(
                  id: e.id ?? '',
                  groupId: e.groupId ?? '',
                  key: e.key ?? '',
                  name: e.name ?? '',
                  dataType: e.dataType ?? '',
                  incrementType: e.incrementType ?? '',
                  active: e.active ?? false,
                ),
              )
              .toList(),
          templateProperties: updateInput?.templateProperties
              ?.map(
                (e) => Input$AssetTemplatePropertyInput(
                  active: e.active ?? false,
                  dataType: e.dataType ?? '',
                  id: e.id ?? '',
                  isMandatory: e.isMandatory ?? false,
                  name: e.name ?? '',
                  sequence: e.sequence ?? 0,
                  updaterGroupIds: e.updaterGroupIds,
                  viewerGroupIds: e.viewerGroupIds,
                ),
              )
              .toList(),
        ),
      ),
    );
    if (result.hasErrors() || result.data?.updateAssetTemplate == null) {
      return null;
    }

    return AssetTemplate.fromJson(
      result.data?.updateAssetTemplate?.toJson() ?? AssetTemplate().toJson(),
    );
  }

  @override
  Future<List<AssetTemplateSuggestion>> getAssetTemplateSuggestion({
    String? searchText,
  }) async {
    final results = await documentNodeQueryGetAssetTemplates.execute(
      httpClient,
      Query$GetAssetTemplates.fromJson,
      variables: Variables$Query$GetAssetTemplates(
        where: searchText == null
            ? null
            : Input$AssetTemplateFilterInput(
                or: [
                  Input$AssetTemplateFilterInput(
                    name:
                        Input$StringOperationFilterInput(contains: searchText),
                  ),
                  Input$AssetTemplateFilterInput(
                    codeFormat:
                        Input$StringOperationFilterInput(contains: searchText),
                  ),
                ],
              ),
      ),
    );

    if (results.hasErrors() || results.data?.allAssetTemplates == null) {
      return [];
    }
    return results.data!.allAssetTemplates
        .map(
          (e) => AssetTemplateSuggestion(
            id: e.id,
            name: e.name,
            codeFormat: e.codeFormat,
          ),
        )
        .toList();
  }

  @override
  Future<String> exportAssetTemplates() async {
    final results = await documentNodeQueryExportAssetTemplates.execute(
      httpClient,
      Query$ExportAssetTemplates.fromJson,
    );

    if (results.hasErrors() || results.data?.exportAssetTemplates == null) {
      return '';
    }

    return results.data!.exportAssetTemplates;
  }
}
