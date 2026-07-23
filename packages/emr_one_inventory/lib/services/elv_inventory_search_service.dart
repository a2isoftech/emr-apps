import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/queries/inventory/elv/search_elv_inventory.graphql.dart';
import 'package:emr_core_api/graphql/queries/inventory/elv/search_elv_inventory_facet.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/models/elv_inventory_item.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:http/http.dart';

class ElvInventorySearchService {
  ElvInventorySearchService({
    required this.httpClient,
    this.cacheTtl = const Duration(minutes: 1),
  });

  final BaseClient httpClient;
  final Duration cacheTtl;

  Future<
      (
        List<ElvInventoryItem>,
        EmrQueryGraphQLMetadata<Query$SearchELVInventoryFacet>
      )> searchElvInventory({
    required Input$SearchELVInventoryInput searchElvInventoryInput,
    int pageSize = 50,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$ELVInventory_SearchResultSortInput>? order,
  }) async {
    final facets = await searchElvInventoryFacet(
      searchElvInventoryInput: searchElvInventoryInput,
    );

    final response = await documentNodeQuerySearchELVInventory.execute(
      httpClient,
      Query$SearchELVInventory.fromJson,
      variables: Variables$Query$SearchELVInventory(
        before: before,
        after: after,
        first: first,
        last: last,
        order: order,
        input: searchElvInventoryInput,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return (
      _convertToElvInventoryItems(
        response.data?.searchELVInventory?.nodes ?? [],
      ),
      EmrQueryGraphQLMetadata<Query$SearchELVInventoryFacet>(
        facets,
        response.data?.searchELVInventory?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              response.data?.searchELVInventory?.pageInfo.hasPreviousPage ??
                  false,
          hasNextPage:
              response.data?.searchELVInventory?.pageInfo.hasNextPage ?? false,
          startCursor: response.data?.searchELVInventory?.pageInfo.startCursor,
          endCursor: response.data?.searchELVInventory?.pageInfo.endCursor,
        ),
      )
    );
  }

  Future<Query$SearchELVInventoryFacet> searchElvInventoryFacet({
    required Input$SearchELVInventoryInput searchElvInventoryInput,
  }) async {
    final response = await documentNodeQuerySearchELVInventoryFacet.execute(
      httpClient,
      Query$SearchELVInventoryFacet.fromJson,
      variables: Variables$Query$SearchELVInventoryFacet(
        input: searchElvInventoryInput,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!;
  }

  Future<List<Query$GetLocations$inventoryLocations$nodes>> getLocations(
    List<String>? locationCodes,
    String query,
  ) async {
    final result = await documentNodeQueryGetLocations.execute(
      httpClient,
      Query$GetLocations.fromJson,
      variables: Variables$Query$GetLocations(
        input: Input$InventoryLocationsInput(
          query: '*$query*',
        ),
      ),
      forceLoad: true,
    );

    if (result.hasErrors() || result.data?.inventoryLocations == null) {
      throw Exception('There was an error');
    }

    return result.data!.inventoryLocations!.nodes!
        .map(
          (e) => e,
        )
        .toSet()
        .toList();
  }

  List<ElvInventoryItem> _convertToElvInventoryItems(
    List<Query$SearchELVInventory$searchELVInventory$nodes?> nodes,
  ) {
    nodes.removeWhere((element) => element == null);
    return nodes.map((node) {
      return node!.when(
        vehicle: (v) => ElvInventoryItem(
          vin: v.vin ?? '',
          yardCode: v.location?.yard?.yardCode ?? '',
          location: v.location?.code,
          status: v.vehicleStatus.name.replaceAll('_', ' '),
          productType: 'ELV',
          weight: UomValue.weight(
            v.weight.value,
            Uom.fromCode(v.weight.uom.name),
          ),
          price: v.stockValue,
        ),
        vehiclePart: (vp) => ElvInventoryItem(
          vin: vp.vehicle?.vin ?? '',
          yardCode: vp.location?.yard?.yardCode ?? '',
          location: vp.location?.code,
          status: vp.partStatus.name.replaceAll('_', ' '),
          productType: vp.type.name.replaceAll('_', ' '),
          weight: UomValue.weight(
            vp.weight.value,
            Uom.fromCode(vp.weight.uom.name),
          ),
          price: vp.stockValue,
        ),
        orElse: () => throw Exception('Invalid ELV inventory type'),
      );
    }).toList();
  }
}
