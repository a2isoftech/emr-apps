import 'package:emr_account_registration/models/yard.dart' as ar;
import 'package:emr_account_registration/services/data/data.dart';
import 'package:emr_core_api/models/api_response.dart';
import 'package:emr_core_api/services/core_api_service.dart';
import 'package:emr_one_core/data/emr_query_graphql_metadata.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:flutter/widgets.dart';

class StandingDataService extends StandingDataInterface {
  final CoreApiService coreApiService;

  StandingDataService({required this.coreApiService});

  List<ar.Yard>? _yards;

  @override
  Future<List<ar.Yard>> populateYard(
    String countryCode,
    String selectYardText,
  ) async {
    final territoryCode = _getTerritoryCode(countryCode);
    if (_yards == null) {
      _yards = [];
      _yards!.insert(0, ar.Yard('', selectYardText));
      var index = 1;
      ApiResponse<(List<Yard>, EmrQueryGraphQLMetadata<dynamic>)> response;
      String? after;
      try {
        do {
          response = await coreApiService.referenceData.searchYards(
            first: 50,
            territoryCodes: [territoryCode],
            after: after,
          );

          for (var y in response.data?.$1 ?? []) {
            _yards!.insert(index, ar.Yard(y.yardCode, y.name));
            index += 1;
          }

          after = response.data?.$2.pageInfo.endCursor;
        } while (response.data?.$2.pageInfo.hasNextPage ?? false);
      } catch (err) {
        _yards = populateDefaultYards(selectYardText);
        debugPrint(err.toString());
      }
    }

    return _yards!;
  }

  List<ar.Yard> populateDefaultYards(String selectYardText) {
    return [ar.Yard('', selectYardText), ar.Yard('YSAL', 'Salford')];
  }

  @override
  List<ar.Yard> get yards => _yards ?? [];

  String _getTerritoryCode(String locatedAtCountryCode) {
    switch (locatedAtCountryCode) {
      case 'UK':
      case 'GB':
        return 'A11';
      case 'US':
        return 'A42';
      case 'NL':
        return 'A21';
    }
    return 'A11';
  }
}
