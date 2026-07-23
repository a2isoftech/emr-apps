import 'package:emr_core_api/graphql/mutations/inventory/production/production.dart';
import 'package:emr_core_api/graphql/queries/inventory/production/production.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_core_api/services/reference_data_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/models/production/production_api_response.dart';
import 'package:http/http.dart';

class BomService {
  BomService({
    required this.referenceDataService,
    required this.httpClient,
    this.cacheTtl = Duration.zero,
  });

  final BaseClient httpClient;
  final Duration cacheTtl;
  final ReferenceDataService referenceDataService;

  Future<
    (
      Query$SearchBoms$searchBoms?,
      EmrQueryGraphQLMetadata<Query$SearchBomFacets>,
    )
  >
  searchBoms({
    required Input$SearchBomInput searchBomInput,
    int pageSize = 50,
    String? before,
    String? after,
    int? first,
    int? last,
  }) async {
    final facets = await searchBomFacets(input: searchBomInput);
    final response = await documentNodeQuerySearchBoms.execute(
      httpClient,
      Query$SearchBoms.fromJson,
      variables: Variables$Query$SearchBoms(
        inputQuery: searchBomInput,
        before: before,
        after: after,
        first: first,
        last: last,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final graphqlFacets = EmrQueryGraphQLMetadata(
      facets,
      response.data?.searchBoms?.totalCount ?? 0,
      EmrQueryGraphQLPageInfo(
        hasPreviousPage:
            response.data?.searchBoms?.pageInfo.hasPreviousPage ?? false,
        hasNextPage: response.data?.searchBoms?.pageInfo.hasNextPage ?? false,
        startCursor: response.data?.searchBoms?.pageInfo.startCursor,
        endCursor: response.data?.searchBoms?.pageInfo.endCursor,
      ),
    );

    return (response.data?.searchBoms, graphqlFacets);
  }

  Future<Query$SearchBomFacets> searchBomFacets({
    required Input$SearchBomInput input,
  }) async {
    final response = await documentNodeQuerySearchBomFacets.execute(
      httpClient,
      Query$SearchBomFacets.fromJson,
      variables: Variables$Query$SearchBomFacets(input: input),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!;
  }

  Future<Query$GetBom$billOfMaterials> getBom(String id) async {
    final response = await documentNodeQueryGetBom.execute(
      httpClient,
      Query$GetBom.fromJson,
      variables: Variables$Query$GetBom(id: id),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!.billOfMaterials;
  }

  Future<ProductionApiResponse<Mutation$CreateBom$createBillOfMaterials$data?>>
  createBom(Input$CreateBomInput input) async {
    try {
      final response = await documentNodeMutationCreateBom.execute(
        httpClient,
        Mutation$CreateBom.fromJson,
        variables: Variables$Mutation$CreateBom(input: input),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return ProductionApiResponse(
        data: response.data?.createBillOfMaterials.data,
        success:
            response.data?.createBillOfMaterials == null ||
            !response.data!.createBillOfMaterials.hasError,
        errorCode: response.data?.createBillOfMaterials.errorCode ?? '',
        message: response.data?.createBillOfMaterials.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error('Exception', error: ex, stackTrace: trace);
      return ProductionApiResponse.exception(message: ex.toString());
    }
  }

  Future<ProductionApiResponse<Mutation$UpdateBom$updateBillOfMaterials$data?>>
  updateBom(Input$UpdateBomInput input) async {
    try {
      final response = await documentNodeMutationUpdateBom.execute(
        httpClient,
        Mutation$UpdateBom.fromJson,
        variables: Variables$Mutation$UpdateBom(input: input),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return ProductionApiResponse(
        data: response.data?.updateBillOfMaterials.data,
        success:
            response.data?.updateBillOfMaterials == null ||
            !response.data!.updateBillOfMaterials.hasError,
        errorCode: response.data?.updateBillOfMaterials.errorCode ?? '',
        message: response.data?.updateBillOfMaterials.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error('Exception', error: ex, stackTrace: trace);
      return ProductionApiResponse.exception(message: ex.toString());
    }
  }

  Future<ProductionApiResponse<Mutation$CloneBom$cloneBillOfMaterials$data?>>
  cloneBom(Input$CloneBomInput input) async {
    try {
      final response = await documentNodeMutationCloneBom.execute(
        httpClient,
        Mutation$CloneBom.fromJson,
        variables: Variables$Mutation$CloneBom(input: input),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return ProductionApiResponse(
        data: response.data?.cloneBillOfMaterials.data,
        success:
            response.data?.cloneBillOfMaterials == null ||
            !response.data!.cloneBillOfMaterials.hasError,
        errorCode: response.data?.cloneBillOfMaterials.errorCode ?? '',
        message: response.data?.cloneBillOfMaterials.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error('Exception', error: ex, stackTrace: trace);
      return ProductionApiResponse.exception(message: ex.toString());
    }
  }

  Future<ProductionApiResponse<void>> deleteBom(String id) async {
    try {
      final response = await documentNodeMutationDeleteBom.execute(
        httpClient,
        Mutation$DeleteBom.fromJson,
        variables: Variables$Mutation$DeleteBom(id: id),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return ProductionApiResponse(
        success: response.data?.deleteBillOfMaterials.data ?? false,
        errorCode: response.data?.deleteBillOfMaterials.errorCode ?? '',
        message: response.data?.deleteBillOfMaterials.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error('Exception', error: ex, stackTrace: trace);
      return ProductionApiResponse.exception(message: ex.toString());
    }
  }

  Future<ProductionApiResponse<void>> restoreBom(String id) async {
    try {
      final response = await documentNodeMutationRestoreBom.execute(
        httpClient,
        Mutation$RestoreBom.fromJson,
        variables: Variables$Mutation$RestoreBom(id: id),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return ProductionApiResponse(
        success: response.data?.restoreBillOfMaterials.data ?? false,
        errorCode: response.data?.restoreBillOfMaterials.errorCode ?? '',
        message: response.data?.restoreBillOfMaterials.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error('Exception', error: ex, stackTrace: trace);
      return ProductionApiResponse.exception(message: ex.toString());
    }
  }

  Future<Query$SearchProducts$products?> searchProducts(
    Variables$Query$SearchProducts input,
  ) async {
    final response = await documentNodeQuerySearchProducts.execute(
      httpClient,
      Query$SearchProducts.fromJson,
      variables: input,
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data?.products;
  }
}
