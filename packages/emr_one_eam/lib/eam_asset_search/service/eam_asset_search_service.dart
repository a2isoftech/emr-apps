// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/eam_asset_search/models/asset_search_input.dart';
import 'package:emr_one_eam/eam_asset_search/models/favourite_search_parameters.dart';
import 'package:emr_one_eam/graphql/mutations/approve_new_assets.graphql.dart';
import 'package:emr_one_eam/graphql/mutations/delete_favourite_search_parameter.graphql.dart';
import 'package:emr_one_eam/graphql/mutations/save_favourite_serach_parameters.graphql.dart';
import 'package:emr_one_eam/graphql/queries/asset_template_properties.graphql.dart';
import 'package:emr_one_eam/graphql/queries/export_assets.graphql.dart';
import 'package:emr_one_eam/graphql/queries/favourite_search_parameters.graphql.dart';
import 'package:emr_one_eam/graphql/queries/list_values.graphql.dart';
import 'package:emr_one_eam/graphql/queries/search_assets.graphql.dart';
import 'package:emr_one_eam/graphql/queries/search_suggestions.graphql.dart';
import 'package:emr_one_eam/graphql/queries/territory_codes.graphql.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/models/asset_template.dart';
import 'package:emr_one_eam/models/list_value.dart';
import 'package:http/http.dart';

class EamAssetSearchService {
  final BaseClient httpClient;
  final Duration cacheTtl;
  EamAssetSearchService({
    required this.httpClient,
    this.cacheTtl = const Duration(minutes: 1),
  });
  Future<
      (
        List<Query$SearchAssets$searchAssets$nodes>,
        EmrQueryGraphQLMetadata<Query$SearchAssetsFacet>
      )> searchAssets({
    String? after,
    String? before,
    int? first,
    int? last,
    AssetSearchInput? input,
    List<Input$AssetSearchResultSortInput>? order,
  }) async {
    final facets = await getAssetsFacet(
      input: input,
    );

    final results = await documentNodeQuerySearchAssets.execute(
      httpClient,
      Query$SearchAssets.fromJson,
      variables: Variables$Query$SearchAssets(
        after: after,
        before: before,
        first: first,
        last: last,
        order: order,
        input: input == null
            ? Input$SearchAssetInput()
            : Input$SearchAssetInput.fromJson(input.toJson()),
      ),
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (
      results.data?.searchAssets?.nodes ?? [],
      EmrQueryGraphQLMetadata<Query$SearchAssetsFacet>(
        facets,
        results.data?.searchAssets?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              results.data?.searchAssets?.pageInfo.hasPreviousPage ?? false,
          hasNextPage:
              results.data?.searchAssets?.pageInfo.hasNextPage ?? false,
          startCursor: results.data?.searchAssets?.pageInfo.startCursor,
          endCursor: results.data?.searchAssets?.pageInfo.endCursor,
        ),
      )
    );
  }

  Future<Query$SearchAssetsFacet> getAssetsFacet({
    String? after,
    String? before,
    int? first,
    int? last,
    AssetSearchInput? input,
  }) async {
    final results = await documentNodeQuerySearchAssetsFacet.execute(
      httpClient,
      Query$SearchAssetsFacet.fromJson,
      variables: Variables$Query$SearchAssetsFacet(
        input: input == null
            ? Input$SearchAssetInput()
            : Input$SearchAssetInput.fromJson(input.toJson()),
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return results.data!;
  }

  Future<List<String?>> getSuggestions(
    String searchText,
    Enum$SearchPropertyType type,
  ) async {
    final results = await documentNodeQuerysearchSuggestion.execute(
      httpClient,
      Query$searchSuggestion.fromJson,
      variables:
          Variables$Query$searchSuggestion(searchText: searchText, input: type),
    );

    if (results.hasErrors() ||
        results.data == null ||
        results.data!.searchSuggestion.isEmpty) {
      return [];
    }

    return results.data!.searchSuggestion;
  }

  Future<List<ListValue>> getListValues(
    String listName, {
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

  Future<List<String>> getTerritoryCodes() async {
    final results = await documentNodeQueryGetAllTerritoryCodes.execute(
      httpClient,
      Query$GetAllTerritoryCodes.fromJson,
    );

    if (results.hasErrors() || results.data?.allTerritoryCodes == null) {
      return [];
    }

    return results.data!.allTerritoryCodes;
  }

  Future<String> exportAssets({AssetSearchInput? input}) async {
    final results = await documentNodeQueryExportAssets.execute(
      httpClient,
      Query$ExportAssets.fromJson,
      variables: Variables$Query$ExportAssets(
        input: input == null
            ? Input$SearchAssetInput()
            : Input$SearchAssetInput.fromJson(input.toJson()),
      ),
    );

    if (results.hasErrors() || results.data?.exportAssets == null) {
      return '';
    }

    return results.data!.exportAssets;
  }

  Future<String> exportAssetMainAttributes({AssetSearchInput? input}) async {
    final results = await documentNodeQueryExportAssetMainAttributes.execute(
      httpClient,
      Query$ExportAssetMainAttributes.fromJson,
      variables: Variables$Query$ExportAssetMainAttributes(
        input: input == null
            ? Input$SearchAssetInput()
            : Input$SearchAssetInput.fromJson(input.toJson()),
      ),
    );

    if (results.hasErrors() ||
        results.data?.exportAssetMainAttributes == null) {
      return '';
    }

    return results.data!.exportAssetMainAttributes;
  }

  Future<String> exportAssetCounters({AssetSearchInput? input}) async {
    final results = await documentNodeQueryExportAssetCounters.execute(
      httpClient,
      Query$ExportAssetCounters.fromJson,
      variables: Variables$Query$ExportAssetCounters(
        input: input == null
            ? Input$SearchAssetInput()
            : Input$SearchAssetInput.fromJson(input.toJson()),
      ),
    );

    if (results.hasErrors() || results.data?.exportAssetCounters == null) {
      return '';
    }

    return results.data!.exportAssetCounters;
  }

  Future<String> exportQrCodes({AssetSearchInput? input}) async {
    final results = await documentNodeQueryExportQrCodes.execute(
      httpClient,
      Query$ExportQrCodes.fromJson,
      variables: Variables$Query$ExportQrCodes(
        input: input == null
            ? Input$SearchAssetInput()
            : Input$SearchAssetInput.fromJson(input.toJson()),
      ),
    );

    if (results.hasErrors() || results.data?.exportAssetQrCodes == null) {
      return '';
    }

    return results.data!.exportAssetQrCodes;
  }

  Future<List<AssetTemplateProperty>> getAllTemplateProperties() async {
    final results = await documentNodeQuerytemplateProperties.execute(
      httpClient,
      Query$templateProperties.fromJson,
    );

    if (results.hasErrors() || results.data?.assetTemplateProperty == null) {
      return [];
    }

    return results.data!.assetTemplateProperty
        .map((e) => AssetTemplateProperty.fromJson(e.toJson()))
        .toList();
  }

  Future<bool> bulkApproveNewAssets(List<String> assetIds) async {
    final results = await documentNodeMutationapproveNewAssets.execute(
      httpClient,
      Mutation$approveNewAssets.fromJson,
      variables: Variables$Mutation$approveNewAssets(
        input: Input$BulkAssetRequestInput(assetIds: assetIds),
      ),
    );

    if (results.hasErrors() ||
        results.data?.approveAsset == null ||
        results.data!.approveAsset.failedAssetIds.isNotEmpty) {
      return false;
    }

    return true;
  }

  Future<List<FavouriteSearchParameters>> getFavouriteSearchParameters() async {
    final results = await documentNodeQueryGetFavouriteSearchParameters.execute(
      httpClient,
      Query$GetFavouriteSearchParameters.fromJson,
    );

    if (results.hasErrors() ||
        results.data?.favouriteSearchParameters == null) {
      return [];
    }

    return results.data!.favouriteSearchParameters
        .map((e) => FavouriteSearchParameters.fromJson(e.toJson()))
        .toList();
  }

  Future<FavouriteSearchParameters> saveSearchParameter({
    required String name,
    required String searchParameters,
    String? existingName,
  }) async {
    final results =
        await documentNodeMutationSaveFavouriteSearchParameters.execute(
      httpClient,
      Mutation$SaveFavouriteSearchParameters.fromJson,
      variables: Variables$Mutation$SaveFavouriteSearchParameters(
        input: Input$SaveSearchParametersInput(
          name: name,
          parameters: searchParameters,
          existingName: existingName,
        ),
      ),
    );

    if (results.hasErrors() || results.data?.saveSearchParameters == null) {
      throw Exception('Error saving search parameters');
    }

    return FavouriteSearchParameters.fromJson(
      results.data!.saveSearchParameters.toJson(),
    );
  }

  Future<bool> deleteSearchParameter(String name) async {
    final results = await documentNodeMutationDeleteSearchParameters.execute(
      httpClient,
      Mutation$DeleteSearchParameters.fromJson,
      variables: Variables$Mutation$DeleteSearchParameters(name: name),
    );

    if (results.hasErrors() || results.data?.deleteSearchParameters == null) {
      throw Exception('Error deleting search parameters');
    }

    return results.data!.deleteSearchParameters;
  }
}
