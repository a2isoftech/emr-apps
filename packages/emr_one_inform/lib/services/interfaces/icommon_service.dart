import 'package:emr_one_inform/models/asset.dart';

abstract class ICommonService {
  Future<List<String>> getUsers(String searchText);
  Future<List<String>> getWorkOrderIds({
    required String searchText,
    bool? filterForUser,
    List<int>? stateIds,
  });
  Future<List<Asset>> getAssetByName(
    String searchText,
  );
}
