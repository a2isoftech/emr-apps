import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/queries/inventory/get_weighbridge_profiles.graphql.dart';
import 'package:emr_core_api/models/document.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

extension WighbridgeProfilesService on ReferenceDataService {
  Future<
          ApiResponse<
              (List<WeighbridgeProfile>, EmrQueryGraphQLMetadata<dynamic>)>>
      searchWeighbridgeProfiles({
    String? query,
    String? yardCode,
    String? before,
    String? after,
    int? first,
    int? last,
  }) async {
    try {
      var formattedSearchQuery = '';

      if (query != null && query.isNotEmpty) {
        final tokens = query.split(' ');
        formattedSearchQuery = '${tokens.join('* ')}*';
      }

      final variables = Variables$Query$SearchWeighbridgeProfiles(
        query: formattedSearchQuery,
        yardCode: yardCode,
        before: before,
        after: after,
        first: first,
        last: last,
      );

      final response = await documentNodeQuerySearchWeighbridgeProfiles.execute(
        httpClient,
        Query$SearchWeighbridgeProfiles.fromJson,
        variables: variables,
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: response.errors!.map((error) => error.message).join(','),
        );
      }

      if (response.data == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to load weighbridge profiles',
        );
      }

      final weighbridgeProfiels = response
              .data?.searchWeighbridgeProfiles?.nodes!
              .map((element) => WeighbridgeProfile.fromJson(element.toJson()))
              .toList() ??
          [];

      return ApiResponse(
        data: (
          weighbridgeProfiels,
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            response.data?.searchWeighbridgeProfiles?.totalCount ?? 0,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage: response.data?.searchWeighbridgeProfiles
                      ?.pageInfo.hasPreviousPage ??
                  false,
              hasNextPage: response
                      .data?.searchWeighbridgeProfiles?.pageInfo.hasNextPage ??
                  false,
              startCursor: response
                  .data?.searchWeighbridgeProfiles?.pageInfo.startCursor,
              endCursor:
                  response.data?.searchWeighbridgeProfiles?.pageInfo.endCursor,
            ),
          )
        ),
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to load weighbridge profiles',
      );
    }
  }

  Future<ApiResponse<Document<WeighbridgeProfile>>> getWeighbridgeProfile({
    required String id,
  }) async {
    try {
      final response = await documentNodeQueryGetWeighbridgeProfile.execute(
        httpClient,
        Query$GetWeighbridgeProfile.fromJson,
        variables: Variables$Query$GetWeighbridgeProfile(id: id),
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: response.errors!.map((error) => error.message).join(','),
        );
      }

      if (response.data?.weighbridgeProfile == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to load weighbridge profile',
        );
      }
      final responseProfile = WeighbridgeProfile.fromJson(
        response.data!.weighbridgeProfile.entity.toJson(),
      );

      return ApiResponse(
        data: Document(
          entity: responseProfile,
          changeVector: response.data!.weighbridgeProfile.changeVector,
        ),
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to load weighbridge profile',
      );
    }
  }

  Future<ApiResponse<Document<WeighbridgeProfile>>> saveWeighbridgeProfile({
    required Document<WeighbridgeProfile> profileDocument,
  }) async {
    try {
      final variables = Variables$Mutation$SaveWeighbridgeProfile(
        input: Input$DocumentOfWeighbridgeProfileInput(
          changeVector: profileDocument.changeVector,
          entity: Input$WeighbridgeProfileInput.fromJson(
            jsonDecode(jsonEncode(profileDocument.entity))
                as Map<String, dynamic>,
          ),
        ),
      );
      final response = await documentNodeMutationSaveWeighbridgeProfile.execute(
        httpClient,
        Mutation$SaveWeighbridgeProfile.fromJson,
        variables: variables,
      );
      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: response.errors!.map((error) => error.message).join(','),
        );
      }
      final responseWeighbridgeProfile = WeighbridgeProfile.fromJson(
        response.data!.saveWeighbridgeProfileDocument.entity.toJson(),
      );
      return ApiResponse(
        data: Document<WeighbridgeProfile>(
          entity: responseWeighbridgeProfile,
          changeVector:
              response.data!.saveWeighbridgeProfileDocument.changeVector,
        ),
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to save Weighbridge Profile',
      );
    }
  }

  Future<ApiResponse<Document<WeighbridgeProfile>>> activateWeighbridgeProfile(
    String id,
  ) async {
    return updateWeighbridgeProfileActivation(id, active: true);
  }

  Future<ApiResponse<Document<WeighbridgeProfile>>>
      deactivateWeighbridgeProfile(
    String id,
  ) async {
    return updateWeighbridgeProfileActivation(id, active: false);
  }

  Future<ApiResponse<Document<WeighbridgeProfile>>>
      updateWeighbridgeProfileActivation(
    String id, {
    required bool active,
  }) async {
    final weighbridgeProfileResponse = await getWeighbridgeProfile(id: id);
    weighbridgeProfileResponse.data!.entity.active = active;
    return saveWeighbridgeProfile(
      profileDocument: weighbridgeProfileResponse.data!,
    );
  }

  Future<ApiResponse<List<WeighbridgeProfile>>> getWeighbridgeProfiles({
    required String yardCode,
    bool includeScales = true,
    bool includeCameras = true,
  }) async {
    try {
      final response = await documentNodeQueryGetWeighbridgeProfiles.execute(
        httpClient,
        Query$GetWeighbridgeProfiles.fromJson,
        variables: Variables$Query$GetWeighbridgeProfiles(
          yardCode: yardCode,
          includeScales: includeScales,
          includeCameras: includeCameras,
        ),
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: response.errors!.map((error) => error.message).join(','),
        );
      }

      if (response.data?.weighbridgeProfiles == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to retrieve weighbridge profiles',
        );
      }

      final responseProfiles = response.data?.weighbridgeProfiles?.nodes!
              .map((element) => WeighbridgeProfile.fromJson(element.toJson()))
              .toList() ??
          [];

      return ApiResponse(data: responseProfiles);
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to retrieve weighbridge profiles',
      );
    }
  }
}
