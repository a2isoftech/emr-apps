import 'dart:convert';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:emr_core_api/extensions/extensions.dart';
import 'package:emr_core_api/graphql/fragments/stocktake/stocktake_approval_fields.graphql.dart';
import 'package:emr_core_api/graphql/fragments/stocktake/stocktake_fields.graphql.dart';
import 'package:emr_core_api/graphql/fragments/stocktake/stocktake_search_fields.graphql.dart';
import 'package:emr_core_api/graphql/mutations/mutations.dart';
import 'package:emr_core_api/graphql/mutations/stocktake/manual_update_stocktake.graphql.dart';
import 'package:emr_core_api/graphql/mutations/stocktake/update_delta_weight.graphql.dart';
import 'package:emr_core_api/graphql/mutations/stocktake/update_stocktake_basic_details.graphql.dart';
import 'package:emr_core_api/graphql/queries/queries.dart';
import 'package:emr_core_api/graphql/queries/reference_data/get_product_families.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/history_timeline_model.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/services/stock_take_shared_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart' hide Location;
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class StocktakeService {
  StocktakeService({
    required this.client,
    required String apiUrl,
    this.cacheTtl = const Duration(minutes: 1),
  }) : _apiUrl = apiUrl {
    SharedPrefsCacheProvider.createFromDefaultInstance().then((value) {
      cacheProvider = value;
    });
  }

  BaseClient client;
  final Duration cacheTtl;
  final String _apiUrl;
  EmrCacheProvider? cacheProvider;

  Future<
    (
      List<Fragment$StocktakeSearchFields>,
      EmrQueryGraphQLMetadata<Query$SearchStocktakeFacets>,
    )
  >
  searchStocktakes({
    required Input$StocktakeSearchInput input,
    int pageSize = 50,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$StocktakeSortInput>? order,
  }) async {
    final facets = await searchStocktakeFacets(input: input);
    final result = await getStocktakes(
      input: input,
      before: before,
      after: after,
      first: first,
      last: last,
      order: order,
    );

    if (result.hasErrors()) {
      throw Exception(result.errors);
    }

    return (
      result.data?.searchStocktakes?.nodes ?? [],
      EmrQueryGraphQLMetadata<Query$SearchStocktakeFacets>(
        facets,
        result.data?.searchStocktakes?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              result.data?.searchStocktakes?.pageInfo.hasPreviousPage ?? false,
          hasNextPage:
              result.data?.searchStocktakes?.pageInfo.hasNextPage ?? false,
          startCursor: result.data?.searchStocktakes?.pageInfo.startCursor,
          endCursor: result.data?.searchStocktakes?.pageInfo.endCursor,
        ),
      ),
    );
  }

  Future<GraphQLResponse<Query$SearchStocktakes>> getStocktakes({
    required Input$StocktakeSearchInput input,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$StocktakeSortInput>? order,
  }) {
    return documentNodeQuerySearchStocktakes.execute(
      client,
      url: Uri.tryParse(_apiUrl),
      Query$SearchStocktakes.fromJson,
      variables: Variables$Query$SearchStocktakes(
        after: after,
        before: before,
        first: first,
        last: last,
        input: input,
        order: order,
      ),
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: true,
    );
  }

  Future<Query$SearchStocktakeFacets> searchStocktakeFacets({
    required Input$StocktakeSearchInput input,
  }) async {
    final response = await documentNodeQuerySearchStocktakeFacets.execute(
      client,
      url: Uri.tryParse(_apiUrl),
      Query$SearchStocktakeFacets.fromJson,
      variables: Variables$Query$SearchStocktakeFacets(input: input),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!;
  }

  Future<StockTakeApiResponse<String>> createStockTake({
    required String name,
    required String yardCode,
    required String conductedBy,
    required String productFamily,
    required String territory,
    required String currencyCode,
    required Enum$Uom defaultUom,
    bool isRoutineCheck = false,
  }) async {
    try {
      final response = await documentNodeMutationCreateStocktake.execute(
        client,
        url: Uri.tryParse(_apiUrl),
        Mutation$CreateStocktake.fromJson,
        variables: Variables$Mutation$CreateStocktake(
          input: Input$CreateStocktakeInput(
            conductedBy: conductedBy,
            name: name,
            yardCode: yardCode,
            productFamily: productFamily,
            isRoutineCheck: isRoutineCheck,
            territoryCode: territory,
            currencyCode: currencyCode,
            defaultUom: defaultUom,
          ),
        ),
        cacheProvider: cacheProvider,
        cacheTtl: cacheTtl,
        forceLoad: true,
      );
      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        data: response.data?.createStockTake.data?.id,
        success: response.data?.createStockTake.success ?? false,
        errorCode: response.data?.createStockTake.errorCode ?? '',
        message: response.data?.createStockTake.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during create stocktake',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  Future<StockTakeApiResponse<String>> updateStockTake(
    Input$CreateStocktakeInput stockTakeInput,
  ) async {
    try {
      final response = await documentNodeMutationUpdateStocktake.execute(
        client,
        url: Uri.tryParse(_apiUrl),
        Mutation$UpdateStocktake.fromJson,
        variables: Variables$Mutation$UpdateStocktake(input: stockTakeInput),
        cacheProvider: cacheProvider,
        cacheTtl: cacheTtl,
        forceLoad: true,
      );
      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        data: response.data?.updateStockTake.data?.id,
        success: response.data?.updateStockTake.success ?? false,
        errorCode: response.data?.updateStockTake.errorCode ?? '',
        message: response.data?.updateStockTake.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during update stocktake',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  Future<StockTakeApiResponse<String>> updateStockTakeBasicDetails(
    Input$UpdateBasicDetailsInput stockTakeInput,
  ) async {
    try {
      final response = await documentNodeMutationUpdateStockTakeBasicDetails
          .execute(
            client,
            url: Uri.tryParse(_apiUrl),
            Mutation$UpdateStockTakeBasicDetails.fromJson,
            variables: Variables$Mutation$UpdateStockTakeBasicDetails(
              input: stockTakeInput,
            ),
            cacheProvider: cacheProvider,
            cacheTtl: cacheTtl,
            forceLoad: true,
          );
      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        data: response.data?.updateStockTakeBasicDetails.data?.id,
        success: response.data?.updateStockTakeBasicDetails.success ?? false,
        errorCode: response.data?.updateStockTakeBasicDetails.errorCode ?? '',
        message: response.data?.updateStockTakeBasicDetails.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred when updating stocktake basic details',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  Future<StockTakeApiResponse<List<LocationWeightModel>>> addStocktakeWeight(
    Input$AddStocktakeWeightInput input,
  ) async {
    try {
      final response = await documentNodeMutationAddStocktakeWeight.execute(
        client,
        url: Uri.tryParse(_apiUrl),
        Mutation$AddStocktakeWeight.fromJson,
        variables: Variables$Mutation$AddStocktakeWeight(input: input),
      );
      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      if (response.data?.addStocktakeWeight.success != true) {
        return StockTakeApiResponse.failed(
          errorCode: response.data?.addStocktakeWeight.errorCode ?? '',
          message: response.data?.addStocktakeWeight.message ?? '',
        );
      }

      final weights = _mapWeightsFromMutation(
        response.data!.addStocktakeWeight.data!.takenWeights,
      );
      return StockTakeApiResponse.success(data: weights);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred while adding weight',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  Future<StockTakeApiResponse<List<CommentModel>>> addComment(
    Input$AddCommentInput commentInput,
  ) async {
    try {
      final response = await documentNodeMutationAddComment.execute(
        client,
        url: Uri.tryParse(_apiUrl),
        Mutation$AddComment.fromJson,
        variables: Variables$Mutation$AddComment(commentInput: commentInput),
      );
      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        data:
            response.data?.addComment.data?.map((x) {
              return CommentModel(
                userName: x!.created.userName,
                userId: x.created.userInfoId,
                date: x.created.at,
                content: x.content,
              );
            }).toList() ??
            [],
        success: response.data?.addComment.success ?? false,
        errorCode: response.data?.addComment.errorCode ?? '',
        message: response.data?.addComment.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred while adding comment',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  Future<StockTakeApiResponse<List<CommentModel>>> deleteComment(
    Input$DeleteCommentInput commentInput,
  ) async {
    try {
      final response = await documentNodeMutationDeleteComment.execute(
        client,
        url: Uri.tryParse(_apiUrl),
        Mutation$DeleteComment.fromJson,
        variables: Variables$Mutation$DeleteComment(commentInput: commentInput),
      );
      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        data:
            response.data?.deleteComment.data?.map((x) {
              return CommentModel(
                userName: x!.created.userName,
                userId: x.created.userInfoId,
                date: x.created.at,
                content: x.content,
              );
            }).toList() ??
            [],
        success: response.data?.deleteComment.success ?? false,
        errorCode: response.data?.deleteComment.errorCode ?? '',
        message: response.data?.deleteComment.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred while deleting comment',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  Future<StockTakeApiResponse<List<MediaAsset>>> addStockTakeLocationMedia(
    Input$StockLocationMediaInput locationMediaInput,
  ) async {
    try {
      final response = await documentNodeMutationAddStockTakeLocationMedia
          .execute(
            client,
            Mutation$AddStockTakeLocationMedia.fromJson,
            variables: Variables$Mutation$AddStockTakeLocationMedia(
              input: locationMediaInput,
            ),
          );
      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        success: response.data?.addStockTakeLocationMedia.success ?? false,
        errorCode: response.data?.addStockTakeLocationMedia.errorCode ?? '',
        message: response.data?.addStockTakeLocationMedia.message ?? '',
        data: response.data?.addStockTakeLocationMedia.data != null
            ? mapToAddedMediaAsset(
                response.data!.addStockTakeLocationMedia.data!,
              )
            : null,
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred while adding stock take media',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  List<MediaAsset> mapToAddedMediaAsset(
    List<Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data?>
    mediaAssets,
  ) {
    return mediaAssets.map((toElement) {
      return MediaAsset(toElement!.url);
    }).toList();
  }

  Future<StockTakeApiResponse<List<MediaAsset>>> deleteStockTakeLocationMedia(
    Input$StockLocationMediaInput locationMediaInput,
  ) async {
    try {
      final response = await documentNodeMutationDeleteStockTakeLocationMedia
          .execute(
            client,
            Mutation$DeleteStockTakeLocationMedia.fromJson,
            variables: Variables$Mutation$DeleteStockTakeLocationMedia(
              input: locationMediaInput,
            ),
          );
      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        success: response.data?.deleteStockTakeLocationMedia.success ?? false,
        errorCode: response.data?.deleteStockTakeLocationMedia.errorCode ?? '',
        message: response.data?.deleteStockTakeLocationMedia.message ?? '',
        data: response.data?.deleteStockTakeLocationMedia.data != null
            ? mapToMediaAsset(response.data!.deleteStockTakeLocationMedia.data!)
            : null,
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred while deleting stock take media',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  List<MediaAsset> mapToMediaAsset(
    List<
      Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data?
    >
    mediaAssets,
  ) {
    return mediaAssets.map((toElement) {
      return MediaAsset(toElement!.url);
    }).toList();
  }

  Future<StockTakeApiResponse<String>> cloneAndCreate(
    Input$CreateStocktakeInput stockTakeInput,
  ) async {
    try {
      final response = await documentNodeMutationCloneStocktake.execute(
        client,
        url: Uri.tryParse(_apiUrl),
        Mutation$CloneStocktake.fromJson,
        variables: Variables$Mutation$CloneStocktake(input: stockTakeInput),
        cacheProvider: cacheProvider,
        cacheTtl: cacheTtl,
        forceLoad: true,
      );
      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        data: response.data?.cloneStocktake.data?.id,
        success: response.data?.cloneStocktake.success ?? false,
        errorCode: response.data?.cloneStocktake.errorCode ?? '',
        message: response.data?.cloneStocktake.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during clone and create stocktake',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  Future<StockTakeApiResponse<void>> deleteStocktake(String id) async {
    try {
      final response = await documentNodeMutationDeleteStocktake.execute(
        client,
        url: Uri.tryParse(_apiUrl),
        Mutation$DeleteStocktake.fromJson,
        variables: Variables$Mutation$DeleteStocktake(input: id),
        cacheProvider: cacheProvider,
        cacheTtl: cacheTtl,
        forceLoad: true,
      );
      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        success: response.data?.deleteStocktake.success ?? false,
        errorCode: response.data?.deleteStocktake.errorCode ?? '',
        message: response.data?.deleteStocktake.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during delete stocktake',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  Future<Query$SearchInventoryLocations$searchInventoryLocations?>
  searchLocations(Variables$Query$SearchInventoryLocations input) async {
    final response = await documentNodeQuerySearchInventoryLocations.execute(
      client,
      url: Uri.tryParse(_apiUrl),
      Query$SearchInventoryLocations.fromJson,
      variables: input,
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    return response.data?.searchInventoryLocations;
  }

  Future<List<StocktakeScale>> searchScales(String yardCode) async {
    final response = await documentNodeQuerySearchStocktakeScales.execute(
      client,
      url: Uri.tryParse(_apiUrl),
      Query$SearchStocktakeScales.fromJson,
      variables: Variables$Query$SearchStocktakeScales(
        first: 100,
        input: Input$SearchWeighbridgeProfilesInput(yardCode: yardCode),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final profiles = response.data?.searchWeighbridgeProfiles?.nodes;

    final scales = profiles
        ?.expand(
          (p) => p.scales.map(
            (s) => StocktakeScale(
              name: s.name,
              url: s.url,
              scaleNumber: s.scaleNumber,
              cameras: s.cameras
                  .map(
                    (c) => Camera(
                      name: c.name,
                      imageUrl: c.imageUrl ?? '',
                      videoUrl: c.videoUrl ?? '',
                      userName: c.userName,
                      password: c.password,
                    ),
                  )
                  .toList(),
              assetCode: s.assetCode,
              profile: p.name,
              knownTares: p.knownTares
                  .map(
                    (x) => WeightDeduction(
                      value: UomValue.fromValue(
                        x.value.value,
                        x.value.uom.toUomModel(),
                      ),
                      comments: x.comments,
                    ),
                  )
                  .toList(),
            ),
          ),
        )
        .toList();
    return scales ?? [];
  }

  Future<List<SelectOption>> searchUsersForFilter({
    String? conductedBy,
    String? createdBy,
  }) async {
    final response = await documentNodeQuerySearchStocktakesForFilters.execute(
      client,
      url: Uri.tryParse(_apiUrl),
      Query$SearchStocktakesForFilters.fromJson,
      variables: Variables$Query$SearchStocktakesForFilters(
        input: Input$StocktakeSearchFiltersInput(
          conductedBy: conductedBy,
          createdBy: createdBy,
        ),
      ),
    );

    if (response.hasErrors()) {
      return List.empty();
    }

    final results = response.data?.searchStocktakesForFilters;
    if (results == null || results.isEmpty) {
      return List.empty();
    }
    final selectOptions = results
        .map(
          (u) => SelectOption(
            key: conductedBy != null ? u.conductor!.id : u.created.user!.id,
            name: conductedBy != null
                ? '${u.conductor!.firstName} '
                      '${u.conductor!.lastName}'
                : u.created.user!.name,
          ),
        )
        .toList();
    final options = <String>{};
    return selectOptions.where((item) => options.add(item.key)).toList();
  }

  Future<List<String>> searchProducts({
    required String query,
    List<String> productFamilies = const [],
    List<String> productClasses = const [],
    List<String> productLines = const [],
  }) async {
    final response = await documentNodeQuerySearchProducts.execute(
      client,
      url: Uri.tryParse(_apiUrl),
      Query$SearchProducts.fromJson,
      variables: Variables$Query$SearchProducts(
        query: '$query*',
        productFamilies: productFamilies,
        productClasses: productClasses,
        productLines: productLines,
      ),
    );

    if (response.hasErrors()) {
      return List.empty();
    }

    final results = response.data?.products?.nodes;
    if (results == null || results.isEmpty) {
      return List.empty();
    }
    return results.map((s) => s.code).toSet().toList();
  }

  Future<List<String>> searchProductClasses({
    required String query,
    List<String> productFamilies = const [],
    List<String> productCodes = const [],
    List<String> productLines = const [],
  }) async {
    final response = await documentNodeQuerySearchProductClasses.execute(
      client,
      url: Uri.tryParse(_apiUrl),
      Query$SearchProductClasses.fromJson,
      variables: Variables$Query$SearchProductClasses(
        query: '$query*',
        productFamilies: productFamilies,
        productCodes: productCodes,
        productLines: productLines,
      ),
    );

    if (response.hasErrors()) {
      return List.empty();
    }
    return response.data?.productClasses ?? [];
  }

  Future<List<String>> searchProductLines({
    required String query,
    List<String> productFamilies = const [],
    List<String> productClasses = const [],
    List<String> productCodes = const [],
  }) async {
    final response = await documentNodeQuerySearchProductLines.execute(
      client,
      url: Uri.tryParse(_apiUrl),
      Query$SearchProductLines.fromJson,
      variables: Variables$Query$SearchProductLines(
        query: '$query*',
        productFamilies: productFamilies,
        productClasses: productClasses,
        productCodes: productCodes,
      ),
    );

    if (response.hasErrors()) {
      return List.empty();
    }
    return response.data?.productLines ?? [];
  }

  Future<List<String>> searchProductFamilies({
    required String query,
    List<String> productClasses = const [],
    List<String> productCodes = const [],
    List<String> productLines = const [],
  }) async {
    final response = await documentNodeQueryGetProductFamilies.execute(
      client,
      url: Uri.tryParse(_apiUrl),
      Query$GetProductFamilies.fromJson,
      variables: Variables$Query$GetProductFamilies(
        query: query,
        productClasses: productClasses,
        productCodes: productCodes,
        productLines: productLines,
      ),
    );

    if (response.hasErrors()) {
      return List.empty();
    }

    return response.data?.productFamilies ?? List.empty();
  }

  Future<StockTake?> getStockTake({
    required String id,
    bool cloneCreate = false,
  }) async {
    final response = await documentNodeQueryGetStocktake.execute(
      client,
      url: Uri.tryParse(_apiUrl),
      Query$GetStocktake.fromJson,
      variables: Variables$Query$GetStocktake(id: id),
    );

    if (response.hasErrors() ||
        response.data == null ||
        response.data!.stocktake.status == Enum$StocktakeStatus.DELETED) {
      return null;
    }
    return _mapToStockTake(response.data!.stocktake, cloneCreate: cloneCreate);
  }

  Future<StockTakeApiResponse<void>> takeSnapshots({
    required String id,
    required bool overrideExisting,
  }) async {
    try {
      final response = await documentNodeMutationTakeSnapshots.execute(
        client,
        url: Uri.tryParse(_apiUrl),
        Mutation$TakeSnapshots.fromJson,
        variables: Variables$Mutation$TakeSnapshots(
          input: id,
          overrideExisting: overrideExisting,
        ),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        success: response.data?.takeSnapshots.success ?? false,
        errorCode: response.data?.takeSnapshots.errorCode ?? '',
        message: response.data?.takeSnapshots.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during take snapshots',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  Future<StockTakeApiResponse<void>> completeStockTake({
    required String id,
  }) async {
    try {
      final response = await documentNodeMutationCompleteStocktake.execute(
        client,
        url: Uri.tryParse(_apiUrl),
        Mutation$CompleteStocktake.fromJson,
        variables: Variables$Mutation$CompleteStocktake(id: id),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        success: response.data?.completeStockTake.success ?? false,
        errorCode: response.data?.completeStockTake.errorCode ?? '',
        message: response.data?.completeStockTake.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during complete stocktake',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  Future<StockTakeApiResponse<void>> voteForStocktake({
    required Input$ApproveOrRejectStocktakeApprovalInput input,
  }) async {
    try {
      final response = await documentNodeMutationVoteForStocktakeWorkflow
          .execute(
            client,
            url: Uri.tryParse(_apiUrl),
            Mutation$VoteForStocktakeWorkflow.fromJson,
            variables: Variables$Mutation$VoteForStocktakeWorkflow(
              input: input,
            ),
          );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        success:
            response.data?.approveOrRejectStocktakeApproval.success ?? false,
        errorCode:
            response.data?.approveOrRejectStocktakeApproval.errorCode ?? '',
        message: response.data?.approveOrRejectStocktakeApproval.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred when voting stocktake',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  Future<List<Fragment$StocktakeApprovalFields>> _getStocktakeWorkflowHistory({
    required String id,
  }) async {
    final response = await documentNodeQueryGetStocktakeWorkflowHistory.execute(
      client,
      url: Uri.tryParse(_apiUrl),
      Query$GetStocktakeWorkflowHistory.fromJson,
      variables: Variables$Query$GetStocktakeWorkflowHistory(id: id),
    );

    if (response.hasErrors()) {
      return [];
    }

    return response.data?.stocktakeWorkFlowHistory ?? [];
  }

  Future<StockTakeApiResponse<void>> updateStockTakeLocationStatus({
    required String stockTakeId,
    required String locationId,
    required Enum$StockTakeLocationStatus status,
  }) async {
    try {
      final input = Input$UpdateLocationStatusInput(
        stockTakeId: stockTakeId,
        locationId: locationId,
        status: status,
      );

      final response = await documentNodeMutationUpdateStockTakeLocationStatus
          .execute(
            client,
            url: Uri.tryParse(_apiUrl),
            Mutation$UpdateStockTakeLocationStatus.fromJson,
            variables: Variables$Mutation$UpdateStockTakeLocationStatus(
              input: input,
            ),
          );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        success: response.data?.updateStockTakeLocationStatus.success ?? false,
        errorCode: response.data?.updateStockTakeLocationStatus.errorCode ?? '',
        message: response.data?.updateStockTakeLocationStatus.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during update stocktake location status',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  List<LocationWeightModel> _mapWeightsFromMutation(
    List<Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights>
    weights,
  ) {
    return weights.map((toElement) {
      final grossWeight = toElement.grossWeight;
      final tareWeight = toElement.tareWeight;
      return LocationWeightModel(
        id: toElement.id,
        title: toElement.title,
        weighedDateTime: toElement.created.at.toLocal(),
        weighedById: toElement.created.userInfoId,
        weighedByName: toElement.created.userName,
        grossWeight: UomValue.fromValue(
          grossWeight.value,
          grossWeight.uom.toUomModel(),
          isRate: grossWeight.isRate,
        ),
        tareWeight: UomValue.fromValue(
          tareWeight.value,
          tareWeight.uom.toUomModel(),
          isRate: tareWeight.isRate,
        ),
        grossWeightScaleIdentifier: toElement.grossWeightScaleIdentifier,
        tareWeightScaleIdentifier: toElement.tareWeightScaleIdentifier,
        grossWeightSerialNumber: toElement.grossWeightSerialNumber,
        tareWeightSerialNumber: toElement.tareWeightSerialNumber,
        isDeleted: toElement.isDeleted,
        captureMethod: toElement.captureMethod,
      );
    }).toList();
  }

  StockTake _mapToStockTake(
    Query$GetStocktake$stocktake gqlStocktake, {
    bool cloneCreate = false,
  }) {
    final currentLevel = gqlStocktake.workflow?.levels
        .firstWhereOrNull((s) => s.key == gqlStocktake.workflow?.currentLevel)
        ?.value;
    return StockTake(
      id: cloneCreate ? null : gqlStocktake.id,
      name: gqlStocktake.name,
      yardCode: gqlStocktake.yardCode,
      createdDate: gqlStocktake.created.at,
      modifiedDate: gqlStocktake.modified.at,
      conductedBy: gqlStocktake.conductedBy,
      status: cloneCreate ? Enum$StocktakeStatus.OPEN : gqlStocktake.status,
      originator: gqlStocktake.created.user!.name,
      originatorId: gqlStocktake.created.user!.id,
      productFamily: gqlStocktake.productFamily,
      isRoutineCheck: gqlStocktake.isRoutineCheck,
      defaultUom: gqlStocktake.defaultUom,
      currentWfLevel: gqlStocktake.workflow?.currentLevel,
      currentWfEmails: currentLevel?.userEmails ?? [],
      currencyCode: gqlStocktake.currencyCode,
      isVotedCurrentLevel:
          (currentLevel?.approvers.isNotEmpty ?? false) ||
          (currentLevel?.rejectors.isNotEmpty ?? false),
      submitter: gqlStocktake.submitted?.userName,
      comments: gqlStocktake.comments
          .map(
            (s) => CommentModel(
              userName: s.created.userName,
              userId: s.created.userInfoId,
              date: s.created.at,
              content: s.content,
            ),
          )
          .toList(),
      conductor:
          '${gqlStocktake.conductor?.firstName ?? ''} '
          '${gqlStocktake.conductor?.lastName ?? ''}',
      locations: gqlStocktake.stocktakeLocations.map((loc) {
        return StocktakeLocation(
          netWeightMT: UomValue.weight(loc.netWeightMt ?? 0, Uom.mt),
          rate: loc.location?.rate != null
              ? UomValue.fromJson(loc.location!.rate.toJson())
              : null,
          active: loc.location?.active ?? false,
          description: loc.location?.description ?? '',
          code: loc.location?.code ?? '',
          id: loc.locationId,
          productId: loc.productId ?? '',
          productClass: loc.product?.classification.$class ?? '',
          productCode: loc.product?.code ?? '',
          productDesc: loc.product?.description ?? '',
          productLine: loc.product?.classification.line ?? '',
          locationType:
              loc.location?.inventoryLocationType ??
              Enum$InventoryLocationType.WEIGHTED,
          status: loc.status,
          weightVariance: UomValue.fromValue(
            loc.weightVariance.value,
            loc.weightVariance.uom.toUomModel(),
          ),
          valueVariance: loc.valueVariance,
          mediaAssets: loc.mediaAssets.map((toElement) {
            return MediaAsset(toElement.url);
          }).toList(),
          snapshot: LocationSnapshotModel(
            snapshotCount: loc.snapshot?.currentCount,
            snapshotDate: loc.snapshot?.created.at,
            snapshotRate: UomValue.fromValue(
              loc.snapshot?.rate.value ?? 0,
              loc.snapshot?.rate.uom.toUomModel() ?? Uom.mt,
              isRate: true,
            ),
            snapshotWeight: UomValue.fromValue(
              loc.snapshot?.currentWeight.value ?? 0,
              loc.snapshot?.currentWeight.uom.toUomModel() ?? Uom.mt,
            ),
            snapshotDeltaWeight: UomValue.fromValue(
              loc.snapshot?.deltaWeight.value ?? 0,
              loc.snapshot?.deltaWeight.uom.toUomModel() ?? Uom.mt,
            ),
            unpricedWeight: UomValue.fromValue(
              loc.snapshot?.unpricedWeight.value ?? 0,
              loc.snapshot?.unpricedWeight.uom.toUomModel() ?? Uom.mt,
            ),
            unpricedDeltaWeight: UomValue.fromValue(
              loc.snapshot?.unpricedDeltaWeight.value ?? 0,
              loc.snapshot?.unpricedDeltaWeight.uom.toUomModel() ?? Uom.mt,
            ),
          ),
          currentWeightLineId: loc.takenWeights.isNotEmpty
              ? loc.takenWeights.map((x) => x.id).max
              : 0,
          takenWeights: loc.takenWeights.where((x) => !x.isDeleted).map((
            weight,
          ) {
            final user = weight.created.user;
            return LocationWeightModel(
              id: weight.id,
              title: weight.title,
              grossWeight: UomValue.fromValue(
                weight.grossWeight.value,
                weight.grossWeight.uom.toUomModel(),
                isRate: weight.grossWeight.isRate,
              ),
              tareWeight: UomValue.fromValue(
                weight.tareWeight.value,
                weight.tareWeight.uom.toUomModel(),
                isRate: weight.tareWeight.isRate,
              ),
              weighedById: user!.id,
              weighedByName: user.name,
              weighedDateTime: weight.created.at,
              grossWeightScaleIdentifier: weight.grossWeightScaleIdentifier,
              tareWeightScaleIdentifier: weight.tareWeightScaleIdentifier,
              grossWeightSerialNumber: weight.grossWeightSerialNumber,
              tareWeightSerialNumber: weight.tareWeightSerialNumber,
              isDeleted: weight.isDeleted,
              comments: weight.comments
                  .map(
                    (s) => CommentModel(
                      userId: s.created.userInfoId,
                      userName: s.created.userName,
                      date: s.created.at,
                      content: s.content,
                    ),
                  )
                  .toList(),
              captureMethod: weight.captureMethod,
            );
          }).toList(),
          comments: loc.comments
              .map(
                (s) => CommentModel(
                  userId: s.created.userInfoId,
                  userName: s.created.userName,
                  date: s.created.at,
                  content: s.content,
                ),
              )
              .toList(),
        );
      }).toList(),
    );
  }

  Future<StockTakeApiResponse<void>> updateDeltaWeight(String input) async {
    try {
      final response = await documentNodeMutationUpdateDeltaWeight.execute(
        client,
        url: Uri.tryParse(_apiUrl),
        Mutation$UpdateDeltaWeight.fromJson,
        variables: Variables$Mutation$UpdateDeltaWeight(
          input: Input$UpdateDeltaWeightInput(stocktakeId: input),
        ),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        success: response.data?.updateDeltaWeight.success ?? false,
        message: response.data?.updateDeltaWeight.message ?? '',
        errorCode: response.data?.updateDeltaWeight.errorCode ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred while updating delta weight',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  Future<StockTakeApiResponse<void>> sendStocktakeToWorkflow(
    String input,
  ) async {
    try {
      final response = await documentNodeMutationExecuteStocktakeApproval
          .execute(
            client,
            url: Uri.tryParse(_apiUrl),
            Mutation$ExecuteStocktakeApproval.fromJson,
            variables: Variables$Mutation$ExecuteStocktakeApproval(
              stocktakeId: input,
            ),
          );
      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      return StockTakeApiResponse(
        success: response.data?.executeApprovalForStocktake.success ?? false,
        message: response.data?.executeApprovalForStocktake.message ?? '',
        errorCode: response.data?.executeApprovalForStocktake.errorCode ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred while sending stocktake to workflow',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  double calculateTotalWeight(List<LocationWeightModel> weights, Uom uom) {
    double totalWeight = 0;
    for (final weight in weights) {
      totalWeight += weight
          .getNetWeight(weights.last.grossWeight?.uom ?? uom)
          .value;
    }
    return totalWeight;
  }

  Future<StockTakeApiResponse<List<StocktakeLocation>>> manualUpdateStockTake(
    Input$StockTakeManualUpdateInput input,
  ) async {
    try {
      final response = await documentNodeMutationManualUpdateStockTake.execute(
        client,
        url: Uri.tryParse(_apiUrl),
        Mutation$ManualUpdateStockTake.fromJson,
        variables: Variables$Mutation$ManualUpdateStockTake(input: input),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      final data = _mapToStockTakeLocations(
        response.data!.manualUpdateStockTake,
      );
      return StockTakeApiResponse(
        success: response.data?.manualUpdateStockTake.success ?? false,
        message: response.data?.manualUpdateStockTake.message ?? '',
        errorCode: response.data?.manualUpdateStockTake.errorCode ?? '',
        data: data,
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during manual update stocktake',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  List<StocktakeLocation> _mapToStockTakeLocations(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake gqlStocktake,
  ) {
    return gqlStocktake.data!.stocktakeLocations.map((loc) {
      return StocktakeLocation(
        netWeightMT: UomValue.weight(loc.netWeightMt ?? 0, Uom.mt),
        rate: loc.location?.rate != null
            ? UomValue.fromJson(loc.location!.rate.toJson())
            : null,
        active: loc.location?.active ?? false,
        description: loc.location?.description ?? '',
        code: loc.location?.code ?? '',
        id: loc.locationId,
        productId: loc.productId ?? '',
        productClass: loc.product?.classification.$class ?? '',
        productCode: loc.product?.code ?? '',
        productDesc: loc.product?.description ?? '',
        productLine: loc.product?.classification.line ?? '',
        locationType:
            loc.location?.inventoryLocationType ??
            Enum$InventoryLocationType.WEIGHTED,
        status: loc.status,
        weightVariance: UomValue.fromValue(
          loc.weightVariance.value,
          loc.weightVariance.uom.toUomModel(),
        ),
        valueVariance: loc.valueVariance,
        snapshot: LocationSnapshotModel(
          snapshotCount: loc.snapshot?.currentCount,
          snapshotDate: loc.snapshot?.created.at,
          snapshotRate: UomValue.fromValue(
            loc.snapshot?.rate.value ?? 0,
            loc.snapshot?.rate.uom.toUomModel() ?? Uom.mt,
            isRate: true,
          ),
          snapshotWeight: UomValue.fromValue(
            loc.snapshot?.currentWeight.value ?? 0,
            loc.snapshot?.currentWeight.uom.toUomModel() ?? Uom.mt,
          ),
          snapshotDeltaWeight: UomValue.fromValue(
            loc.snapshot?.deltaWeight.value ?? 0,
            loc.snapshot?.deltaWeight.uom.toUomModel() ?? Uom.mt,
          ),
          unpricedWeight: UomValue.fromValue(
            loc.snapshot?.unpricedWeight.value ?? 0,
            loc.snapshot?.unpricedWeight.uom.toUomModel() ?? Uom.mt,
          ),
          unpricedDeltaWeight: UomValue.fromValue(
            loc.snapshot?.unpricedDeltaWeight.value ?? 0,
            loc.snapshot?.unpricedDeltaWeight.uom.toUomModel() ?? Uom.mt,
          ),
        ),
        currentWeightLineId: loc.takenWeights.isNotEmpty
            ? loc.takenWeights.map((x) => x.id).max
            : 0,
        takenWeights: loc.takenWeights.where((x) => !x.isDeleted).map((weight) {
          final user = weight.created.user;
          return LocationWeightModel(
            id: weight.id,
            title: weight.title,
            grossWeight: UomValue.fromValue(
              weight.grossWeight.value,
              weight.grossWeight.uom.toUomModel(),
              isRate: weight.grossWeight.isRate,
            ),
            tareWeight: UomValue.fromValue(
              weight.tareWeight.value,
              weight.tareWeight.uom.toUomModel(),
              isRate: weight.tareWeight.isRate,
            ),
            weighedById: user!.id,
            weighedByName: user.name,
            weighedDateTime: weight.created.at,
            grossWeightScaleIdentifier: weight.grossWeightScaleIdentifier,
            tareWeightScaleIdentifier: weight.tareWeightScaleIdentifier,
            grossWeightSerialNumber: weight.grossWeightSerialNumber,
            tareWeightSerialNumber: weight.tareWeightSerialNumber,
            isDeleted: weight.isDeleted,
            comments: weight.comments.isNotEmpty
                ? weight.comments
                      .map(
                        (s) => CommentModel(
                          userId: s.created.userInfoId,
                          userName: s.created.userName,
                          date: s.created.at,
                          content: s.content,
                        ),
                      )
                      .toList()
                : [],
            captureMethod: weight.captureMethod,
          );
        }).toList(),
        comments: loc.comments
            .map(
              (s) => CommentModel(
                userId: s.created.userInfoId,
                userName: s.created.userName,
                date: s.created.at,
                content: s.content,
              ),
            )
            .toList(),
      );
    }).toList();
  }

  Future<Uint8List?> getPrintData(
    AppConfig appConfig,
    StockTakePrintModel stockTake,
  ) async {
    try {
      final json = jsonEncode({
        'documentType': 'StockTakeLocations',
        'returnPdf': true,
        'documentData': {'StockTakePayload': stockTake.toJson()},
      });

      final url = Uri.parse('${appConfig.pdfPiPrintUrl}/api/print');
      final response = await client.post(url, body: json);

      if (response.statusCode == 200) {
        return response.bodyBytes;
      }
      return null;
    } on Exception catch (e) {
      EmrLogger.error(
        'Error fetching print data for stock take',
        error: e,
        stackTrace: StackTrace.current,
      );
    }
    return null;
  }

  Future<List<HistoryTimelineModel>> prepareWorkflowTimeline({
    required StockTake stockTake,
    required BuildContext context,
  }) async {
    final sharedService = Provider.of<StockTakeSharedService>(
      context,
      listen: false,
    );
    await sharedService.loadWorkflowTitles(context.coreApi.referenceData);

    if (!context.mounted) return [];

    final timeLines = <HistoryTimelineModel>[
      HistoryTimelineModel(
        title: context.l10n.stockTakeCreated,
        dateTime: stockTake.createdDate,
        statusType: StatusType.positive,
        userName: stockTake.originator,
      ),
    ];

    final workFlows = await _getStocktakeWorkflowHistory(id: stockTake.id!);

    if (context.mounted) {
      if (workFlows.isEmpty) {
        timeLines.addAll(
          [
            context.l10n.submittedForApproval,
            context.l10n.workflowNotStarted,
            context.l10n.completed,
          ].map((s) => HistoryTimelineModel(title: s)),
        );
        return timeLines;
      }

      var userMap = <String, Fragment$StocktakeApprovalFields$levelUsers>{};
      if (workFlows.first.levelUsers != null) {
        userMap = {
          for (final user in workFlows.first.levelUsers!)
            user.emailAddress.toLowerCase(): user,
        };
      }
      for (final wfa in workFlows) {
        timeLines.add(
          HistoryTimelineModel(
            title: context.l10n.submittedForApproval,
            dateTime: wfa.created.at,
            statusType: StatusType.positive,
            userName: wfa.created.user?.name ?? '',
          ),
        );

        for (final level in wfa.levels) {
          final levelUsers = level.value.userEmails.length == 1
              ? _getUserName(userMap, level.value.userEmails.first)
              : level.value.userEmails
                    .map((e) => _getUserName(userMap, e))
                    .join(', ');

          timeLines.addAll(
            level.value.notifiedOn.map(
              (n) => HistoryTimelineModel(
                title: HelperMethods.getWorkFlowTitle(
                  context,
                  level.key,
                  context.l10n.notified,
                  sharedService.workflowTitles,
                ),
                dateTime: n,
                statusType: StatusType.positive,
                comments: context.l10n.notificationSentTo(levelUsers),
              ),
            ),
          );

          if (level.value.status == Enum$StocktakeApprovalStatus.REJECTED) {
            timeLines.add(
              HistoryTimelineModel(
                title: HelperMethods.getWorkFlowTitle(
                  context,
                  level.key,
                  context.l10n.rejected,
                  sharedService.workflowTitles,
                ),
                dateTime: level.value.rejectors.firstOrNull?.value.created.at,
                statusType: StatusType.warning,
                userName: _getUserName(
                  userMap,
                  level.value.rejectors.firstOrNull?.key ?? '',
                ),
                comments: level.value.rejectors.firstOrNull?.value.content,
              ),
            );
            break; //if any previous workflow rejected
          } else if (level.value.status ==
              Enum$StocktakeApprovalStatus.APPROVED) {
            timeLines.add(
              HistoryTimelineModel(
                title: HelperMethods.getWorkFlowTitle(
                  context,
                  level.key,
                  context.l10n.approved,
                  sharedService.workflowTitles,
                ),
                dateTime: level.value.approvers.firstOrNull?.value.created.at,
                statusType: StatusType.positive,
                userName: _getUserName(
                  userMap,
                  level.value.approvers.firstOrNull?.key ?? '',
                ),
                comments: level.value.approvers.firstOrNull?.value.content,
              ),
            );
          } else {
            timeLines.add(
              HistoryTimelineModel(
                title: HelperMethods.getWorkFlowTitle(
                  context,
                  level.key,
                  context.l10n.awaitingApproval,
                  sharedService.workflowTitles,
                ),
              ),
            );
          }
        }
      }
      final isFailed = stockTake.status == Enum$StocktakeStatus.FAILED;
      final lastWf = workFlows.lastOrNull;
      final isCompleted =
          (lastWf?.completed ?? false) &&
          lastWf?.stocktakeStatus != Enum$StocktakeApprovalStatus.REJECTED &&
          !isFailed;

      if (isFailed) {
        timeLines.add(
          HistoryTimelineModel(
            title: context.l10n.stocktakeFailureTitle,
            comments: context.l10n.stocktakeFailureMsg,
            statusType: StatusType.negative,
            dateTime: stockTake.modifiedDate,
          ),
        );
      }
      timeLines.add(
        HistoryTimelineModel(
          title: context.l10n.completed,
          dateTime: isCompleted ? lastWf!.modified.at : null,
          statusType: isCompleted
              ? StatusType.positive
              : StatusType.information,
        ),
      );
    }
    return timeLines;
  }

  String _getUserName(
    Map<String, Fragment$StocktakeApprovalFields$levelUsers> userMap,
    String email,
  ) {
    final user = userMap[email.toLowerCase()];
    if (user != null) {
      return '${user.firstName} ${user.lastName}';
    }
    return '';
  }

  Future<Uint8List?> exportStockTake(String stockTakeId) async {
    try {
      final token = await FirebaseLogin.getToken();
      final response = await client.post(
        Uri.parse('api/stockTake/export?stockTakeId=$stockTakeId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return response.bodyBytes;
      }
      EmrLogger.error(
        'Failed to export stock take: '
        '${response.statusCode} - ${response.body}',
      );
      return null;
    } catch (e) {
      EmrLogger.error('Failed to export stock take: $e');
      return null;
    }
  }

  Future<StockTakeApiResponse<List<LocationWeightModel>>>
  moveWeightLineToAnotherLocation(Input$MoveWeightLineInput input) async {
    try {
      final response = await documentNodeMutationMoveWeightLine.execute(
        client,
        url: Uri.tryParse(_apiUrl),
        Mutation$MoveWeightLine.fromJson,
        variables: Variables$Mutation$MoveWeightLine(input: input),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      final weights = _mapWeightsFromFragment(
        response.data!.moveWeightLineToAnotherLocation.data?.stocktakeLocations
                .firstWhere((x) => x.locationId == input.sourceLocationId)
                .takenWeights ??
            [],
      );
      return StockTakeApiResponse(
        data: weights,
        success:
            response.data?.moveWeightLineToAnotherLocation.success ?? false,
        errorCode:
            response.data?.moveWeightLineToAnotherLocation.errorCode ?? '',
        message: response.data?.moveWeightLineToAnotherLocation.message ?? '',
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occured while moving weight line',
        error: ex,
        stackTrace: trace,
      );
      return StockTakeApiResponse.exception(message: ex.toString());
    }
  }

  List<LocationWeightModel> _mapWeightsFromFragment(
    List<Fragment$StocktakeFields$stocktakeLocations$takenWeights> weights,
  ) {
    return weights.map((toElement) {
      final grossWeight = toElement.grossWeight;
      final tareWeight = toElement.tareWeight;
      return LocationWeightModel(
        id: toElement.id,
        title: toElement.title,
        weighedDateTime: toElement.created.at.toLocal(),
        weighedById: toElement.created.userInfoId,
        weighedByName: toElement.created.userName,
        grossWeight: UomValue.fromValue(
          grossWeight.value,
          grossWeight.uom.toUomModel(),
        ),
        tareWeight: UomValue.fromValue(
          tareWeight.value,
          tareWeight.uom.toUomModel(),
        ),
        isDeleted: toElement.isDeleted,
        captureMethod: toElement.captureMethod,
      );
    }).toList();
  }
}
