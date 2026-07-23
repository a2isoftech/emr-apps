import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:http/http.dart';

class InventorySearchService {
  InventorySearchService({
    required this.httpClient,
    this.cacheTtl = const Duration(minutes: 1),
  });

  final BaseClient httpClient;
  final Duration cacheTtl;

  Future<
      (
        List<Query$SearchInventory$searchInventory$nodes>,
        EmrQueryGraphQLMetadata<Query$SearchInventoryFacets>
      )> searchInventory({
    required Input$SearchInventoryInput searchInventoryInput,
    int pageSize = 50,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$InventorySearchResultSortInput>? order,
  }) async {
    final facets =
        await searchInventoryFacet(searchInventoryInput: searchInventoryInput);

    final response = await documentNodeQuerySearchInventory.execute(
      httpClient,
      Query$SearchInventory.fromJson,
      variables: Variables$Query$SearchInventory(
        before: before,
        after: after,
        first: first,
        last: last,
        order: order,
        input: searchInventoryInput,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return (
      response.data?.searchInventory?.nodes ?? [],
      EmrQueryGraphQLMetadata<Query$SearchInventoryFacets>(
        facets,
        response.data?.searchInventory?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              response.data?.searchInventory?.pageInfo.hasPreviousPage ?? false,
          hasNextPage:
              response.data?.searchInventory?.pageInfo.hasNextPage ?? false,
          startCursor: response.data?.searchInventory?.pageInfo.startCursor,
          endCursor: response.data?.searchInventory?.pageInfo.endCursor,
        ),
      )
    );
  }

  Future<Query$SearchInventoryFacets> searchInventoryFacet({
    required Input$SearchInventoryInput searchInventoryInput,
  }) async {
    final response = await documentNodeQuerySearchInventoryFacets.execute(
      httpClient,
      Query$SearchInventoryFacets.fromJson,
      variables: Variables$Query$SearchInventoryFacets(
        input: searchInventoryInput,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!;
  }

  Future<List<Query$GetProducts$products$nodes>> getProducts(
    String query,
  ) async {
    final result = await documentNodeQueryGetProducts.execute(
      httpClient,
      Query$GetProducts.fromJson,
      variables: Variables$Query$GetProducts(
        query: '*$query*',
      ),
      forceLoad: true,
    );

    if (result.hasErrors() || result.data?.products == null) {
      throw Exception('There was an error');
    }

    return result.data!.products!.nodes!
        .map(
          (e) => e,
        )
        .toSet()
        .toList();
  }

  Future<List<String>> getProductGroups(
    String query,
  ) async {
    final result = await documentNodeQueryGetProductLines.execute(
      httpClient,
      Query$GetProductLines.fromJson,
      variables: Variables$Query$GetProductLines(
        query: '*$query*',
      ),
      forceLoad: true,
    );

    if (result.hasErrors() || result.data == null) {
      throw Exception('There was an error');
    }

    return result.data!.productLines;
  }

  Future<List<String>> getProductTypes(
    String query,
  ) async {
    final result = await documentNodeQueryGetProductClasses.execute(
      httpClient,
      Query$GetProductClasses.fromJson,
      variables: Variables$Query$GetProductClasses(
        query: '*$query*',
      ),
      forceLoad: true,
    );

    if (result.hasErrors() || result.data == null) {
      throw Exception('There was an error');
    }

    return result.data!.productClasses;
  }
}
