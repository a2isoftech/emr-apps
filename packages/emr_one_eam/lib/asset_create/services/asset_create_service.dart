import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/graphql/mutations/save_asset.graphql.dart';
import 'package:emr_one_eam/graphql/queries/asset_by_code.graphql.dart';
import 'package:emr_one_eam/graphql/queries/list_values.graphql.dart';
import 'package:emr_one_eam/graphql/queries/new_asset_by_template_id.graphql.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/models/create_asset_input.dart';
import 'package:emr_one_eam/models/models.dart';

abstract class IAssetCreateService extends BaseService {
  IAssetCreateService({required super.httpClient});

  Future<CreateAssetInput?> getNewAssetFromTemplateId(String templateId);
  Future<CreateAssetInput?> getAssetFromAssetCode(String assetCode);
  Future<List<ListValue>> getListValues({
    required String listName,
    String? parameter,
  });

  Future<Asset?> saveAsset(CreateAssetInput asset);
}

class AssetCreateService extends IAssetCreateService {
  AssetCreateService({required super.httpClient});

  @override
  Future<List<ListValue>> getListValues({
    required String listName,
    String? parameter,
  }) async {
    final results = await documentNodeQueryGetListValues.execute(
      httpClient,
      Query$GetListValues.fromJson,
      variables: Variables$Query$GetListValues(
        listName: listName,
        parameter: parameter,
      ),
    );

    if (results.hasErrors() || results.data?.listValues == null) {
      return [];
    }

    return results.data!.listValues
        .map((e) => ListValue.fromJson(e.toJson()))
        .toList();
  }

  @override
  Future<CreateAssetInput?> getNewAssetFromTemplateId(String templateId) async {
    final result = await documentNodeQueryNewAssetByTemplateId.execute(
      httpClient,
      Query$NewAssetByTemplateId.fromJson,
      variables: Variables$Query$NewAssetByTemplateId(templateId: templateId),
    );

    if (result.hasErrors() || result.data?.newAssetByTemplateId == null) {
      return null;
    }

    return CreateAssetInput.fromJson(
      result.data!.newAssetByTemplateId.toJson(),
    );
  }

  @override
  Future<CreateAssetInput?> getAssetFromAssetCode(String assetCode) async {
    final result = await documentNodeQueryassetbycode.execute(
      httpClient,
      Query$assetbycode.fromJson,
      variables: Variables$Query$assetbycode(assetCode: assetCode),
    );

    if (result.hasErrors() || result.data!.searchAssetByCode == null) {
      return null;
    }
    return CreateAssetInput.fromJson(result.data!.searchAssetByCode!.toJson());
    // return Asset.fromJson(result.data!.searchAssetByCode!.toJson());
  }

  @override
  Future<Asset?> saveAsset(CreateAssetInput asset) async {
    final result = await documentNodeMutationCreateAsset.execute(
      httpClient,
      Mutation$CreateAsset.fromJson,
      variables: Variables$Mutation$CreateAsset(
        input: Input$CreateorUpdateAssetInput.fromJson(asset.toJson()),
      ),
    );

    if (result.hasErrors() || result.data == null) {
      return null;
    }

    return Asset.fromJson(result.data!.createAsset.toJson());
  }
}
