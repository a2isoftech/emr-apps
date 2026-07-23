import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class DepotProvider extends EmrUtilSuggestionBaseApiProvider<Depot> {
  DepotProvider({
    required this.userInfoService,
    required this.contractController,
  });
  final UserInfoService userInfoService;
  final ContractController contractController;

  @override
  Future<List<Depot>> getSuggestions(
    String query, {
    String defaultTerritory = '',
  }) async {
    final userInfo = userInfoService.userInfo;
    final territoryCode = defaultTerritory.isNotEmpty
        ? defaultTerritory
        : userInfo.defaultTerritory;

    final depots = await contractController.getDepots(
      territoryCode: territoryCode,
      query: query,
    );

    /// see: https://dev.azure.com/emrtf01/EMR_Software/_workitems/edit/26561
    depots.removeWhere(
      (element) =>
          element.code.toUpperCase().contains('CEN') ||
          element.code.toUpperCase().contains('ITX') ||
          element.code.toUpperCase().contains('TRP'),
    );

    final pattern = RegExp(query, caseSensitive: false);
    final filteredDepots = depots
        .where(
          (depot) =>
              depot.name.contains(pattern) || depot.code.contains(pattern),
        )
        .toList();

    filteredDepots.sort((a, b) => a.code.compareTo(b.code));

    return filteredDepots;
  }
}
