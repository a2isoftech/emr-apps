import 'dart:convert';

import 'package:emr_core_api/graphql/mutations/reference_data/save_weighbridge_configuration.graphql.dart';
import 'package:emr_core_api/graphql/queries/reference_data/get_weighbridge_configuration.graphql.dart';
import 'package:emr_core_api/graphql/queries/reference_data/search_weighbridge_configurations.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_core_api/models/api_response.dart';
import 'package:emr_core_api/models/document.dart';
import 'package:emr_core_api/services/reference_data_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/weighbridge/weighbridge.dart';

extension WighbridgeConfigurationsService on ReferenceDataService {
Future<
          ApiResponse<
              (List<WeighbridgeConfiguration>,
               EmrQueryGraphQLMetadata<dynamic>)>>
      searchWeighbridgeConfigurations({
    String? query,
    String? yardId,
    String? before,
    String? after,
    int? first,
    int? last,
  }) async {
    try {
      var formattedSearchQuery = '';

      if (query != null && query.isNotEmpty) {
        formattedSearchQuery = '$query*';
      }

      final variables = Variables$Query$SearchWeighbridgeConfigurations(
        query: formattedSearchQuery,
        yardId: yardId,
        before: before,
        after: after,
        first: first,
        last: last,
      );

      final response = await documentNodeQuerySearchWeighbridgeConfigurations
      .execute(
        httpClient,
        Query$SearchWeighbridgeConfigurations.fromJson,
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
          message: 'Failed to load weighbridge configurations',
        );
      }

      final weighbridgeConfigurations = response
              .data?.searchWeighbridgeConfigurations?.nodes!
              .map((element) => WeighbridgeConfiguration
              .fromJson(element.toJson()),)
              .toList() ??
          [];

      return ApiResponse(
        data: (
          weighbridgeConfigurations,
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            response.data?.searchWeighbridgeConfigurations?.totalCount ?? 0,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage: response.data?.searchWeighbridgeConfigurations
                      ?.pageInfo.hasPreviousPage ??
                  false,
              hasNextPage: response
                      .data?.searchWeighbridgeConfigurations?.
                      pageInfo.hasNextPage ??
                  false,
              startCursor: response
                  .data?.searchWeighbridgeConfigurations?.
                  pageInfo.startCursor,
              endCursor:
                  response.data?.searchWeighbridgeConfigurations?.
                  pageInfo.endCursor,
            ),
          )
        ),
      );
    }
    catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to load weighbridge configurations',
      );
    }
  }

Future<ApiResponse<Document<WeighbridgeConfiguration>>>
      getWeighbridgeConfiguration({
        required String id,
      }) async
      {
        try{
          final response = 
            await documentNodeQueryGetWeighbridgeConfiguration
            .execute(
            httpClient,
            Query$GetWeighbridgeConfiguration.fromJson,
            variables: Variables$Query$GetWeighbridgeConfiguration(id: id),
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
              message: 'Failed to load weighbridge configuration',
            );
          }
          final responseData = WeighbridgeConfiguration.fromJson(
            response.data!.weighbridgeConfiguration.entity.toJson(),
          );

          return ApiResponse(
            data: Document(
              entity: responseData,
              changeVector: response.data!.weighbridgeConfiguration
              .changeVector,
            ),
          );
        }
        catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to load weighbridge configuration',
      );
    }
      }

Future<ApiResponse<Document<WeighbridgeConfiguration>>> 
    saveWeighbridgeConfiguration({
    required Document<WeighbridgeConfiguration> configDocument,
  }) async {
    try {
      final variables = Variables$Mutation$SaveWeighbridgeConfiguration(
        input: Input$DocumentOfWeighbridgeConfigurationInput(
          changeVector: configDocument.changeVector,
          entity: Input$WeighbridgeConfigurationInput.fromJson(
            jsonDecode(jsonEncode(configDocument.entity))
                  as Map<String, dynamic>,
          ),
        ),
      );
      
      final response = await documentNodeMutationSaveWeighbridgeConfiguration
        .execute(
          httpClient,
          Mutation$SaveWeighbridgeConfiguration.fromJson,
          variables: variables,
        );
      
      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: response.errors!.map((error) => error.message).join(','),
        );
      }
      final responseWeighbridgeConfig = WeighbridgeConfiguration.fromJson(
        response.data!.saveWeighbridgeConfigurationDocument.entity.toJson(),
      );
      return ApiResponse(
        data: Document<WeighbridgeConfiguration>(
          entity: responseWeighbridgeConfig,
          changeVector:
              response.data!.saveWeighbridgeConfigurationDocument.changeVector,
        ),
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to save Weighbridge Configuration',
      );
    }
  }
}
