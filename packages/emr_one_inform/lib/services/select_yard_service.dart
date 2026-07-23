import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/graphql/queries/territories.graphql.dart';
import 'package:emr_one_inform/graphql/queries/yards.graphql.dart';
import 'package:emr_one_inform/models/yard.dart';
import 'package:http/http.dart';

class SelectYardService {
  SelectYardService({
    required this.httpClient,
  });

  final Client httpClient;

  Future<List<String>> getAllTerritories() async {
    final result = await documentNodeQueryTerritories.execute(
      httpClient,
      Query$Territories.fromJson,
    );

    if (result.hasErrors() ||
        (result.data != null && result.data!.territories.isEmpty)) {
      return List.empty();
    }

    return result.data!.territories;
  }

  Future<List<Yard>> getYardsByTerritoryCode({
    required String code,
  }) async {
    final result = await documentNodeQueryYards.execute(
      httpClient,
      Query$Yards.fromJson,
      variables: Variables$Query$Yards(code: code),
    );

    if (result.hasErrors() ||
        (result.data != null &&
            result.data!.territory.yards != null &&
            result.data!.territory.yards!.isEmpty)) {
      return List.empty();
    }

    return result.data!.territory.yards!
        .map((e) => Yard(yardCode: e.yardCode, name: e.name))
        .toList();
  }
}
