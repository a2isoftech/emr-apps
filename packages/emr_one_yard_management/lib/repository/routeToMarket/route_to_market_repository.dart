import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/routeToMarket.graphql.dart';
import 'package:emr_one_yard_management/models/routeToMarket/paginated_result.dart';
import 'package:emr_one_yard_management/models/routeToMarket/route_to_market_grid_model.dart';
import 'package:emr_one_yard_management/models/routeToMarket/route_to_market_query_model.dart';
import 'package:http/http.dart';

class RouteToMarketRepository {
  static Future<PaginatedResult<List<RouteToMarketGridModel>>> getRouteToMarket(
    BaseClient httpClient,
    AppConfig config,
    RouteToMarketQueryModel queryModel,
    String? nextPageToken,
  ) async {
    final routeToMarketList = <RouteToMarketGridModel>[];
    final response = await documentNodeQueryrouteToMarket.execute(
      httpClient,
      Query$routeToMarket.fromJson,
      variables: Variables$Query$routeToMarket(
        searchModel: Input$RouteToMarketQueryModelInput(
          depotNo: queryModel.depotNo,
          grade: queryModel.grade,
          route: queryModel.route,
        ),
        first: 20,
        after: nextPageToken,
      ),
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );
    if (response.hasErrors()) {
      return Future.error(Exception(response.errors?.first.message));
    }

    if (!response.hasErrors() &&
        (response.data?.routeToMarket?.nodes?.isNotEmpty ?? false)) {
      routeToMarketList.addAll(
        response.data!.routeToMarket!.nodes!.map(
          (e) => RouteToMarketGridModel.fromJson(e!.toJson()),
        ),
      );
    }
    final npt = response.data?.routeToMarket?.pageInfo.endCursor;
    return PaginatedResult(npt, routeToMarketList);
  }
}
