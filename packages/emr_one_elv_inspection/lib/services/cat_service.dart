import 'dart:convert';
import 'dart:core';

import 'package:emr_core_api/graphql/queries/inventory/techemat/search_techemat_cats.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/api_response.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:http/http.dart';

class CatRepository {
  CatRepository({required this.httpClient, required this.appConfig});
  final BaseClient httpClient;
  final AppConfig appConfig;

  Future<ApiResponse<List<TechCatSearchModel>>> getListOfCatsForVRM({
    required String vrm,
    required String yardCode,
  }) async {
    try {
      final uri = Uri.parse(
        '${appConfig.catApiUrl}/api/CatLookup?VRM=$vrm&YardCode=$yardCode',
      );
      final t = await FirebaseLogin.getToken();
      final response = await httpClient.get(
        uri,
        headers: {'Authorization': 'Bearer $t'},
      );
      final body = jsonDecode(response.body) as Map<String, dynamic>;
      final result = CatLookupModel.fromJson(body);
      return ApiResponse(
        result.data?.searchReturn.map((x) => x).toList() ?? [],
      );
    } catch (e) {
      return ApiResponse.badRequest();
    }
  }

  Future<ApiResponse<PaginationResponseModel<TechCatSearchModel>>>
  manualCatsSearch({
    required String yardCode,
    String? filter,
    int? first,
    int? last,
    String? before,
    String? after,
  }) async {
    try {
      final response = await documentNodeQuerySearchTechematCats.execute(
        httpClient,
        Query$SearchTechematCats.fromJson,
        variables: Variables$Query$SearchTechematCats(
          first: first,
          last: last,
          before: before,
          after: after,
          input: Input$SearchTechematCatsInput(
            query: filter,
            yardCodes: [yardCode],
          ),
          order: [
            Input$ResultSortInput(
              techemetPriceCountSheetDetailId: Enum$SortEnumType.DESC,
            ),
          ],
        ),
      );
      if (response.hasErrors()) {
        throw Exception(response.errors);
      }
      final items = response.data?.searchTechematCats!.nodes!.map((x) {
        final cat = TechematManualCatsModel.fromJson(x.toJson());
        final techemetPriceCountSheetDetailId =
            cat.extendedProperties.containsKey(
              'TechemetPriceCountSheetDetailId',
            )
            ? int.tryParse(
                cat.extendedProperties['TechemetPriceCountSheetDetailId']
                    .toString(),
              )
            : null;
        return TechCatSearchModel(
          catalyticFill: cat.fill,
          converterValue: 0,
          engineSizeMatch: 0,
          fuelTypeMatch: 0,
          horsePowerMatch: 0,
          serialNumber: cat.serial,
          matchingProbability: 0,
          sealNo: cat.sealNo,
          isManual: true,
          id: cat.id,
          unitCost: cat.unitCost,
          unitCostPaid: cat.unitCostPaid,
          make: cat.make,
          model: cat.model,
          techemetPriceCountSheetDetailId: techemetPriceCountSheetDetailId,
        );
      }).toList();
      return ApiResponse(
        PaginationResponseModel<TechCatSearchModel>(
          data: items ?? [],
          facets: {},
          totalCount: response.data!.searchTechematCats!.totalCount,
          pageInfo: EmrQueryGraphQLPageInfo(
            hasPreviousPage:
                response.data!.searchTechematCats!.pageInfo.hasPreviousPage,
            hasNextPage:
                response.data!.searchTechematCats!.pageInfo.hasNextPage,
            startCursor:
                response.data!.searchTechematCats!.pageInfo.startCursor,
            endCursor: response.data!.searchTechematCats!.pageInfo.endCursor,
          ),
        ),
      );
    } catch (e) {
      return ApiResponse.badRequest();
    }
  }

  Future<ApiResponse<String>> getCATImage({
    required int sid,
    required String yardCode,
  }) async {
    try {
      final uri = Uri.parse(
        '${appConfig.catApiUrl}/api/CatImage'
        '?SampleId=$sid&YardCode=$yardCode',
      );

      final response = await httpClient.get(uri);

      if (response.statusCode != 200 || response.body.isEmpty) {
        return ApiResponse.badRequest();
      }

      final decoded = jsonDecode(response.body);

      if (decoded is! List || decoded.isEmpty) {
        return ApiResponse.badRequest();
      }

      final record = decoded.first;

      if (record is! Map<String, dynamic>) {
        return ApiResponse.badRequest();
      }

      final thumb = record['Image_Thumb'] as String?;
      final full = record['Image_Full'] as String?;

      final image = thumb ?? full;

      if (image == null || image.isEmpty) {
        return ApiResponse.badRequest();
      }

      return ApiResponse(image);
    } catch (_) {
      return ApiResponse.badRequest();
    }
  }
}
