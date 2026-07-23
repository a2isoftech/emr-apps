import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/base/base_service.dart';
import 'package:emr_one_eam/graphql/queries/asset_history.graphql.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/models/asset_history.dart';

abstract class IAssetHistoryService extends BaseService {
  IAssetHistoryService({required super.httpClient});

  Future<AssetHistory?> getAssetHistory(String assetCode);
}

class AssetHistoryService extends IAssetHistoryService {
  AssetHistoryService({required super.httpClient});

  @override
  Future<AssetHistory?> getAssetHistory(String assetCode) async {
    final result = await documentNodeQuerygetAssetHistory.execute(
      httpClient,
      Query$getAssetHistory.fromJson,
      variables: Variables$Query$getAssetHistory(
        input: Input$AssetHistoryRequestInput(
          assetId: assetCode,
          includeAllAttributes: true,
          maxNumberOfHistories: 10,
        ),
      ),
    );

    if (result.hasErrors() || result.data?.revisions == null) {
      return null;
    }

    return AssetHistory.fromJson(result.data!.revisions.toJson());
  }
}
