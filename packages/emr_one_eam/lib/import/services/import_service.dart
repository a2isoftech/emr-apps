import 'package:cross_file/cross_file.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/graphql/mutations/bulk_update_assets.graphql.dart';
import 'package:emr_one_eam/graphql/mutations/import_asset.graphql.dart';
import 'package:emr_one_eam/graphql/mutations/import_template.graphql.dart';
import 'package:emr_one_eam/graphql/queries/asset_template.graphql.dart';
import 'package:emr_one_eam/graphql/queries/new_asset_by_template_id.graphql.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/models/asset_template.dart';
import 'package:emr_one_eam/models/import_api_response.dart';

abstract class IImportService extends BaseService {
  IImportService({required super.httpClient});

  Future<ImportApiResponse?> importAssetTemplate({
    bool preview,
    XFile? file,
  });
  Future<ImportApiResponse?> importAsset({
    bool preview,
    XFile? file,
    String? jsonSchema,
    String? worksheetName,
    int? startRow,
    int? endRow,
  });
  Future<ImportApiResponse?> bulkUpdateAsset({
    XFile? file,
  });
  Future<Iterable<AssetTemplate>> fetchAssetTemplates({
    int? first,
    Input$AssetTemplateFilterInput? where,
  });
  Future<Map<String, dynamic>?> fetchAssetBytemplateid(String templateId);
}

class ImportService extends IImportService {
  ImportService({required super.httpClient});

  @override
  Future<ImportApiResponse?> importAssetTemplate({
    bool preview = false,
    XFile? file,
  }) async {
    final results = await documentNodeMutationImportAssetTemplate.execute(
      httpClient,
      Mutation$ImportAssetTemplate.fromJson,
      files: {
        'input.file': file,
      },
      variables: Variables$Mutation$ImportAssetTemplate(
        input: Input$ImportAssetTemplateInput(
          preview: preview,
          file: '',
        ),
      ),
    );

    if (results.hasErrors() || results.data?.importAssetTemplate == null) {
      return null;
    }
    return ImportApiResponse.fromJson(
      results.data?.importAssetTemplate.toJson() ??
          ImportApiResponse().toJson(),
    );
  }

  @override
  Future<ImportApiResponse?> bulkUpdateAsset({XFile? file}) async {
    final results = await documentNodeMutationBulkUpdateAssets.execute(
      httpClient,
      Mutation$BulkUpdateAssets.fromJson,
      files: {
        'input.file': file,
      },
      variables: Variables$Mutation$BulkUpdateAssets(
        input: Input$BulkUpdateAssetInput(file: ''),
      ),
    );

    if (results.hasErrors() || results.data?.bulkUpdateAsset == null) {
      return null;
    }

    return ImportApiResponse.fromJson(
      results.data?.bulkUpdateAsset.toJson() ?? ImportApiResponse().toJson(),
    );
  }

  @override
  Future<Iterable<AssetTemplate>> fetchAssetTemplates({
    int? first,
    Input$AssetTemplateFilterInput? where,
  }) async {
    final results = await documentNodeQueryGetPaginatedAssetTemplates.execute(
      httpClient,
      Query$GetPaginatedAssetTemplates.fromJson,
      variables: Variables$Query$GetPaginatedAssetTemplates(
        first: first,
        where: where,
      ),
    );

    if (results.hasErrors() || results.data?.assetTemplates == null) {
      return [];
    }

    return results.data!.assetTemplates!.nodes!
        .map((e) => AssetTemplate.fromJson(e.toJson()));
  }

  @override
  Future<Map<String, dynamic>?> fetchAssetBytemplateid(
    String templateId,
  ) async {
    final results = await documentNodeQueryNewAssetByTemplateId.execute(
      httpClient,
      Query$NewAssetByTemplateId.fromJson,
      variables: Variables$Query$NewAssetByTemplateId(templateId: templateId),
    );

    if (results.hasErrors() || results.data?.newAssetByTemplateId == null) {
      return null;
    }
    return results.data!.newAssetByTemplateId.toJson();
  }

  @override
  Future<ImportApiResponse?> importAsset({
    bool preview = true,
    XFile? file,
    String? jsonSchema,
    String? worksheetName,
    int? startRow,
    int? endRow,
  }) async {
    final results = await documentNodeMutationImportAsset.execute(
      httpClient,
      Mutation$ImportAsset.fromJson,
      files: {
        'input.file': file,
      },
      variables: Variables$Mutation$ImportAsset(
        input: Input$ImportAssetInput(
          file: '',
          endRow: endRow ?? 0,
          startRow: startRow ?? 0,
          jsonSchema: jsonSchema ?? '',
          preview: preview,
          worksheetName: worksheetName ?? '',
        ),
      ),
    );

    if (results.hasErrors() || results.data?.importAsset == null) {
      return null;
    }
    return ImportApiResponse.fromJson(
      results.data?.importAsset.toJson() ?? ImportApiResponse().toJson(),
    );
  }
}
