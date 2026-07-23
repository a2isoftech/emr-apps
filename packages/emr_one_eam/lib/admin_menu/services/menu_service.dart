import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/base/base_service.dart';
import 'package:emr_one_eam/graphql/queries/load_and_save_asset_for_all_templates.graphql.dart';
import 'package:emr_one_eam/graphql/queries/sync_data.graphql.dart';
import 'package:emr_one_eam/models/import_api_response.dart';

abstract class IAdminMenuService extends BaseService {
  IAdminMenuService({required super.httpClient});

  Future<bool?> syncData(String tableName);
  Future<ImportApiResponse?> loadAndSaveAllAssetForTemplates();
}

class AdminMenuService extends IAdminMenuService {
  AdminMenuService({required super.httpClient});

  @override
  Future<bool?> syncData(String tableName) async {
    final result = await documentNodeQuerysyncdata.execute(
      httpClient,
      Query$syncdata.fromJson,
      variables: {'tableName': tableName},
    );
    if (result.hasErrors() || result.data?.syncData == null) {
      return null;
    }

    return result.data?.syncData;
  }

  @override
  Future<ImportApiResponse?> loadAndSaveAllAssetForTemplates() async {
    final result = await documentNodeQueryloadAndSaveAssetsOnAllTemplates
        .execute(httpClient, Query$loadAndSaveAssetsOnAllTemplates.fromJson);
    if (result.hasErrors() ||
        result.data?.loadAndSaveAssetsOnAllTemplates == null) {
      return null;
    }
    return ImportApiResponse.fromJson(
      result.data?.loadAndSaveAssetsOnAllTemplates.toJson() ??
          ImportApiResponse().toJson(),
    );
  }
}
