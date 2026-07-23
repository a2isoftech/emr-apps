import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/graphql/queries/closestYard.graphql.dart';
import 'package:emr_one_inform/graphql/queries/territories.graphql.dart';
import 'package:emr_one_inform/graphql/queries/yards.graphql.dart';
import 'package:emr_one_inform/models/asset.dart';
import 'package:emr_one_inform/models/yard.dart';
import 'package:emr_one_inform/services/interfaces/iyard_service.dart';

class YardService implements IYardService {
  YardService({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  static const String loggerPrefix = '[YardService] - ';

  @override
  Future<List<String>> getAllTerritories() async {
    final result = await documentNodeQueryTerritories.execute(
      httpClient,
      Query$Territories.fromJson,
    );

    if (result.hasErrors()) {
      return [];
    }

    if (result.data?.territories.isEmpty ?? true) {
      return [];
    }

    return result.data!.territories;
  }

  @override
  Future<List<Yard>> getYardsByTerritoryCode({
    required String code,
  }) async {
    final result = await documentNodeQueryYards.execute(
      httpClient,
      Query$Yards.fromJson,
      variables: Variables$Query$Yards(code: code),
    );

    if (result.hasErrors()) {
      return [];
    }

    if (result.data?.territory.yards?.isEmpty ?? true) {
      return [];
    }

    return result.data!.territory.yards!
        .map((e) => Yard(yardCode: e.yardCode, name: e.name))
        .toList();
  }

  @override
  Future<Yard?> locateNearestYard({
    required double latitude,
    required double longitude,
  }) async {
    final result = await documentNodeQueryClosestYard.execute(
      httpClient,
      Query$ClosestYard.fromJson,
      variables: Variables$Query$ClosestYard(
        latitude: latitude,
        longitude: longitude,
      ),
    );

    if (result.data == null) return null;

    return Yard(
      yardCode: result.data!.closestYard?.yardCode,
      name: result.data!.closestYard?.name,
      assets: result.data!.closestYard?.assets
          .map(
            (e) => Asset(
              assetCode: e.assetCode,
              yardCode: e.yardCode,
              depotNo: e.depotNo,
            ),
          )
          .toList(),
    );
  }
}
